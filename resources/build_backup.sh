#!/bin/sh
BACKUP_DIR=/backups/mysql

rm -r $BACKUP_DIR
innobackupex --user=root --password=$MYSQL_ROOT_PASSWORD --databases="mysql $MYSQL_DATABASE" --no-timestamp $BACKUP_DIR \
 && innobackupex --apply-log $BACKUP_DIR