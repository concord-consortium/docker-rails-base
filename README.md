# Docker Rails base

Base Docker Rails image for the portal and LARA.

Currently uses Rails LTS 3.2.22.

To build new image:

`docker build . -t concordconsortium/docker-rails-base-2.2.6:new-tag-here --build-arg RAILS_LTS_PASS=replace-with-password`
