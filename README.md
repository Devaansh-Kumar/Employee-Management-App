# TASK 8

## STEPS TAKEN

To create a Daemon to take timely backups for the MySQL container, first we need to create a bash script that can be called.

![](/ss/backup.png)

Here I enter the container and run the command `mysqldump` which is used to take a backup of the MySQL database and loads it to `/mysql_backups/mysql_backup.sql` directory of the user.

Now make the file executable using the command:
```bash
chmod +x mysqlBackup.sh
```

To create the daemon, first create a directory called `mysql_backups` in home directory.
Now open a terminal and put the command:
```bash
crontab -e
```

Edit the last line of the file to include:
```bash
0 0 * * * /pathToScriptFile/mysqlBackup.sh
```
Now your your database will backed up at 12:00 AM every morning.