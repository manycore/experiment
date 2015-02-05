FROM centos:centos6
MAINTAINER Roman Atachiants "atachiar@scss.tcd.ie"

# Enable EPEL for Node.js
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node.js and npm
RUN yum install -y npm

# Extract & Install
COPY . /app
RUN cd /app; npm install

# Http Port
EXPOSE 80


CMD ["node", "/app/lib/lilbro.js"]