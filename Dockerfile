FROM ruby:2.5.1
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /share_tax

ADD Gemfile /share_tax/Gemfile
ADD Gemfile.lock /share_tax/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /share_tax