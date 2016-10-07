FROM python:2.7-alpine

MAINTAINER Nic Henke <nic.henke@versity.com>

RUN apk add --no-cache --virtual .run-deps git bash openssh libffi rsync && \
    apk add --no-cache --virtual .build-deps gcc libc-dev libffi-dev openssl-dev && \
    pip install -U --no-cache-dir pip && \
    # Ansible & requirements
    pip install --no-cache-dir ansible simplejson netaddr && \
    apk del .build-deps && \
    rm -fr ~/.cache

# we run ansible-playbook, go go go
ENTRYPOINT ["/usr/local/bin/ansible-playbook"]
CMD ["--help"]
