From Centos:7
RUN sed -i 's|^mirrorlist=|#mirrorlist=|g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's|^#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Base.repo
LABEL Name="Mutthu"
EXPOSE 80
RUN yum install -y epel-release && yum install -y nginx 
copy index.html /usr/share/nginx/html
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
