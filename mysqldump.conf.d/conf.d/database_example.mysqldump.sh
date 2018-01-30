#!/bin/bash

MYSQLDUMP=/usr/bin/mysqldump

MYSQL_USER=root
MYSQL_PASSWORD=111111
MYSQL_HOST=192.168.1.96
MYSQL_PORT=3306
MYSQL_DATABASE=mysql

DATE_FORMAT=`date "+%Y%m%d.%Hh%Mm%Ss"`
OUTPUT_DIR=/mnt/mysqldump.conf.d/data/
FILE_NAME=$OUTPUT_DIR$MYSQL_DATABASE.$DATE_FORMAT.sql

$MYSQLDUMP -u $MYSQL_USER -p$MYSQL_PASSWORD -h $MYSQL_HOST -P $MYSQL_PORT --single-transaction $MYSQL_DATABASE > $FILE_NAME
