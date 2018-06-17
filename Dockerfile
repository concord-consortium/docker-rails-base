FROM ruby:2.2.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# for a JS runtime
RUN apt-get install -qq -y nodejs

# install software-properties-common for add-apt-repository
RUN apt-get install -qq -y software-properties-common

# clean up ruby / gems / bundler
RUN gem update --system
RUN gem update bundler

# Try to get rid of old bundler version. This used to be a simple:
#   gem cleanup bundler
# but now bundler is installed outside of GEM_HOME, so that command needs specify the
# location where bundler is installed
RUN GEM_HOME=/usr/local/lib/ruby/gems/2.2.0 gem cleanup bundler

# install base version of rails
RUN gem install rails -v 3.2.22.5
