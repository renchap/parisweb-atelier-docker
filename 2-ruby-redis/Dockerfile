FROM ruby:2.5-alpine

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 4567

CMD ["ruby", "./app.rb"]
