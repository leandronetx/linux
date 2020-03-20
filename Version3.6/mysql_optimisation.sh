#!/bin/bash
# Done By Vicky
#   -   It will do if only RAM size is more than 6 GB.
#   -   Create tmp directory for mysql and partition for that.
#   -   Then insert tmp directory path into my.conf file.


RAM_SIZE=`free -h | grep Mem: | sed 's/  */ /g' | cut -d ' ' -f2 | cut -d 'G' -f1`
echo "Server RAM size : $RAM_SIZE"
if [ ${RAM_SIZE%%.*} -lt 6 ]
then
    echo "RAM is less than 6GB, So stop the mysql temp process. User RAM size is $RAM_SIZE"
    exit $?
fi

MYSQL_TMP_DIR=/var/mysqltmp
FSTAB_FILE_PATH=/etc/fstab
MYCONF_PATH=/etc/my.cnf

#Make Temp Directory
mkdir -p $MYSQL_TMP_DIR

#Give mysql permission to Temp Directory
chown mysql:mysql $MYSQL_TMP_DIR

#Get mysql user id and group id
USID=`id mysql | cut -d ' ' -f1 | cut -d '=' -f2 | cut -d '(' -f1`
GID=`id mysql | cut -d ' ' -f2 | cut -d '=' -f2 | cut -d '(' -f1`

#Generate TMPFS Disk partition for temp folder
TMPFS="tmpfs $MYSQL_TMP_DIR tmpfs rw,gid=$GID,uid=$USID,size=4096M,nr_inodes=10k,mode=0700 0 0"

#Allocate Disk space for temp directory
CHECK_TEMP_PARTITION_ALLOCATED=`grep -n '/var/mysqltmp' $FSTAB_FILE_PATH | cut -f1 -d:`
if [ -z $CHECK_TEMP_PARTITION_ALLOCATED ]
then
    echo $TMPFS >> $FSTAB_FILE_PATH
else
    sed -i "${CHECK_TEMP_PARTITION_ALLOCATED}s/.*/$TMPFS/" "$FSTAB_FILE_PATH"
fi

mount -a

CHECK_TMP_DIR_INCLUDED_IN_CONF=`grep -n '/var/mysqltmp' $MYCONF_PATH | cut -f1 -d:`
if [ -z $CHECK_TMP_DIR_INCLUDED_IN_CONF ]
then
    LINE_NUMBER=`grep -ni 'mysqld_safe' /etc/my.cnf | cut -f1 -d:`
    if [ ! -z $LINE_NUMBER ]
    then
        LINE_NUMBER_TO_ADD=`expr $LINE_NUMBER - 1`
        echo $LINE_NUMBER_TO_ADD
        ADD_TMP="tmpdir \= \/var\/mysqltmp \n"
        echo "sed -i "${LINE_NUMBER_TO_ADD}s/.*/$ADD_TMP/" "$MYCONF_PATH""
        sed -i "${LINE_NUMBER_TO_ADD}s/.*/$ADD_TMP/" "$MYCONF_PATH"
    else
        ADD_TMP="tmpdir \= \/var\/mysqltmp"
        echo "sed -i "${CHECK_TMP_DIR_INCLUDED_IN_CONF}s/.*/$ADD_TMP/" "$MYCONF_PATH""
        sed -i "${CHECK_TMP_DIR_INCLUDED_IN_CONF}s/.*/$ADD_TMP/" "$MYCONF_PATH"
    fi
else
    ADD_TMP="tmpdir \= \/var\/mysqltmp"
    echo "sed -i "${CHECK_TMP_DIR_INCLUDED_IN_CONF}s/.*/$ADD_TMP/" "$MYCONF_PATH""
    sed -i "${CHECK_TMP_DIR_INCLUDED_IN_CONF}s/.*/$ADD_TMP/" "$MYCONF_PATH"
fi
sh_path=`whereis sh | awk '{print $2}'`
$sh_path /scripts/2_3_Task/add_mysql_optimisation_conf_setup.sh

service mysqld restart
