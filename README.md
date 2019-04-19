# Docker Rails base

Base Docker Rails image for the portal and LARA.

Currently uses Rails LTS 3.2.22.13.

To build new image:

`docker build . -t concordconsortium/docker-rails-base-ruby:2.5-rails-3.2.22.13 --build-arg RAILS_LTS_PASS=replace-with-password`
