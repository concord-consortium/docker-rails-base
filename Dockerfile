FROM ruby:2.3.7

# Update apt packages and upgrade installed packages
# add node for the JS runtime
# install software-properties-common for add-apt-repository
# clean up the apt-get cache
RUN apt-get update -qq && apt-get upgrade -y \
&& apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  software-properties-common

ARG RAILS_LTS_PASS

# clean up ruby / gems / bundler
RUN gem update --system
RUN gem update bundler

# Try to get rid of old bundler version. This used to be a simple:
#   gem cleanup bundler
# but now bundler is installed outside of GEM_HOME, so that command needs specify the
# location where bundler is installed
RUN GEM_HOME=/usr/local/lib/ruby/gems/2.3.0 gem cleanup bundler

# Install base version of Rails
RUN gem install rails -v 3.2.22.25 --source "https://concord:$RAILS_LTS_PASS@gems.railslts.com"

# Configure Bundler with Rails LTS credentials
RUN bundle config gems.railslts.com concord:$RAILS_LTS_PASS
