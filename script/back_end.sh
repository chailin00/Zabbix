#!/bin/bash
dbhost='133.128.174.68'
dbuser='sxgkzs'
dbpasswd='pwd'
dbport='9066'
sql='Show @@backend'
/mysql/component/mysql01/bin/mysql -u$dbuser -p$dbpasswd -P$dbport -h$dbhost -Ne "$sql" 2>/dev/null | grep -c 'Processor'  
