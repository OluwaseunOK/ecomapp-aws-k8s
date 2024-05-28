FROM php:7.2-apache
COPY . /var/www/html/
EXPOSE 80/tcp
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  docker-php-ext-install mysqli && docker-php-ext-enable mysqli
ENV DB_HOST=""
ENV DB_USER=""
ENV DB_PASSWORD=""
ENV DB_NAME=""
