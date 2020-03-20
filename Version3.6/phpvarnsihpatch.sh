VER=`rpm -qa \*-release | grep -Ei "oracle|redhat|centos" | cut -d"-" -f3`
if  [[ "$VER" = "7" ]]; then
wget http://hostingraja.info/remi-release-7.rpm && rpm -Uvh remi-release-7.rpm
wget http://hostingraja.info/epel-release-latest-7.noarch.rpm && rpm -Uvh epel-release-latest-7.noarch.rpm
cd  /etc/yum.repos.d/
rm -fr remi.repo
wget http://hostingraja.info/centos7/remi.repo
else
wget http://hostingraja.info/epel-release-latest-6.noarch.rpm && rpm -Uvh epel-release-latest-6.noarch.rpm
wget http://hostingraja.info/remi-release-6.rpm && rpm -Uvh remi-release-6*.rpm
cd  /etc/yum.repos.d/
rm -fr remi.repo
wget http://hostingraja.info/remi.repo
fi
# ######################## PHP Upgrade and suhsosin installation End   ######################## 
yum -y upgrade php*
mv /etc/php.d/suhosin.ini /root
yum -y install php-suhosin
# ########################### Varnish Installation  Start  ###########################
yum -y install curl
curl -s http://hostingraja.info/varnish41/script.rpm.sh | sudo bash
yum install -y varnish
yum -y install dos2unix

