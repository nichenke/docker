FROM centos:7

MAINTAINER Nic Henke <nic.henke@versity.com>

# hack for helping us getting going with docker, bash lets us get in and see what isn't working
RUN yum install -y bash python-setuptools && yum clean all && \
    easy_install pip && \
    pip install -U --no-cache-dir pip setuptools && rm -fr ~/.cache && rm -fr /var/cache/*

CMD ["python2"]
