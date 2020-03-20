echo '' > /var/log/modsec_audit.log
echo '' > /var/mail/root
echo '' > /var/spool/mail/root
SH_PATH=`whereis postsuper | awk '{print $2}'`
`$SH_PATH -d ALL deferred`
