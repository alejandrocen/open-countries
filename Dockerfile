FROM ruby:2.7.3-alpine

RUN apk update && apk add --virtual build-deps build-base

WORKDIR /app

COPY api/ api/
COPY config/ config/
COPY test/ test/
COPY Gemfile .
COPY Rakefile .
COPY .rubocop.yml .
COPY .rubocop_todo.yml .

RUN bundle install
