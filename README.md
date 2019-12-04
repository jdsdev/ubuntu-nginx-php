# NGINX with PHP-FPM on Ubuntu

[![Docker Hub; binaryorigami/ubuntu-nginx-php](https://img.shields.io/badge/docker%20hub-binaryorigami%2Fubuntu--nginx--php-blue.svg?&logo=docker&style=for-the-badge)](https://hub.docker.com/r/binaryorigami/ubuntu-nginx-php) [![License MIT](https://img.shields.io/badge/license-MIT-blue.svg?&style=for-the-badge)](https://github.com/jdsdev/ubuntu-nginx-php/blob/master/LICENSE.md)

## Introduction

This is a Dockerfile to build an Ubuntu based container for NGINX and PHP-FPM. The container includes Composer and some settings optimization for Craft CMS. The default site contains the [Craft Server Check](https://github.com/craftcms/server-check).

| Docker Tag | NGINX Version | PHP Version | Composer Version |
|------------|---------------|-------------|------------------|
| latest     | 1.17.6        | 7.2.25      | 1.9.1            |
| 0.4.7      | 1.17.6        | 7.2.25      | 1.9.1            |
| 0.4.6      | 1.17.5        | ?.?.?       | 1.9.0            |
| 0.4.5      | 1.17.5        | 7.2.23      | 1.9.0            |
| 0.4.4      | 1.17.4        | 7.2.23      | 1.9.0            |
| 0.4.3      | 1.17.3        | 7.2.22      | 1.9.0            |
| 0.4.2      | 1.17.3        | 7.2         | 1.9.0            |
| 0.4.1      | 1.17.2        | 7.2         | 1.9.0            |
| 0.4.0      | 1.17.1        | 7.2         | 1.8.6            |
| 0.3.0      | 1.15.12       | 7.2         | 1.8.5            |
| 0.2.2      | 1.15.8        | 7.2         | 1.8.4            |

## Getting Started

Run the container with:

```
docker run -p 80:80 -it binaryorigami/ubuntu-nginx-php
```

Default web root found at:

```
/usr/share/nginx/html
```
