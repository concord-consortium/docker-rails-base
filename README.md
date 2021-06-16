# Docker Rails base

Base Docker Rails image for the portal (and LARA once upgraded to Rails 6).

Currently uses Rails 6.1.3.2.

To build new image:

`docker build . -t concordconsortium/docker-rails-base-private:ruby-2.6-rails-6.1.3.2`

To push a new image:

`docker push concordconsortium/docker-rails-base-private:ruby-2.6-rails-6.1.3.2`
