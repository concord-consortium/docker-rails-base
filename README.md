# Docker Rails base

Base Docker Rails image for the portal and LARA.

Currently uses Rails LTS 3.2.22.

To build new image:

`docker build . -t concordconsortium/docker-rails-base-ruby:(replaces with ruby version and new tag) --build-arg RAILS_LTS_PASS=replace-with-password`
