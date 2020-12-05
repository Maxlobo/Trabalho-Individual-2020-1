FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

RUN gem update --system
RUN gem install bundler

RUN bundle install

COPY . /app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]