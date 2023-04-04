#! /usr/bin/bash
mkdir mysql_backups
docker exec mysql mysqldump -u root -p password src_development > "$HOME"/mysql_backups/mysql_backup.sql