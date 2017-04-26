FROM centos:7

MAINTAINER Nic Henke <nic.henke@versity.com>

# Packages needed to build libarchive from source, including a few utilities to help with debugging
RUN yum install -y which less file man man-pages bash gdb \
                   make cmake gcc libattr libacl ghostscript zip && \
    pushd /var/cache && yumdownloader --source libarchive && \
    yum-builddep -y ./libarchive*.src.rpm && \
    popd && \
    yum clean all && \
    rm -fr ~/.cache && rm -fr /var/cache/*

CMD ["/bin/bash"]
