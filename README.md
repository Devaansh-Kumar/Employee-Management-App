# TASK 3

## STEPS TAKEN:

I have created a `default.conf` under `conf` folder for NGINX to configure it as a reverse proxy.

![default.conf](/ss/default.png)

Now go to the terminal and run `docker-compse build` and `docker-compose up` to start the containers.

You will find the site on `localhost:8080`

![empman](/ss/empman.png)

Make sure to create db and run pending migrations if not done already

![createdb](/ss/createdb.png)
![createdb](/ss/migrations.png)

One thing you will notice is that if you don't set the header `proxy_set_header  X-Sendfile-Type   X-Accel-Redirect` in the server directive, then all posts requests from the site will give an error. This was found after using combinations of headers in the   Nginx configuration file and was actually referenced as a comment in the `production.rb` file. 