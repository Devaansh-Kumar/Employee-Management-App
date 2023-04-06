# TASK 4

## STEPS TAKEN

I have edited the docker compose file to include environment variables. I have also removed the hardcoded IP address in the docker compose file and just referenced the containers by name when they want to talk to each other.

To configure Nginx as a loadbalancer I have added the upstream directive in the config file. 

The default configuration for load balancing is robin round, but it can also be configured to sent requests to the server with the least number of active connections by adding `least_conn;` in the directive or we can also use weighted robin round by assigning weights to the servers.

![](/ss/default.png)

Now to run the containers I use:

```bash
docker-compose up --scale app=3
```

As you can see the load gets balanced to the three containers in robin round fashion when I open the site in three different tabs.

![](/ss/loadbalance.png)