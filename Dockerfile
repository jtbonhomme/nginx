#============================================
#
# NGINX Dockerfile
#
#============================================

FROM ubuntu:16.04
MAINTAINER Jean-Thierry BONHOMME <jtbonhomme@gmail.com>

#============================================
# Nginx
#============================================
RUN apt-get update
RUN apt-get install -y nginx
COPY default /etc/nginx/sites-available/default
RUN mkdir -p /var/www/html/allure
RUN echo "INSTALL COMPLETED" > /var/www/html/allure/index.html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 81
CMD ["nginx","-g","daemon off;"]
