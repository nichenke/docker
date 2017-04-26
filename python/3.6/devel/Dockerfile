FROM versity/python:3.6

MAINTAINER Nic Henke <nic.henke@versity.com>

# the first few layers to keep around...
# git & openssh for pip installs and builds
# - note tsflags=nodocs by default, there are actually some docs we want!
RUN yum --setopt tsflags='' install -y man man-pages git openssh && \
    # we need gcc and friends to build cython modules
    # attr* for panorama
    # linux-headers for just about everyone itseems
    yum install -y gcc glibc-devel gcc-c++ && \
    yum --setopt tsflags='' install -y python36u-devel && \
    yum --setopt tsflags='' install -y libattr libattr-devel kernel-headers && \
    yum clean all && rm -fr /var/cache/*

# Install basic Python tools
RUN pip3.6 install --no-cache-dir -U cython tox pylint pytest pytest-cov pytest-catchlog wheel && rm -fr ~/.cache

# bash, as we'll run tox or other commands
CMD ["/bin/bash"]
