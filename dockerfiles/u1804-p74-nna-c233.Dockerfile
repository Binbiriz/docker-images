FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade --yes
RUN apt-get install -y software-properties-common git curl wget rsync
RUN apt-get install -y unrar-free p7zip-full p7zip-rar unzip
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y apache2 apache2-utils php7.4 libapache2-mod-php7.4
RUN apt-get install -y php7.4-cli php7.4-common php7.4-mbstring php7.4-zip
RUN apt-get install -y php7.4-xml php7.4-curl php7.4-bcmath php7.4-gd php7.4-intl
RUN apt-get install -y php7.4-mysql php7.4-opcache php7.4-apcu php7.4-pcov
RUN apt-get install -y php7.4-uploadprogress

RUN a2enmod http2 expires headers deflate rewrite php7.4

# Purge any other php versions if any
RUN apt-get remove --yes --purge php7.0*
RUN apt-get remove --yes --purge php7.1*
RUN apt-get remove --yes --purge php7.2*
RUN apt-get remove --yes --purge php7.3*
RUN apt-get remove --yes --purge php8.0*
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
# RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
#  && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer && rm -rf /tmp/composer-setup.php
RUN wget -O /usr/local/bin/composer https://getcomposer.org/download/2.3.3/composer.phar
RUN chmod 755 /usr/local/bin/composer