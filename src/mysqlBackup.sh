#! /usr/bin/bash

source .env
docker exec mysql mysqldump -u$DB_USER -p$MYSQL_ROOT_PASSWORD src_development > "$HOME"/mysql_backups/mysql_backup.sql