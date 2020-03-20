yes | cp  /etc/lighttpd/lighttpd.conf /root/lighttpd.conf_bak_170518
yes | cp  /etc/php.ini /etc/sentora/panel/etc/apps/filemanager/php.ini
sed -i -e '/memory_limit/c\memory_limit = 1024M' /etc/sentora/panel/etc/apps/filemanager/php.ini
sed -i -e '/upload_max_filesize/c\upload_max_filesize = 2048M' /etc/sentora/panel/etc/apps/filemanager/php.ini
sed -i -e '/max_execution_time/c\max_execution_time = 1200' /etc/sentora/panel/etc/apps/filemanager/php.ini
sed -i -e '/max_input_time/c\max_input_time = 1200' /etc/sentora/panel/etc/apps/filemanager/php.ini
sed -i -e '/\"bin-path\" => \"\/usr\/bin\/php-cgi/c\\"bin-path\" => \"\/usr\/bin\/php-cgi -c \/etc\/sentora\/panel\/etc\/apps\/filemanager\/php.ini",' /etc/lighttpd/lighttpd.conf
service_service=`whereis service | awk '{print $2}'`
echo $service_service
$service_service lighttpd restart