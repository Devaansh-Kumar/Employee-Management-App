#! /usr/bin/bash
mkdir mysql_backups
docker exec mysql mysqldump -uroot -ppassword src_development > "$HOME"/mysql_backups/mysql_backup.sql