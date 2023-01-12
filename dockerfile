FROM ruby:3.1.3 AS base

COPY Gemfile* /
RUN bundle install
COPY . .
EXPOSE 8080
CMD ["rails", "server", "--binding", "0.0.0.0","--port","8080"]