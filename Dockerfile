FROM ruby:2.6.5
RUN gem install bundler
WORKDIR /var/app

COPY Gemfile .
RUN bundle install

COPY .env .
COPY config.ru .
COPY mongoid.yml .
COPY .rspec .rspec
COPY config ./config
COPY spec ./spec
COPY app ./app

CMD bundle exec rerun -b --no-notify -- rackup --host 0.0.0.0 --port 9292 config.ru
