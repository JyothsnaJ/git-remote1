#!/bin/bash

LOG_DIR='/tmp/scripts/logs'
BACKUP_DIR='/tmp/scripts/logs_backup'
mkdir -p $BACKUP_DIR
for i in `cat backup_files.txt`; do
	if [ -f $LOG_DIR/$i ];
	then
		echo "$i"
		echo "Copying $i to logs_backup directory."
		sudo cp $LOG_DIR/$i $BACKUP_DIR
	else
		echo "$i log file does exit, skipping."
	fi
done
echo
echo
echo "Zipping log files"
tar -cvf logs_backup.gz logs_backup
echo
echo
echo "Backup completed successfully"

