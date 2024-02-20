FROM centos:7

RUN yum install httpd -y
#RUN sed -i 's/Listen 80/Listen 8080/g' /etc/httpd/conf/httpd.conf

COPY index.html /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
