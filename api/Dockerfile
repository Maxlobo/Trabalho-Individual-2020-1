FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN gem update --system
RUN gem install bundler

RUN mkdir -p /app/api

WORKDIR /app/api

COPY ./api/Gemfile .
COPY ./api/Gemfile.lock .


RUN bundle install

COPY ./api .

COPY ./api/entrypoint-api.sh /usr/bin/entrypoint-api.sh

RUN chmod +x /usr/bin/entrypoint-api.sh


ENTRYPOINT ["entrypoint-api.sh"]
