FROM centos:latest
MAINTAINER naveen.knaveen007singh@rediffmail.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


# FROM centos:latest
# MAINTAINER Naveen.knaveen007singh@gmail.com
# RUN yum install -y httpd \
#   zip \
#   unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# WORKDIR /var/www/html
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80

# FROM centos:latest
# MAINTAINER Naveen.knaveen007singh@gmail.com
# RUN yum install -y httpd \
#   zip \
#   unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
# WORKDIR /var/www/html
# RUN unzip kindle.zip
# RUN cp -rvf markups-kindle/* .
# RUN rm -rf __MACOSX markups-kindle kindle.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE  80
