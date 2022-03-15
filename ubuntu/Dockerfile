FROM ubuntu:18.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade --yes
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common git curl wget rsync
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y unrar-free p7zip-full p7zip-rar unzip
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 apache2-utils php8.1 libapache2-mod-php8.1
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php8.1-cli php8.1-common php8.1-mbstring php8.1-zip
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php8.1-xml php8.1-curl php8.1-bcmath php8.1-gd
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php8.1-mysql php8.1-opcache php8.1-apcu php8.1-pcov
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php8.1-uploadprogress

RUN a2enmod http2 expires headers deflate rewrite php8.1

# Purge any other php versions if any
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.0*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.1*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.2*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.3*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.4*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php8.0*
RUN DEBIAN_FRONTEND=noninteractive apt-get autoremove --yes
RUN DEBIAN_FRONTEND=noninteractive apt-get autoclean --yes

# Register the COMPOSER_HOME environment variable
ENV COMPOSER_HOME /composer

# Add global binary directory to PATH and make sure to re-export it
ENV PATH ./vendor/bin:/composer/vendor/bin:$PATH

# Allow Composer to be run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

# Install composer
# RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
#  && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer && rm -rf /tmp/composer-setup.php

RUN wget -O /usr/local/bin/composer https://getcomposer.org/download/2.2.7/composer.phar
RUN chmod 755 /usr/local/bin/composer

RUN cat /etc/os-release
RUN cat /proc/version
RUN apache2 -v
RUN php --version
RUN composer --version
RUN update-alternatives --config php