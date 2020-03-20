#
# This is an example VCL file for Varnish.
#
# It does not do anything by default, delegating control to the
# builtin VCL. The builtin VCL is called when there is no explicit
# return statement.
#
# See the VCL chapters in the Users Guide at https://www.varnish-cache.org/docs/
# and http://varnish-cache.org/trac/wiki/VCLExamples for more examples.
# Marker to tell the VCL compiler that this VCL has been adapted to the
# new 4.0 format.
vcl 4.0;
# Default backend definition. Set this to point to your content server.
backend default {
    .host = "127.0.0.1";
    .port = "8080";
    .probe = {
         .url = "/";
         .interval = 5s;
         .timeout = 1 s;
         .window = 5;
         .threshold = 3;
    }
}
sub vcl_recv {
set req.http.X-Forwarded-For = client.ip;
set req.backend_hint= default;
if (req.method == "PURGE") {
}
if (req.method != "GET" && req.method != "HEAD" &&
req.method != "PUT" && req.method != "POST" &&
req.method != "TRACE" && req.method != "OPTIONS" &&
req.method != "DELETE") {
return (pipe);
} /* Non-RFC2616 or CONNECT which is weird. */
if (req.method != "GET" && req.method != "HEAD") {
return (pass);
}      /* We only deal with GET and HEAD by default */
if (req.http.Authorization || req.http.Cookie ~ "session" || req.http.Cookie ~ "Token") {
return (pass);
} /* Not cacheable by default */
if (req.http.If-None-Match) {
return (pass);
}
if (req.http.Cache-Control ~ "no-cache") {
ban(req.url);
}
if (req.http.Accept-Encoding) {
if (req.http.User-Agent ~ "MSIE 6") {
unset req.http.Accept-Encoding;
 } elsif (req.http.Accept-Encoding ~ "gzip") {
set req.http.Accept-Encoding = "gzip";
} elsif (req.http.Accept-Encoding ~ "deflate") {
set req.http.Accept-Encoding = "deflate";
} else {
unset req.http.Accept-Encoding;
}
}
return (hash);
}
sub vcl_pipe {
set req.http.connection = "close";
}
sub vcl_hit {
if (req.method == "PURGE") {
ban(req.url);
return (synth(200, "Purged"));
}
if (!obj.ttl > 0s) {
return (pass);
}
}
sub vcl_miss {
if (req.method == "PURGE")  {
return (synth(200, "Not in cache"));
}
}
sub vcl_backend_response {
set beresp.grace = 120s;
if (bereq.url ~ "\.(css|js|png|gif|jp(e?)g)|swf|ico") {
               unset beresp.http.cookie;
                set beresp.storage_hint = "static";
                set beresp.http.x-storage = "static";
} else {
               set beresp.storage_hint = "default";
               set beresp.http.x-storage = "default";
}
if (!beresp.ttl > 0s) {
set beresp.uncacheable = true;
return (deliver);
}
if (beresp.http.Set-Cookie) {
set beresp.uncacheable = true;
return (deliver);
}
if (beresp.http.Authorization && !beresp.http.Cache-Control ~ "public") {
set beresp.uncacheable = true;
return (deliver);
}
return (deliver);
}
sub vcl_deliver {
if (obj.hits > 0) {
set resp.http.X-Cache = "HIT";
} else {
set resp.http.X-Cache = "MISS";
}
set resp.http.x-len = req.http.x-len;
}