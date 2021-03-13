FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential node.js
COPY Gemfile /Gemfile
COPY Gemfile.lock /Gemfile.lock
RUN bundle install
