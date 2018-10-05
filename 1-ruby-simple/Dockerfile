FROM ruby:2.5-alpine

WORKDIR /usr/src/app

COPY . .
RUN bundle install

EXPOSE 4567

CMD ["ruby", "./app.rb"]
