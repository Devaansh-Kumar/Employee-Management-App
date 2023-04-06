# TASK 1

## STEPS TAKEN

I have created a Dockerfile to containerize the Ruby on Rails application

![](/ss/Dockerfile.png)

Here I have used the base image as `ruby:3.0.5`

First I install `nodejs` and `yarn` to run the applications

Then I create a working directory called app and load the `Gemfile`, `Gemfile.lock`, `yarn.lock` and `package.json` and build them.

After this I run `bundle exec rails assets:precompile`

Now to build the image from the Dockerfile I use:
```bash
docker build -t ema .
```

And now we can run the container using:
```bash
docker run -it -p 3000:3000 ema
```

You can now view the site on `localhost:3000`