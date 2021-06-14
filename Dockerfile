FROM ruby:2.7.3

RUN apt-get clean && apt-get update -qq

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN bundle install
