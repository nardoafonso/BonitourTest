FROM ruby:2.4.1
RUN gem install rails -v '5.2.0'
WORKDIR /app
ADD Gemfile Gemfile.lock /app/
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["sh","docker-entrypoint.sh"]
RUN bundle install
