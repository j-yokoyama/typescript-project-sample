FROM centos:7

RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum install -y \
  nodejs \
  perl \
  sloccount
RUN npm install -g cloc
