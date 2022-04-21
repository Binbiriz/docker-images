FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade --yes
RUN apt-get install -y software-properties-common git curl wget rsync
RUN apt-get install -y unrar-free p7zip-full p7zip-rar unzip
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y apache2 apache2-utils php8.0 libapache2-mod-php8.0
RUN apt-get install -y php8.0-cli php8.0-common php8.0-mbstring php8.0-zip
RUN apt-get install -y php8.0-xml php8.0-curl php8.0-bcmath php8.0-gd php8.0-intl
RUN apt-get install -y php8.0-mysql php8.0-opcache php8.0-apcu php8.0-pcov
RUN apt-get install -y php8.0-uploadprogress

RUN a2enmod http2 expires headers deflate rewrite php8.0

# Purge any other php versions if any
RUN apt-get remove --yes --purge php7.0*
RUN apt-get remove --yes --purge php7.1*
RUN apt-get remove --yes --purge php7.2*
RUN apt-get remove --yes --purge php7.3*
RUN apt-get remove --yes --purge php7.4*
RUN apt-get remove --yes --purge php8.1*
RUN apt-get autoremove --yes
RUN apt-get autoclean --yes

# Register the COMPOSER_HOME environment variable
ENV COMPOSER_HOME /composer

# Add global binary directory to PATH and make sure to re-export it
ENV PATH ./vendor/bin:/composer/vendor/bin:$PATH

# Allow Composer to be run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

# Install composer
RUN wget -O /usr/local/bin/composer https://getcomposer.org/download/2.3.3/composer.phar
RUN chmod 755 /usr/local/bin/composer

# Node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get install -y nodejs

# Install specific node version
RUN npm install -g n
RUN n 14.19.1