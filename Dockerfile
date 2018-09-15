FROM ruby:2.5.1
RUN apt-get update && apt-get install -y nodejs vim mysql-client

RUN mkdir /project
WORKDIR /project
ADD ./Gemfile /project/Gemfile
ADD ./Gemfile.lock /project/Gemfile.lock

RUN bundle install
COPY . /project