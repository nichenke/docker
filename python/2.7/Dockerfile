FROM python:2.7-alpine

MAINTAINER Nic Henke <nic.henke@versity.com>

# hack for helping us getting going with docker, bash lets us get in and see what isn't working
RUN apk add --no-cache --virtual .removebeforeshipping bash

RUN pip install -U --no-cache-dir pip setuptools && rm -fr ~/.cache

CMD ["python2"]
