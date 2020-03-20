if mysqldump --all-databases > /root/alldb_before_ugrade.sql
then 
echo "mysql dump start successfully"
cp /etc/postfix/main.cf /root/postfix_main_for_bk.cf
cp /etc/postfix/master.cf /root/postfix_master_for_bk.cf 
service mysqld stop
yum -y remove mysql-community-server
yum -y remove mysql-community-common
yum -y remove mysql-community-release
yum -y localinstall https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
yum -y install mysql-community-server
yum -y install mysql-community-common
yum -y install postfix postfix-perl-scripts  proftpd-mysql redhat-lsb-core perl-DBD-MySQL dovecot-mysql
echo "[mysqld]" > /etc/my.cnf
echo "datadir=/var/lib/mysql" >> /etc/my.cnf
echo "socket=/var/lib/mysql/mysql.sock" >> /etc/my.cnf
echo "max_allowed_packet=512M" >> /etc/my.cnf
echo "# Disabling symbolic-links is recommended to prevent assorted security risks" >> /etc/my.cnf
echo "symbolic-links=0" >> /etc/my.cnf
echo '#sql_mode="STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"'  >> /etc/my.cnf
echo 'sql_mode="NO_ENGINE_SUBSTITUTION"'  >> /etc/my.cnf
echo "[mysqld_safe]" >> /etc/my.cnf
echo "log-error=/var/log/mysqld.log" >> /etc/my.cnf
echo "pid-file=/var/run/mysqld/mysqld.pid" >> /etc/my.cnf
service mysqld restart
mysql_upgrade
mysql_upgrade --force
#mysql_upgrade --force
mysql_upgrade --upgrade-system-tables --force
mysql < /root/alldb_before_ugrade.sql
mv /etc/postfix/main.cf  /etc/postfix/main.cf_After_Upgrade
mv /etc/postfix/master.cf /etc/postfix/master.cf_After_Upgrade
cp /root/postfix_main_for_bk.cf  /etc/postfix/main.cf 
cp /root/postfix_master_for_bk.cf /etc/postfix/master.cf
rm -frv /usr/sbin/sendmail
ln /usr/sbin/sendmail.postfix /usr/sbin/sendmail
mysql_upgrade
mysql_upgrade --force
#mysql_upgrade --force
mysql_upgrade --upgrade-system-tables --force
yum -y install lighttpd lighttpd-fastcgi
cd /etc/
wget  -O lighttpd.zip "http://hostingraja.info/Version1.8/lighttpd.zip"
unzip -o lighttpd.zip
rm -f /etc/lighttpd.zip
service mysqld restart
service lighttpd restart
service proftpd restart
service postfix restart
service dovecot restart
service spamassassin restart
service lighttpd restart
echo "mysql dump Ended successfully"
else
echo "try to taken the backup before update mysql"
fi
