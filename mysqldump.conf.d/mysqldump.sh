#!/bin/bash

APP_ROOT=/mnt/mysqldump.conf.d/
FILES=$APP_ROOT"conf.d/*.mysqldump.sh"

for f in $FILES
do
	echo "Processing $f"
	sh $f
done
