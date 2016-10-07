FROM versity-python:2.7

MAINTAINER Nic Henke <nic.henke@versity.com>

# the first few layers to keep around...
RUN apk add --no-cache --virtual .dev-deps man man-pages git

# we need gcc and friends to build cython modules
# attr* for xfs-python and panorama
RUN apk add --no-cache --virtual .run-deps gcc libc-dev attr attr-dev

# Install basic Python tools
RUN pip2.7 install --no-cache-dir -U cython tox pylint pytest pytest-cov pytest-catchlog wheel && rm -fr ~/.cache

# bash, as we'll run tox or other commands
CMD ["/bin/bash"]
