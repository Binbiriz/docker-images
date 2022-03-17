FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade --yes
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common git curl wget rsync
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y unrar-free p7zip-full p7zip-rar unzip
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:ondrej/php
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 apache2-utils php8.0 libapache2-mod-php8.0
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php8.0-cli php8.0-common php8.0-mbstring php8.0-zip
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php8.0-xml php8.0-curl php8.0-bcmath php8.0-gd
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php8.0-mysql php8.0-opcache php8.0-apcu php8.0-pcov
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php8.0-uploadprogress

RUN DEBIAN_FRONTEND=noninteractive a2enmod http2 expires headers deflate rewrite php8.0

# Purge any other php versions if any
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.0*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.1*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.2*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.3*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php7.4*
RUN DEBIAN_FRONTEND=noninteractive apt-get remove --yes --purge php8.1*
RUN DEBIAN_FRONTEND=noninteractive apt-get autoremove --yes
RUN DEBIAN_FRONTEND=noninteractive apt-get autoclean --yes

# Node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get install -y nodejs

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
RUN composer self-update

RUN cat /etc/os-release
RUN cat /proc/version
RUN apache2 -v
RUN php --version
RUN composer --version
RUN node -v
RUN npm -v
RUN update-alternatives --config php