#!/bin/sh
yum -y install epel-release
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum -y install  yum-utils mod_fcgid gcc libxml2-devel libXpm-devel gmp-devel libicu-devel t1lib-devel aspell-devel openssl-devel bzip2-devel libcurl-devel libjpeg-devel libvpx-devel libpng-devel freetype-devel readline-devel libtidy-devel libxslt-devel libmcrypt-devel pcre-devel curl-devel mysql-devel ncurses-devel gettext-devel net-snmp-devel libevent-devel libtool-ltdl-devel libc-client-devel postgresql-devel bison gcc make  git dos2unix;
yum -y install php70 php70-php-bcmath php70-php-devel php-fedora-autoloader php70-php-fpm php70-php-gd php70-php-imap php70-php-intl php70-php-mbstring php70-php-mcrypt php70-php-mysqlnd php70-php-curl php70-php-pdo php70-php-pear php70-php-xsl php70-php-pecl-jsonc php70-php-pecl-jsonc-devel php70-php-pecl-zip php70-php-process php70-php-soap php70-php-suhosin php70-php-xml php70-php-xmlrpc php70-php-zip php71 php71-php-bcmath php71-php-devel php-fedora-autoloader php71-php-fpm php71-php-gd php71-php-imap php71-php-intl php71-php-mbstring php71-php-mcrypt php71-php-mysqlnd php71-php-curl php71-php-pdo php71-php-pear php71-php-xsl php71-php-pecl-jsonc php71-php-pecl-jsonc-devel php71-php-pecl-zip php71-php-process php71-php-soap php71-php-suhosin php71-php-xml php71-php-xmlrpc php71-php-zip php72 php72-php-bcmath php72-php-devel php-fedora-autoloader php72-php-fpm php72-php-gd php72-php-imap php72-php-intl php72-php-mbstring php72-php-mcrypt php72-php-mysqlnd php72-php-curl php72-php-pdo php72-php-pear php72-php-xsl php72-php-pecl-jsonc php72-php-pecl-jsonc-devel php72-php-pecl-zip php72-php-process php72-php-soap php72-php-suhosin php72-php-xml php72-php-xmlrpc php72-php-zip php73 php73-php-bcmath php73-php-devel php-fedora-autoloader php73-php-fpm php73-php-gd php73-php-imap php73-php-intl php73-php-mbstring php73-php-mcrypt php73-php-mysqlnd php73-php-curl php73-php-pdo php73-php-pear php73-php-xsl php73-php-pecl-jsonc php73-php-pecl-jsonc-devel php73-php-pecl-zip php73-php-process php73-php-soap php73-php-suhosin php73-php-xml php73-php-xmlrpc php73-php-zip php56 php56-php-bcmath php56-php-devel php-fedora-autoloader php56-php-fpm php56-php-gd php56-php-imap php56-php-intl php56-php-mbstring php56-php-mcrypt php56-php-mysqlnd php56-php-curl php56-php-pdo php56-php-pear php56-php-xsl php56-php-pecl-jsonc php56-php-pecl-jsonc-devel php56-php-pecl-zip php56-php-process php56-php-soap php56-php-suhosin php56-php-xml php56-php-xmlrpc php56-php-zip php56-php-mysql php55 php55-php-bcmath php55-php-devel php-fedora-autoloader php55-php-fpm php55-php-gd php55-php-imap php55-php-intl php55-php-mbstring php55-php-mcrypt php55-php-mysqlnd php55-php-curl php55-php-pdo php55-php-pear php55-php-xsl php55-php-pecl-jsonc php55-php-pecl-jsonc-devel php55-php-pecl-zip php55-php-process php55-php-soap php54  php55-php-suhosin php55-php-xml php55-php-xmlrpc php55-php-zip php55-php-mysql php54 php54-php-bcmath php54-php-devel php-fedora-autoloader php54-php-fpm php54-php-gd php54-php-imap php54-php-intl php54-php-mbstring php54-php-mcrypt php54-php-mysqlnd php54-php-curl php54-php-pdo php54-php-pear php54-php-xsl php54-php-pecl-jsonc php54-php-pecl-jsonc-devel php54-php-pecl-zip php54-php-process php54-php-soap php54-php-suhosin php54-php-xml php54-php-xmlrpc php54-php-zip php54-php-mysql php54-php-ioncube-loader php55-php-ioncube-loader php56-php-ioncube-loader php70-php-ioncube-loader php71-php-ioncube-loader php72-php-ioncube-loader php73-php-ioncube-loader php-pecl-imagick php-pecl-imagick-devel php54-php-pecl-imagick php54-php-pecl-imagick-devel php55-php-pecl-imagick php55-php-pecl-imagick-devel php56-php-pecl-imagick php56-php-pecl-imagick-devel php70-php-pecl-imagick php70-php-pecl-imagick-devel php71-php-pecl-imagick php71-php-pecl-imagick-devel php72-php-pecl-imagick php72-php-pecl-imagick-devel php73-php-pecl-imagick php73-php-pecl-imagick-devel php74 php74-php-bcmath php74-php-devel php-fedora-autoloader php74-php-fpm php74-php-gd php74-php-imap php74-php-intl php74-php-mbstring php74-php-mcrypt php74-php-mysqlnd php74-php-curl php74-php-pdo php74-php-pear php74-php-xsl php74-php-pecl-jsonc php74-php-pecl-jsonc-devel php74-php-pecl-zip php74-php-process php74-php-soap php74-php-suhosin php74-php-xml php74-php-xmlrpc php74-php-zip php74-php-mysql php74-php-ioncube-loader php74-php-pecl-imagick php74-php-pecl-imagick-devel
mkdir -p /var/www/php-fcgi-scripts/php54;
touch /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
chmod 755 /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
if [ -f "/etc/opt/remi/php54/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /etc/opt/remi/php54/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /etc/opt/remi/php54/php.ini
echo "suhosin.session.encrypt = Off" >> /etc/opt/remi/php54/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "export PHPRC=/etc/opt/remi/php54/php.ini" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "exec /opt/remi/php54/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /etc/opt/remi/php54/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /etc/opt/remi/php54/php.ini;
fi
if [ -f "/opt/remi/php54/root/etc/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /opt/remi/php54/root/etc/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /opt/remi/php54/root/etc/php.ini
echo "suhosin.session.encrypt = Off" >> /opt/remi/php54/root/etc/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "export PHPRC=/opt/remi/php54/root/etc/php.ini" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
echo "exec /opt/remi/php54/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php54/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /opt/remi/php54/root/etc/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /opt/remi/php54/root/etc/php.ini;
fi
mkdir -p /var/www/php-fcgi-scripts/php55;
touch /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
chmod 755 /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
if [ -f "/etc/opt/remi/php55/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /etc/opt/remi/php55/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /etc/opt/remi/php55/php.ini
echo "suhosin.session.encrypt = Off" >> /etc/opt/remi/php55/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "PHPRC=/etc/opt/remi/php55/php.ini" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "export PHPRC=/opt/remi/php55/root/etc/php.ini" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "exec /opt/remi/php55/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /etc/opt/remi/php55/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /etc/opt/remi/php55/php.ini;
fi
if [ -f "/opt/remi/php55/root/etc/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /opt/remi/php55/root/etc/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /opt/remi/php55/root/etc/php.ini
echo "suhosin.session.encrypt = Off" >> /opt/remi/php55/root/etc/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "export PHPRC=/opt/remi/php55/root/etc/php.ini" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
echo "exec /opt/remi/php55/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php55/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /opt/remi/php55/root/etc/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /opt/remi/php55/root/etc/php.ini;
fi
mkdir -p /var/www/php-fcgi-scripts/php56;
touch /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
chmod 755 /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
if [ -f "/etc/opt/remi/php56/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /etc/opt/remi/php56/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /etc/opt/remi/php56/php.ini
echo "suhosin.session.encrypt = Off" >> /etc/opt/remi/php56/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "export PHPRC=/etc/opt/remi/php56/php.ini" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "exec /opt/remi/php56/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /etc/opt/remi/php56/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /etc/opt/remi/php56/php.ini;
fi
if [ -f "/opt/remi/php56/root/etc/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /opt/remi/php56/root/etc/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /opt/remi/php56/root/etc/php.ini
echo "suhosin.session.encrypt = Off" >> /opt/remi/php56/root/etc/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "export PHPRC=/opt/remi/php56/root/etc/php.ini" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
echo "exec /opt/remi/php56/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php56/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /opt/remi/php56/root/etc/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /opt/remi/php56/root/etc/php.ini;
fi
mkdir -p /var/www/php-fcgi-scripts/php70;
touch /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
chmod 755 /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
if [ -f "/etc/opt/remi/php70/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /etc/opt/remi/php70/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /etc/opt/remi/php70/php.ini
echo "suhosin.session.encrypt = Off" >> /etc/opt/remi/php70/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "PHPRC=/etc/opt/remi/php70/php.ini" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "export PHPRC=/etc/opt/remi/php70/php.ini" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "exec /opt/remi/php70/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /etc/opt/remi/php70/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /etc/opt/remi/php70/php.ini;
fi
if [ -f "/opt/remi/php70/root/etc/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /opt/remi/php70/root/etc/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /opt/remi/php70/root/etc/php.ini
echo "suhosin.session.encrypt = Off" >> /opt/remi/php70/root/etc/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "export PHPRC=/opt/remi/php70/root/etc/php.ini" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
echo "exec /opt/remi/php70/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php70/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /opt/remi/php70/root/etc/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /opt/remi/php70/root/etc/php.ini;
fi
mkdir -p /var/www/php-fcgi-scripts/php71;
touch /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
chmod 755 /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
if [ -f "/etc/opt/remi/php71/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /etc/opt/remi/php71/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /etc/opt/remi/php71/php.ini
echo "suhosin.session.encrypt = Off" >> /etc/opt/remi/php71/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "PHPRC=/etc/opt/remi/php71/php.ini" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "export PHPRC=/etc/opt/remi/php71/php.ini" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "exec /opt/remi/php71/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /etc/opt/remi/php71/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /etc/opt/remi/php71/php.ini;
fi
if [ -f "/opt/remi/php71/root/etc/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /opt/remi/php71/root/etc/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /opt/remi/php71/root/etc/php.ini
echo "suhosin.session.encrypt = Off" >> /opt/remi/php71/root/etc/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "export PHPRC=/opt/remi/php71/root/etc/php.ini" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
echo "exec /opt/remi/php71/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php71/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /opt/remi/php71/root/etc/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /opt/remi/php71/root/etc/php.ini;
fi
mkdir -p /var/www/php-fcgi-scripts/php72;
touch /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
chmod 755 /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
if [ -f "/etc/opt/remi/php72/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /etc/opt/remi/php72/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /etc/opt/remi/php72/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /etc/opt/remi/php72/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /etc/opt/remi/php72/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /etc/opt/remi/php72/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /etc/opt/remi/php72/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /etc/opt/remi/php72/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /etc/opt/remi/php72/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /etc/opt/remi/php72/php.ini
echo "suhosin.session.encrypt = Off" >> /etc/opt/remi/php72/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "PHPRC=/etc/opt/remi/php72/php.ini" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "export PHPRC=/etc/opt/remi/php72/php.ini" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "exec /opt/remi/php72/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /etc/opt/remi/php72/php.ini; 
sed -i "s/^\(enable_dl\).*/\1 = Off /"  /etc/opt/remi/php72/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /etc/opt/remi/php72/php.ini;
fi
if [ -f "/opt/remi/php72/root/etc/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /opt/remi/php72/root/etc/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /opt/remi/php72/root/etc/php.ini
echo "suhosin.session.encrypt = Off" >> /opt/remi/php72/root/etc/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "export PHPRC=/opt/remi/php72/root/etc/php.ini" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
echo "exec /opt/remi/php72/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php72/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /opt/remi/php72/root/etc/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /opt/remi/php72/root/etc/php.ini;
fi
mkdir -p /var/www/php-fcgi-scripts/php73;
touch /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
chmod 755 /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
if [ -f "/etc/opt/remi/php73/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /etc/opt/remi/php73/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /etc/opt/remi/php73/php.ini
echo "suhosin.session.encrypt = Off" >> /etc/opt/remi/php73/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "PHPRC=/etc/opt/remi/php73/php.ini" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "export PHPRC=/etc/opt/remi/php73/php.ini" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "exec /opt/remi/php73/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /etc/opt/remi/php73/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /etc/opt/remi/php73/php.ini;
fi
if [ -f "/opt/remi/php73/root/etc/php.ini" ] ; then
sed -i "s/^\(short_open_tag\).*/\1 = Off /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" /opt/remi/php73/root/etc/php.ini;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" /opt/remi/php73/root/etc/php.ini
echo "suhosin.session.encrypt = Off" >> /opt/remi/php73/root/etc/php.ini
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "export PHPRC=/opt/remi/php73/root/etc/php.ini" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
echo "exec /opt/remi/php73/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php73/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(enable_dl\).*/\1 = Off /" /opt/remi/php73/root/etc/php.ini;
sed -i "s/^\(register_globals\).*/\1 = Off /" /opt/remi/php73/root/etc/php.ini;
fi
mkdir -p /var/www/php-fcgi-scripts/php74;
touch /var/www/php-fcgi-scripts/php74/php-fcgi-starter;
chmod 755 /var/www/php-fcgi-scripts/php74/php-fcgi-starter;
PHP74_CONFIG_PATH=`/opt/remi/php74/root/bin/php -i | grep "Loaded Configuration File" | awk '{print $5}'`
sed -i "s/^\(short_open_tag\).*/\1 = Off /" $PHP74_CONFIG_PATH;
sed -i "s/^\(auto_prepend_file\).*/\1 = \"\/var\/log\/spamavoid\/php_execution_block.php\" /" $PHP74_CONFIG_PATH;
sed -i "s/^\(upload_max_filesize\).*/\1 = 512M /" $PHP74_CONFIG_PATH;
sed -i "s/^\(post_max_size\).*/\1 = 512M /" $PHP74_CONFIG_PATH;
sed -i "s/^\(memory_limit\).*/\1 = 128M /" $PHP74_CONFIG_PATH;
sed -i "s/^\(max_execution_time\).*/\1 = 300 /" $PHP74_CONFIG_PATH;
sed -i "s/^\(max_input_time\).*/\1 = 600 /" $PHP74_CONFIG_PATH;
sed -i "s/^\(sendmail_path\).*/\1 = \/usr\/local\/bin\/phpsendmail.php /" $PHP74_CONFIG_PATH;
sed -i "s|;date.timezone =|date.timezone = Asia\/Kolkata |" $PHP74_CONFIG_PATH
echo "suhosin.session.encrypt = Off" >> $PHP74_CONFIG_PATH
echo '#!/bin/sh' > /var/www/php-fcgi-scripts/php74/php-fcgi-starter;
echo "PHPRC=/etc/" >> /var/www/php-fcgi-scripts/php74/php-fcgi-starter;
echo "export PHPRC=$PHP74_CONFIG_PATH" >> /var/www/php-fcgi-scripts/php74/php-fcgi-starter;
echo "export PHP_FCGI_MAX_REQUESTS=50000" >> /var/www/php-fcgi-scripts/php74/php-fcgi-starter;
echo "export PHP_FCGI_CHILDREN=1" >> /var/www/php-fcgi-scripts/php74/php-fcgi-starter;
echo "exec /opt/remi/php74/root/bin/php-cgi" >> /var/www/php-fcgi-scripts/php74/php-fcgi-starter;
sed -i "s/^\(expose_php\).*/\1 = Off /" $PHP74_CONFIG_PATH;
sed -i "s/^\(enable_dl\).*/\1 = Off /" $PHP74_CONFIG_PATH;
sed -i "s/^\(register_globals\).*/\1 = Off /" $PHP74_CONFIG_PATH;
/opt/remi/php70/root/bin/php  -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
/opt/remi/php70/root/bin/php  composer-setup.php
/opt/remi/php70/root/bin/php  -r "unlink('composer-setup.php');"
mv composer.phar /usr/bin/composer
yes | cp  /usr/bin/composer /usr/local/bin/composer
ADDIDIONAL_INI=`/opt/remi/php54/root/bin/php -i | grep "Scan this dir for additional .ini files" | awk '{print $NF}'`
LOADED_CONF=`/opt/remi/php54/root/bin/php -i | grep "Loaded Configuration File" | awk '{print $NF}'`
yes | cp $LOADED_CONF $ADDIDIONAL_INI
sed -i '/^upload_max_filesize/d' $ADDIDIONAL_INI/php.ini
sed -i '/^post_max_size/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_execution_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^memory_limit/d' $ADDIDIONAL_INI/php.ini
sed -i '/^file_uploads/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_vars/d' $ADDIDIONAL_INI/php.ini
sed -i '/^short_open_tag/d' $ADDIDIONAL_INI/php.ini
sed -i '/^display_errors/d' $ADDIDIONAL_INI/php.ini
sed -i '/^expose_php/d' $ADDIDIONAL_INI/php.ini
sed -i '/^enable_dl/d' $ADDIDIONAL_INI/php.ini
sed -i '/^open_basedir/d' $ADDIDIONAL_INI/php.ini
sed -i '/^auto_prepend_file/d' $ADDIDIONAL_INI/php.ini
sed -i '/^sendmail_path/d' $ADDIDIONAL_INI/php.ini
ADDIDIONAL_INI=`/opt/remi/php55/root/bin/php -i | grep "Scan this dir for additional .ini files" | awk '{print $NF}'`
LOADED_CONF=`/opt/remi/php55/root/bin/php -i | grep "Loaded Configuration File" | awk '{print $NF}'`
yes | cp $LOADED_CONF $ADDIDIONAL_INI
sed -i '/^upload_max_filesize/d' $ADDIDIONAL_INI/php.ini
sed -i '/^post_max_size/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_execution_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^memory_limit/d' $ADDIDIONAL_INI/php.ini
sed -i '/^file_uploads/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_vars/d' $ADDIDIONAL_INI/php.ini
sed -i '/^short_open_tag/d' $ADDIDIONAL_INI/php.ini
sed -i '/^display_errors/d' $ADDIDIONAL_INI/php.ini
sed -i '/^expose_php/d' $ADDIDIONAL_INI/php.ini
sed -i '/^enable_dl/d' $ADDIDIONAL_INI/php.ini
sed -i '/^open_basedir/d' $ADDIDIONAL_INI/php.ini
sed -i '/^auto_prepend_file/d' $ADDIDIONAL_INI/php.ini
sed -i '/^sendmail_path/d' $ADDIDIONAL_INI/php.ini
ADDIDIONAL_INI=`/opt/remi/php56/root/bin/php -i | grep "Scan this dir for additional .ini files" | awk '{print $NF}'`
LOADED_CONF=`/opt/remi/php56/root/bin/php -i | grep "Loaded Configuration File" | awk '{print $NF}'`
yes | cp $LOADED_CONF $ADDIDIONAL_INI
sed -i '/^upload_max_filesize/d' $ADDIDIONAL_INI/php.ini
sed -i '/^post_max_size/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_execution_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^memory_limit/d' $ADDIDIONAL_INI/php.ini
sed -i '/^file_uploads/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_vars/d' $ADDIDIONAL_INI/php.ini
sed -i '/^short_open_tag/d' $ADDIDIONAL_INI/php.ini
sed -i '/^display_errors/d' $ADDIDIONAL_INI/php.ini
sed -i '/^expose_php/d' $ADDIDIONAL_INI/php.ini
sed -i '/^enable_dl/d' $ADDIDIONAL_INI/php.ini
sed -i '/^open_basedir/d' $ADDIDIONAL_INI/php.ini
sed -i '/^auto_prepend_file/d' $ADDIDIONAL_INI/php.ini
sed -i '/^sendmail_path/d' $ADDIDIONAL_INI/php.ini
ADDIDIONAL_INI=`/opt/remi/php70/root/bin/php -i | grep "Scan this dir for additional .ini files" | awk '{print $NF}'`
LOADED_CONF=`/opt/remi/php70/root/bin/php -i | grep "Loaded Configuration File" | awk '{print $NF}'`
yes | cp $LOADED_CONF $ADDIDIONAL_INI
sed -i '/^upload_max_filesize/d' $ADDIDIONAL_INI/php.ini
sed -i '/^post_max_size/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_execution_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^memory_limit/d' $ADDIDIONAL_INI/php.ini
sed -i '/^file_uploads/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_vars/d' $ADDIDIONAL_INI/php.ini
sed -i '/^short_open_tag/d' $ADDIDIONAL_INI/php.ini
sed -i '/^display_errors/d' $ADDIDIONAL_INI/php.ini
sed -i '/^expose_php/d' $ADDIDIONAL_INI/php.ini
sed -i '/^enable_dl/d' $ADDIDIONAL_INI/php.ini
sed -i '/^open_basedir/d' $ADDIDIONAL_INI/php.ini
sed -i '/^auto_prepend_file/d' $ADDIDIONAL_INI/php.ini
sed -i '/^sendmail_path/d' $ADDIDIONAL_INI/php.ini
ADDIDIONAL_INI=`/opt/remi/php71/root/bin/php -i | grep "Scan this dir for additional .ini files" | awk '{print $NF}'`
LOADED_CONF=`/opt/remi/php71/root/bin/php -i | grep "Loaded Configuration File" | awk '{print $NF}'`
yes | cp $LOADED_CONF $ADDIDIONAL_INI
sed -i '/^upload_max_filesize/d' $ADDIDIONAL_INI/php.ini
sed -i '/^post_max_size/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_execution_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^memory_limit/d' $ADDIDIONAL_INI/php.ini
sed -i '/^file_uploads/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_vars/d' $ADDIDIONAL_INI/php.ini
sed -i '/^short_open_tag/d' $ADDIDIONAL_INI/php.ini
sed -i '/^display_errors/d' $ADDIDIONAL_INI/php.ini
sed -i '/^expose_php/d' $ADDIDIONAL_INI/php.ini
sed -i '/^enable_dl/d' $ADDIDIONAL_INI/php.ini
sed -i '/^open_basedir/d' $ADDIDIONAL_INI/php.ini
sed -i '/^auto_prepend_file/d' $ADDIDIONAL_INI/php.ini
sed -i '/^sendmail_path/d' $ADDIDIONAL_INI/php.ini
ADDIDIONAL_INI=`/opt/remi/php72/root/bin/php -i | grep "Scan this dir for additional .ini files" | awk '{print $NF}'`
LOADED_CONF=`/opt/remi/php72/root/bin/php -i | grep "Loaded Configuration File" | awk '{print $NF}'`
yes | cp $LOADED_CONF $ADDIDIONAL_INI
sed -i '/^upload_max_filesize/d' $ADDIDIONAL_INI/php.ini
sed -i '/^post_max_size/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_execution_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^memory_limit/d' $ADDIDIONAL_INI/php.ini
sed -i '/^file_uploads/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_vars/d' $ADDIDIONAL_INI/php.ini
sed -i '/^short_open_tag/d' $ADDIDIONAL_INI/php.ini
sed -i '/^display_errors/d' $ADDIDIONAL_INI/php.ini
sed -i '/^expose_php/d' $ADDIDIONAL_INI/php.ini
sed -i '/^enable_dl/d' $ADDIDIONAL_INI/php.ini
sed -i '/^open_basedir/d' $ADDIDIONAL_INI/php.ini
sed -i '/^auto_prepend_file/d' $ADDIDIONAL_INI/php.ini
sed -i '/^sendmail_path/d' $ADDIDIONAL_INI/php.ini
ADDIDIONAL_INI=`/opt/remi/php73/root/bin/php -i | grep "Scan this dir for additional .ini files" | awk '{print $NF}'`
LOADED_CONF=`/opt/remi/php73/root/bin/php -i | grep "Loaded Configuration File" | awk '{print $NF}'`
yes | cp $LOADED_CONF $ADDIDIONAL_INI
sed -i '/^upload_max_filesize/d' $ADDIDIONAL_INI/php.ini
sed -i '/^post_max_size/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_execution_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_time/d' $ADDIDIONAL_INI/php.ini
sed -i '/^memory_limit/d' $ADDIDIONAL_INI/php.ini
sed -i '/^file_uploads/d' $ADDIDIONAL_INI/php.ini
sed -i '/^max_input_vars/d' $ADDIDIONAL_INI/php.ini
sed -i '/^short_open_tag/d' $ADDIDIONAL_INI/php.ini
sed -i '/^display_errors/d' $ADDIDIONAL_INI/php.ini
sed -i '/^expose_php/d' $ADDIDIONAL_INI/php.ini
sed -i '/^enable_dl/d' $ADDIDIONAL_INI/php.ini
sed -i '/^open_basedir/d' $ADDIDIONAL_INI/php.ini
sed -i '/^auto_prepend_file/d' $ADDIDIONAL_INI/php.ini
sed -i '/^sendmail_path/d' $ADDIDIONAL_INI/php.ini
