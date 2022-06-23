FROM ruby:3.1.0
RUN gem install bundler 
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile  /myapp/Gemfile
COPY Gemfile.lock  /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp


