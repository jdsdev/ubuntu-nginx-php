FROM ubuntu:18.04

LABEL maintainer="jonathan@jdsdev.com"

# Let the container know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# NOTE: Update PHP version in supervisord.conf and nginx.conf
ENV PHP_VERSION 7.2
ENV COMPOSER_VERSION 1.8.4

# Install Craft Requirements
RUN apt-get update && apt-get install -yq --no-install-recommends \
        software-properties-common \
        apt-utils \
        curl \
        zip \
        unzip \
        python-pip \
        python-setuptools \
        python-wheel \
        mysql-client \
    && add-apt-repository ppa:nginx/mainline -y \
    && LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y \
    && apt-get update && apt-get install -yq --no-install-recommends \
        nginx \
        php${PHP_VERSION}-fpm \
        php${PHP_VERSION}-cli \
        php${PHP_VERSION}-curl \
        php${PHP_VERSION}-intl \
        php${PHP_VERSION}-json \
        php${PHP_VERSION}-opcache \
        php${PHP_VERSION}-readline \
        php${PHP_VERSION}-mbstring \
        php${PHP_VERSION}-mysql \
        php${PHP_VERSION}-zip \
        php${PHP_VERSION}-gd \
        php${PHP_VERSION}-imagick \
        php${PHP_VERSION}-redis \
        php${PHP_VERSION}-xml \
        php${PHP_VERSION}-gmp \
    && mkdir -p /run/php \
    && chmod -R 755 /run/php \
    && pip install supervisor supervisor-stdout \
    && echo "#!/bin/sh\nexit 0" > /usr/sbin/policy-rc.d \
    && rm -rf /var/www/* \
        /etc/nginx/conf.d/* \
        /etc/nginx/sites-available/* \
        /etc/nginx/sites-enabled/* \
    && sed -i \
        -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" \
        -e "s/memory_limit\s*=\s*.*/memory_limit = 256M/g" \
        -e "s/upload_max_filesize\s*=\s*2M/upload_max_filesize = 100M/g" \
        -e "s/post_max_size\s*=\s*8M/post_max_size = 100M/g" \
        -e "s/max_execution_time = 30/max_execution_time = 120/g" \
        -e "s/variables_order = \"GPCS\"/variables_order = \"EGPCS\"/g" \
        /etc/php/${PHP_VERSION}/fpm/php.ini \
    && sed -i \
        -e "s/;daemonize\s*=\s*yes/daemonize = no/g" \
        /etc/php/${PHP_VERSION}/fpm/php-fpm.conf \
    && sed -i \
        -e "s/;catch_workers_output\s*=\s*yes/catch_workers_output = yes/g" \
        -e "s/pm.max_children = 5/pm.max_children = 4/g" \
        -e "s/pm.start_servers = 2/pm.start_servers = 3/g" \
        -e "s/pm.min_spare_servers = 1/pm.min_spare_servers = 2/g" \
        -e "s/pm.max_spare_servers = 3/pm.max_spare_servers = 4/g" \
        -e "s/;pm.max_requests = 500/pm.max_requests = 200/g" \
        -e "s/^;clear_env = no$/clear_env = no/" \
        /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf \
    && apt-get autoremove --purge -y software-properties-common \
    && apt-get -y clean && rm -rf /var/lib/apt/lists/*

# Install Composer and Prestissimo to speed up Composer installs
RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
  && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
  && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" \
  && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} \
  && rm -rf /tmp/composer-setup.php \
  && composer global require hirak/prestissimo --no-plugins --no-scripts

# Supervisor config
COPY supervisord.conf /etc/supervisord.conf

# Override nginx's default config
COPY default.conf /etc/nginx/sites-available/default.conf
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf

# Override default nginx welcome page
COPY web /var/www/web

# Copy Scripts
COPY start.sh /start.sh
RUN chmod 755 /start.sh

EXPOSE 80

CMD ["/start.sh"]
