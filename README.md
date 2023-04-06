# TASK 7

## STEPS TAKEN

To place a limit on the number of request send at a time to the servers, we can add a `limit_req_zone` command in the `default.conf` and reference it within the server directive.

The `limit_req_zone` defines the rate limit and gives it a name. I have set it to 20r/s. I noticed that if I set the rate limit too low then the site does not completely load properly and the number 20r/s works fine.

![](/ss/ratelimit.png)