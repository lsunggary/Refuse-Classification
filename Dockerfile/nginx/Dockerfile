FROM centos
MAINTAINER lsunggary<479808611@qq.com>

#镜像的操作指令 
RUN yum install -y wget &&\
wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo &&\
yum install -y nginx &&\
echo "daemon off;" >>/etc/nginx/nginx.conf
#添加文件需存在当前目录下
ADD index.html /usr/share/nginx/html/index.html
EXPOSE 80
#容器启动时执行命令
CMD /usr/sbin/nginx
#TEST ECHO
RUN echo "hello docker" >index.html
