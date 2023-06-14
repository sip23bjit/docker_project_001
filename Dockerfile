# Use the official PHP 7.4-apache base image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Install PHP extensions and dependencies
RUN apt-get update \
    && apt-get install -y \
        libzip-dev \
        zip \
        mariadb-client\
    && docker-php-ext-install zip \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli

# Enable Apache rewrite module
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80
