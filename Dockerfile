FROM ubuntu:18.04

LABEL maintainer="jonathan@jdsdev.com"

# Let the container know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# NOTE: When updating PHP_VERSION, update the following as well:
# ./conf/supervisor/supervisord.conf
# ./conf/nginx/conf.d/default.conf
# ./php/{php_version}/*
ENV PHP_VERSION 7.4
# `apt-cache madison php7.4` to list available minor versions
ENV PHP_MINOR_VERSION 7.4.21-1+ubuntu18.04.1+deb.sury.org+1
ENV COMPOSER_VERSION 2.1.3
# `apt-cache madison nginx` to list available versions
ENV NGINX_VERSION 1.21.1-1~bionic

# Install Craft Requirements
RUN set -x \
    && apt-get update \
    && apt-get install -yq --no-install-recommends \
        apt-utils \
        curl \
        gnupg2 \
        iproute2 \
        mysql-client \
        python-pip \
        python-setuptools \
        python-wheel \
        software-properties-common \
        unzip \
        zip \
    && LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y \
    && echo "deb http://nginx.org/packages/mainline/ubuntu/ bionic nginx" > /etc/apt/sources.list.d/nginx.list \
    && curl -o /tmp/nginx_signing.key http://nginx.org/keys/nginx_signing.key \
    && apt-key add /tmp/nginx_signing.key \
    && apt-get update && apt-get install -yq --no-install-recommends \
        nginx=${NGINX_VERSION} \
        php${PHP_VERSION}-cli=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-curl=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-fpm=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-gd=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-gmp=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-intl=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-json=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-mbstring=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-mysql=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-opcache=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-readline=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-soap=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-xml=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-zip=${PHP_MINOR_VERSION} \
        php${PHP_VERSION}-imagick \
        php${PHP_VERSION}-redis \
    && mkdir -p /run/php \
    && chown www-data.www-data /run/php \
    && pip install supervisor supervisor-stdout \
    && echo "#!/bin/sh\nexit 0" > /usr/sbin/policy-rc.d \
    && apt-get autoremove --purge -y \
        software-properties-common \
        gnupg2 \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Composer
RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
  && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
  && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" \
  && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} \
  && rm -rf /tmp/*

# Nginx config
COPY conf/nginx /etc/nginx

# PHP config
COPY conf/php /etc/php

# Supervisor config
COPY conf/supervisor/supervisord.conf /etc/supervisord.conf

# Override default nginx welcome page
COPY html /usr/share/nginx/html

# Copy Scripts
COPY start.sh /start.sh
RUN chmod 755 /start.sh

EXPOSE 80

CMD ["/start.sh"]
