# TASK 2

## STEPS TAKEN

I have created a docker compose file with the rails app and mysql on a user defined network called `employee`

I have set a IP for each of the containers: `172.21.0.2` for mysql container and `172.21.0.3` for the rails application

![](/ss/dockercompose.png)

I have updated the `database.yml` file as follows as well:

![](/ss/database.png)

Now go to the terminal and run

``` bash
docker-compose build
docker-compose up
```

Now we you go to `localhost:8080` you will find the site running.

![](/ss/empman.png)

Make sure you run the create database and run pending migrations if not done so.