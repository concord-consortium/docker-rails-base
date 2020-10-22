# Docker Rails base

Base Docker Rails image for the portal and LARA.

Currently uses Rails LTS 4.2.11.17 with Ruby 2.3.7.

To build new image:

`docker build . -t concordconsortium/docker-rails-base-private:2.3.7-new-tag-here --build-arg RAILS_LTS_PASS=replace-with-password`
