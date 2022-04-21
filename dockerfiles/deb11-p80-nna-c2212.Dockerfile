FROM php:8.0.17-apache-bullseye

# Install packages needed
RUN apt-get update && apt-get -y install \
  libjpeg-dev \
  libfreetype6-dev \
  libxpm-dev \
  libwebp-dev \
  libzip-dev \
  libicu-dev \
  zip \
  unzip \
  curl \
  wget \
  git \
  rsync

# Configure gd
RUN docker-php-ext-configure gd \
  --with-webp=/usr/include/ \
  --with-jpeg=/usr/include/ \
  --with-xpm=/usr/include/ \
  --with-freetype=/usr/include/

# Install and enable apcu pcov uploadprogress
RUN pecl install apcu
RUN docker-php-ext-enable apcu

RUN pecl install pcov
RUN docker-php-ext-enable pcov

RUN pecl install uploadprogress
RUN docker-php-ext-enable uploadprogress

# Install php extensions
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install gd
RUN docker-php-ext-install zip
RUN docker-php-ext-install opcache
RUN docker-php-ext-install intl
RUN docker-php-ext-install pdo_mysql

RUN a2enmod http2 expires headers deflate rewrite

# Register the COMPOSER_HOME environment variable
ENV COMPOSER_HOME /composer

# Add global binary directory to PATH and make sure to re-export it
ENV PATH ./vendor/bin:/composer/vendor/bin:$PATH

# Allow Composer to be run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

# Install composer
RUN wget -O /usr/local/bin/composer https://getcomposer.org/download/2.2.12/composer.phar
RUN chmod 755 /usr/local/bin/composer