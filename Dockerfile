FROM ruby:2.7.4
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /survey_app
COPY Gemfile /survey_app/Gemfile
COPY Gemfile.lock /survey_app/Gemfile.lock
RUN bundle install

COPY development-entry.sh /usr/bin/
RUN chmod +x /usr/bin/development-entry.sh
ENTRYPOINT ["development-entry.sh"]
EXPOSE 4000

CMD ["rails", "server", "-b", "0.0.0.0"]