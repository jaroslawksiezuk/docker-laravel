FROM php:8.1-fpm-alpine3.14

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

COPY run.sh /run.sh

WORKDIR /

RUN composer create-project laravel/laravel laravel

WORKDIR /laravel

EXPOSE 8000

CMD ["/run.sh"]
