FROM centos:latest
MAINTAINER Anthony Schneider "https://github.com/docker-scientific-python"

ENV USERID 5000

RUN curl -o /tmp/epel.rpm https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm \
  && rpm -ivh /tmp/epel.rpm \
  && rm -f /tmp/epel.rpm

RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -

RUN yum install -y gfortran lapack atlas python-setuptools gcc gcc-c++ \
  python-devel postgresql git libxml2-devel libpqxx-devel libxslt-devel libjpeg-devel \
  && easy_install pip

