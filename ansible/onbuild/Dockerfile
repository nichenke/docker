FROM versity-ansible:2

MAINTAINER Nic Henke <nic.henke@versity.com>

# setup requirements.yml needed from local source dir

RUN mkdir /src
# setup /src to allow for role installs or anything else we'll need there later
VOLUME /src

ONBUILD ADD ansible.cfg requirements.yml /src/
ONBUILD RUN (cd /src; ansible-galaxy install -r ./requirements.yml --force)

# TODO
# - add a fact with version of image, so ansible role code can assert on that later
#  -- allowing us to version the images & role codes sensibly
