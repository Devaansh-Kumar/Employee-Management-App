# TASK 3

## STEPS TAKEN:

I have created a `default.conf` under `conf` folderfile for NGINX to configure it as a reverse proxy

![default.conf](/ss/default.png)

Now go to the terminal and run `docker-compse build` and `docker-compose up` to start the containers.

You will find the site on `localhost:8080`

![empman](/ss/empman.png)

Make sure to create db and run pending migrations if not done already

![createdb](/ss/createdb.png)
![createdb](/ss/migrations.png)