#!/bin/bash
TIME_NOW="`date +'%d_%m_%Y_%H_%M_%S'`"
BACKUPFILE="db_backup_$TIME_NOW".gz
BACKUP_DIR="sudo /opt/db_backup_dir"
PATHOFBACKUPFILE="$BACKUP_DIR/$BACKUPFILE"
LOG_FILE="`touch $BACKUP_DIR/"backup_log_"`date +'%Y_%m'`"`.txt

echo "mysqldump started at `date +'%d_%m_%Y%H:%M:%S'`" >> "$LOG_FILE"
mysqldump -u JODI -p iamdevops --default-character-set=utf8 web | 
gzip > "$PATHOFBACKUPFILE"

echo "mysqldump finished at `date +'%d-%m-%Y %H:%M:%S'`" >> "$LOG_FILE"

chown devops "$PATHOFBACKUPFILE"
chown devops "$LOG_FILE"

echo "file permission changed" >> "$LOG_FILE"
find "$BACKUP_DIR" -name db_backup_ *-mtime +8 -exec rm{}\;

echo "old files deleted" >> "$LOG_FILE"

echo "operation finished at `date +'%d-%m-%Y %H:%M:%S'`" >> "$LOG_FILE"
echo "********************" >> "$LOG_FILE"
exit 0
