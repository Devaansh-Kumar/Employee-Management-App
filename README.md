# TASK 5 and 6

## STEPS TAKEN

To enable persistance for the mysql container, I have created a volume called `dbdata` which is declared in the docker compose file and loaded it to `/var/lib/mysql` directory within the mysql container. This way even if the container goes down or is restarted, its data can be persisted.

For the Nginx container I have created a bind mount that loads the `default.conf` file from the source code to `/etc/nginx/conf.d/` within the container.

The reason for using bind mounts for Nginx and not volumes is because there is only one file that we need to load to the container that does not change very often.

To run the container use:

```bash
docker-compose up --scale app=3
```

I have done task 5 and 6 together as I have been using docker compose from the start as it really eases container management and can be run using a single command.