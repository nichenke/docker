FROM python:2.7-alpine

MAINTAINER Nic Henke <nic.henke@versity.com>

RUN apk add --no-cache --virtual .run-deps git bash openssh libffi rsync && \
    apk add --no-cache --virtual .build-deps gcc libc-dev libffi-dev openssl-dev && \
    pip install -U --no-cache-dir pip && \
    # pycparser has a bug in 2.15,
    # - cryptography - https://github.com/pyca/cryptography/issues/3187
    # - pycparser - https://github.com/eliben/pycparser/issues/151
    pip install pycparser==2.14 && \
    # Ansible & requirements
    pip install --no-cache-dir ansible simplejson netaddr boto && \
    apk del .build-deps && \
    rm -fr ~/.cache

# we run ansible-playbook, go go go
ENTRYPOINT ["/usr/local/bin/ansible-playbook"]
CMD ["--help"]
