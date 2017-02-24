FROM centos:7

MAINTAINER Nic Henke <nic.henke@versity.com>

# hack for helping us getting going with docker, bash lets us get in and see what isn't working
RUN yum install -y bash && \
    yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install -y python36u python36u-pip && \
    yum clean all && \
    pip3.6 install -U --no-cache-dir pip setuptools wheel && rm -fr ~/.cache && rm -fr /var/cache/*

CMD ["python3.6"]
