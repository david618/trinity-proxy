FROM centos:7.2.1511

RUN yum -y install epel-release
RUN yum -y install nginx
RUN yum -y install iproute

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

ENTRYPOINT /usr/sbin/nginx;tail -f /etc/redhat-release



