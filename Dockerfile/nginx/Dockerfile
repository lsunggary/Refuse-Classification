FROM centos
MAINTAINER lsunggary<479808611@qq.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm 
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm 
#安装nginx 
RUN yum -y install gcc gcc-c++ \
openssl openssl-devel \
zlib zlib-devel \
nginx supervisor 
EXPOSE 80 
RUN rm -rf /var/lib/yum/history/*.sqlite &&\
rm -rf /var/cache/yum 
RUN rm -f /etc/supervisord.conf 
COPY supervisord.conf /etc/ 
COPY www.conf /etc/nginx/conf.d/ 
COPY nginx.conf /etc/nginx/ 
#CMD ["/usr/sbin/nginx","-g","daemon off;"] 
CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
