FROM ruby:3.0.5

# Installing yarn
RUN apt-get update && apt-get install -y \
  curl \
  build-essential \
  libpq-dev &&\
  curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y nodejs yarn bash &&  \
  apt-get clean

WORKDIR /app

# Installing dependencies from Gemfile
COPY Gemfile Gemfile.lock /app/
RUN bundle install

# Installing dependencies from yarn.lock and package.lock
COPY yarn.lock  package.json /app/
COPY . /app/
RUN yarn install

RUN bundle exec rails assets:precompile
