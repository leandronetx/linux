current_version=`postconf -d | grep "mail_version" | awk '{print $3}' | head -1`
echo $current_version
if [ $current_version != '3.2.0' ]; then
	echo "Yes. Need to upgrade the Postfix version"
	date=`date '+%d-%m-%Y-%H-%M-%S'`
	echo $date
	postfix_backup="postfix_bak_$date"
	echo $postfix_backup
	cp -R /etc/postfix /etc/$postfix_backup
	echo "Downloading Postfix latest File..."
	cd
	wget http://hostingraja.info/Version2.5/postfix-3.2.0.tar.gz
	tar xvf postfix-3.2.0.tar.gz
	cd postfix-3.2.0
	echo "Instatllation start..."
	yum -y install libdb-devel db4-devel cyrus-sasl cyrus-sasl-devel openssl openssl-devel pcre pcre-devel openldap openldap-devel mysql-devel
	make clean
	make tidy
	echo "Installing Dependencies..."
	make makefiles CCARGS='-fPIC -DUSE_TLS -DUSE_SSL -DUSE_SASL_AUTH -DUSE_CYRUS_SASL -DPREFIX=\\"/usr\\" -DHAS_LDAP -DLDAP_DEPRECATED=1 -DHAS_PCRE -I/usr/include/openssl -DHAS_MYSQL -I/usr/include/mysql -I/usr/include/sasl -I/usr/include' AUXLIBS='-L/usr/lib64 -L/usr/lib64/openssl -lssl -lcrypto -L/usr/lib64/mysql -lmysqlclient -L/usr/lib64/sasl2 -lsasl2 -lpcre -lz -lm -lldap -llber -Wl,-rpath,/usr/lib64/openssl -pie -Wl,-z,relro' OPT='-O' DEBUG='-g'
	make
	echo "Upgradation is on progress..."
	make upgrade
	echo "Upgradation successfully completed!!!"
	echo "Restarting Postfix..."
	service postfix restart
else
	echo "Already in latest version"
fi

