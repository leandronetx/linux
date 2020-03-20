#!/bin/sh
count=`grep -E -o '<\?php' $1 | wc -l`
if [ $count -gt 0 ]
then
if [ "$SCRIPT_FILENAME" != "/etc/sentora/panel/etc/apps/filemanager/index.php" ]
then
if [ "$SCRIPT_FILENAME" != "/etc/sentora/panel/etc/apps/phpmyadmin/import.php"  ]
then
if [ "$SCRIPT_FILENAME" != "/etc/sentora/panel/etc/apps/phpmyadmin_v4_6_6/import.php"  ]
then
   echo "SCRIPT_FILENAME  $SCRIPT_FILENAME SPT_DOCROOT $SPT_DOCROOT  HTTP_REFERER $HTTP_REFERER" >>  /var/log/cxscgi.log
    echo "REMOTE_ADDR $REMOTE_ADDR" >>  /var/log/cxscgi.log
        # /usr/sbin/csf -d $REMOTE_ADDR >>  /var/log/cxscgi.log 2>&1
    echo "Pattern found , So deleting the file $1" >> /var/log/cxscgi.log
    head $1 >> /var/log/cxscgi.log
    rm $1
        echo "0 Error: PHP files not allowed" ;
        exit;
fi
fi
fi
fi
echo "1 okay" ;
