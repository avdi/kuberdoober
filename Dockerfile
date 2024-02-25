FROM ruby:3

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY app.rb config.ru ./

CMD ["rackup", "--host", "0.0.0.0", "-p", "8080"]