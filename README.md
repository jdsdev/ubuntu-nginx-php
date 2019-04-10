# NGINX with PHP-FPM on Ubuntu

[![Docker Hub; binaryorigami/ubuntu-nginx-php](https://img.shields.io/badge/docker%20hub-binaryorigami%2Fubuntu--nginx--php-blue.svg?&logo=docker&style=for-the-badge)](https://hub.docker.com/r/binaryorigami/ubuntu-nginx-php) [![License MIT](https://img.shields.io/badge/license-MIT-blue.svg?&style=for-the-badge)](https://github.com/jdsdev/ubuntu-nginx-php/blob/master/LICENSE.md)

## Introduction

This is a Dockerfile to build an Ubuntu based container for NGINX and PHP-FPM. The default NGINX configuration is designed for use behind a load balancer.

The container includes Composer and some settings optimization for Craft CMS. The default site contains the [Craft Server Check](https://github.com/craftcms/server-check).

## Getting Started

Run the container with:

```
docker run -d jdsdev/ubuntu-nginx-php
```

Default web root found at:

```
/var/www/web
```
