FROM centos:7

MAINTAINER Nic Henke <nic.henke@versity.com>

# Packages needed to build libarchive from source, including a few utilities to help with debugging
RUN yum install -y which less bash gcc libattr libattr-devel libacl libacl-devel bzip2-devel \
                   cmake bzip2 libz-devel openssl-devel libxml2 libxml2-devel xz-devel make \
                   lz4 lz4-devel man man-pages gdb file && \
    yum clean all && \
    rm -fr ~/.cache && rm -fr /var/cache/*

CMD ["/bin/bash"]
