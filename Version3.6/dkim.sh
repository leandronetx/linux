#!/bin/sh

domain="$1"

if [ -n "$domain" ]; then
echo "Domain argument is not empty"
WHEREIS_SERVICE=`whereis service | awk '{print $2}'`
mkdir /etc/opendkim/keys/$domain
/usr/sbin/opendkim-genkey -D /etc/opendkim/keys/$domain/ -d $domain -s default
chown -R opendkim: /etc/opendkim/keys/$domain
mv /etc/opendkim/keys/$domain/default.private /etc/opendkim/keys/$domain/default
echo "default._domainkey.$domain $domain:default:/etc/opendkim/keys/$domain/default" >> /etc/opendkim/KeyTable
echo "*@$domain default._domainkey.$domain" >> /etc/opendkim/SigningTable
chmod 0775 /etc/opendkim/keys/
chmod 0755 /etc/opendkim/keys/$domain
chmod 0755 /etc/opendkim/keys/$domain/default.txt
$WHEREIS_SERVICE opendkim restart
cat /etc/opendkim/keys/$domain/default.txt
echo "\n"
echo "Please add Above Dkim record to backend in DNS Management"
else
echo "Domain Argument is Empty"
fi
# WHEREIS_SERVICE=`whereis service | awk '{print $2}'`
$WHEREIS_SERVICE postfix restart
$WHEREIS_SERVICE opendkim restart
$WHEREIS_SERVICE named restart
