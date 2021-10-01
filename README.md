# Docker Rails base

Base Docker Rails image for the portal and LARA.

Currently uses Rails LTS 3.2.22.

To build new image:

`docker build . -t concordconsortium/docker-rails-base-private:ruby-2.3.7-rails-new_version_here --build-arg RAILS_LTS_PASS=replace-with-password`

To push a new image:

`docker push concordconsortium/docker-rails-base-private:ruby-2.3.7-rails-new_version_here`
