# NGINX with PHP-FPM on Ubuntu

[![Docker Hub; binaryorigami/ubuntu-nginx-php](https://img.shields.io/badge/docker%20hub-binaryorigami%2Fubuntu--nginx--php-blue.svg?&logo=docker&style=for-the-badge)](https://hub.docker.com/r/binaryorigami/ubuntu-nginx-php) [![License MIT](https://img.shields.io/badge/license-MIT-blue.svg?&style=for-the-badge)](https://github.com/jdsdev/ubuntu-nginx-php/blob/master/LICENSE.md)

## Introduction

This is a Dockerfile to build an Ubuntu based container for NGINX and PHP-FPM. The container includes Composer and some settings optimization for Craft CMS and Craft Commerce. The default site contains [Craft Server Check](https://github.com/craftcms/server-check).

| Docker Tag | NGINX Version | PHP Version | Composer Version |
|------------|---------------|-------------|------------------|
| latest     | 1.21.1        | 7.4.21      | 2.1.3            |
| 1.2.2      | 1.21.1        | 7.4.21      | 2.1.3            |
| 1.2.1      | 1.21.0        | 7.4.20      | 2.1.2            |
| 1.2.0      | 1.19.10       | 7.4.18      | 2.0.13           |
| 1.1.2      | 1.19.10       | 7.4.16      | 2.0.13           |
| 1.1.1      | 1.19.10       | 7.4.16      | 2.0.13           |

#### Final Version with PHP 7.2

| Docker Tag | NGINX Version | PHP Version | Composer Version |
|------------|---------------|-------------|------------------|
| 0.6.1      | 1.19.5        | 7.2.34      | 2.0.7            |

## Getting Started

Build the container:

```
docker build -t binaryorigami/ubuntu-nginx-php .
```

Run the container:

```
docker run -p 80:80 -it binaryorigami/ubuntu-nginx-php
```

Default web root found at:

```
/usr/share/nginx/html
```

Default logs found at:

```
/var/log
```
