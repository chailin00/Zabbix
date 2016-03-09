
#! /bin/bash
#
dbhost='133.128.174.68'
dbuser='sxgkzs'
dbpasswd='pwd'
dbport='9066'
sql='Show @@cache'
/mysql/component/mysql01/bin/mysql -u$dbuser -p$dbpasswd -P$dbport -h$dbhost -Ne "$sql" 2>/dev/null | grep -n 'ER_SQL2PARENTID' |  awk '{print $2}'
