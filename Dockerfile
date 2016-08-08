# Chas' Alpine Sinatra Build
FROM alpine
MAINTAINER Chas Hopkins <hopkinschas@gmail.com>
RUN apk add --update curl wget bash ruby ruby-bundler ruby-io-console ruby-dev ruby-rdoc build-base ruby-irb ruby-rake ruby-bigdecimal ruby-json libstdc++ tzdata && rm -rf /var/cache/apk/* && echo 'gem: --no-document' > /etc/gemrc
RUN gem install sinatra
RUN gem install json
RUN mkdir /usr/app 
COPY ./project/* /usr/app/
WORKDIR /usr/app 
RUN bundle install
CMD ruby app.rb -o 0.0.0.0
