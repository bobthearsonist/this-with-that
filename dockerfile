FROM ruby:3.1.3 AS base

COPY Gemfile* /
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]