FROM php:8.1.0RC6-fpm-alpine
RUN apk --update --no-cache add git

# Install Postgre PDO
RUN set -ex \
  && apk --no-cache add \
    postgresql-dev

RUN docker-php-ext-install pdo pdo_pgsql

COPY --from=composer /usr/bin/composer /usr/bin/composer
WORKDIR /var/www
CMD composer install ;  php-fpm
EXPOSE 9000
