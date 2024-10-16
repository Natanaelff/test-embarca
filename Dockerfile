FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client build-essential libpq-dev

WORKDIR /myapp

COPY Gemfile Gemfile.lock ./

RUN gem install bundler:2.2.3
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
