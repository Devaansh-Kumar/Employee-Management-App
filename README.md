# TASK 9

## STEPS TAKEN

To create a CI/CD pipeline to build docker image and upload to docker hub, I have created a `github_cicd.yaml` file as follows

![](/ss/file.png)

On pushing this code to github you can see the workflow run successfully and upload the build docker image to docker hub by logging in my credentials.

![](/ss/workflow.png)

![](/ss/dockerhub.png)

For the second part of this task we had to take 2 numbers and a token at `/challenge` as a response from the API hosted at `fdeployserver.up.railway.app`. Then we take the sum of both the numbers along with the token as a POST request at `/deploy`.

I have created a github workflow for it as follows:

![](/ss/deployserver.png)

Whenever I run the commands using the terminal or test the API using Postman, I get an OK response but even after a lot of tries I am not able to figure out why the workflow does not run for the post request.

![](/ss/github.png)