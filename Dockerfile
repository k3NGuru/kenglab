FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /kenglab
WORKDIR /kenglab
ADD Gemfile /kenglab/Gemfile
ADD Gemfile.lock /kenglab/Gemfile.lock
RUN bundle install
ADD . /kenglab

