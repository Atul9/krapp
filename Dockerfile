FROM ruby:2.5.0
RUN mkdir /app
WORKDIR /app
COPY ./Gemfile ./Gemfile.lock ./
RUN gem install bundler && bundler install
COPY . .
CMD ["bundle", "exec", "rails", "server"]