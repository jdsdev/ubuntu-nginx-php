# Changelog

# 3.0.1 - 2022-12-9

- Update PHP to 8.1.13
- Update Nginx to 1.23.2
- Update Composer to 2.4.4

# 3.0.0 - 2022-10-13

> **BREAKING CHANGES**
> - Run superviser as www-data
> - Change nginx port to 8080

- Run supervisor with exec
- Update docs and cleanup code
- Update PHP to 8.1.11
- Update Composer to 2.4.2
- Fix PHP nginx cache settings
- Add more fine grained cache control for other file types

## 2.1.0 - 2022-10-3

> **NOTE:** 3.0.0 fixes several bugs in this release.

- Run supervisor as www-data
- Update PHP to 8.1.11
- Update Composer to 2.4.2
- Fix PHP nginx cache settings
- Add more fine grained cache control for other file types

# 2.0.3 - 2022-8-22

- Update PHP to 8.1.9
- Update Nginx to 1.23.1
- Update Composer to 2.4.1

# 2.0.2 - 2022-7-11

- Update PHP to 8.1.8
- Update Composer to 2.3.9

# 2.0.1 - 2022-6-23

- Update PHP to 8.1.7
- Update Nginx to 1.23.0
- Update Composer to 2.3.7

# 2.0.0 - 2022-5-25

- Update PHP to 8.1.6
- Add bcmath extension
- Update server check to check requirements for Craft 4
- Move PHP configuration changes back into Dockerfile to simplify future updates

# 1.2.11 - 2022-5-4

- Update PHP to 7.4.29
- Update Composer to 2.3.5

# 1.2.10 - 2022-2-24

- Update PHP to 7.4.28
- Update Nginx to 1.21.6
- Update Composer to 2.2.6

# 1.2.9 - 2022-1-10

- Update PHP to 7.4.27
- Update Nginx to 1.21.5
- Update Composer to 2.2.4
  - `allow-plugins` in now required: https://getcomposer.org/doc/06-config.md#allow-plugins

# 1.2.8 - 2021-11-29

- Update PHP to 7.4.26
- Update Composer to 2.1.12

# 1.2.7 - 2021-11-4

- Update Nginx to 1.21.4
- Update Composer to 2.1.11

# 1.2.6 - 2021-10-25

- Update PHP to 7.4.25
- Prevent pip from generating a local cache

# 1.2.5 - 2021-10-07

- Update PHP to 7.4.24
- Update Composer to 2.1.9

# 1.2.4 - 2021-9-20

- Update Nginx to 1.21.3
- Update Composer to 2.1.8

# 1.2.3 - 2021-8-19

- Update PHP to 7.4.23
- Update Composer to 2.1.6

# 1.2.2 - 2021-7-16

- Update PHP to 7.4.21
- Update Nginx to 1.21.1
- Update Composer to 2.1.3

# 1.2.1 - 2021-6-8

- Update PHP to 7.4.20
- Update Nginx to 1.21.0
- Update Composer to 2.1.2

# 1.2.0 - 2021-5-4

- Update PHP to 7.4.18
- Restore PHP minor version pinning _again_
  - Docker and Docker Hub don't always update PHP version if it is not explicitly declared

# 1.1.2 - 2021-4-30

- Fix Redis and Imagick installation error introduced in 1.0.4 as a result of changed package names
  - Replace php-redis with php7.4-redis
  - Replace php-imagick with php7.4-imagick
- Update server check to check specifically whether GD or Imagick is installed
- Update server check to check whether Redis is installed

# 1.1.1 - 2021-4-27

- Update Nginx to 1.19.10
- Update Composer to 2.0.13

# 1.1.0 - 2021-3-5

- Update PHP to 7.4.16
- Remove PHP minor version pinning again
  - Previous minor versions haven't been stored for a while breaking old builds
  - Updates will still be tracked here and new images will be built for new PHP releases

# 1.0.5 - 2021-2-24

- Update Composer to 2.0.11

# 1.0.4 - 2021-2-23

- Update PHP to 7.4.15-7
- Update Nginx to 1.19.7
- Update Composer to 2.0.10

# 1.0.3 - 2021-1-28

- Update PHP to 7.4.14
- Update Composer to 2.0.9

# 1.0.2 - 2021-1-12

- Minor documentation updates
- Update Craft server check
- Update PHP configuration based on default PHP 7.4 configuration

# 1.0.1 - 2020-12-17

- Fix PHP config files to reflect PHP update..
- Update Nginx to 1.19.6

# 1.0.0 - 2020-12-09

- Update PHP to 7.4.13
- Update Composer to 2.0.8

# 0.6.1 - 2020-10-28

- Update PHP to 7.2.34-8
- Update Nginx to 1.19.5
- Update Composer to 2.0.7

## 0.6.0 - 2020-10-28

- Update PHP to 7.2.34-4
- Update Nginx to 1.19.4
- Update Composer to 2.0.2
- Remove hirak/prestissimo as Composer 2.x supports parallel downloads by default

## 0.5.6 - 2020-10-01

- Update PHP to 7.2.34
- Update Nginx to 1.19.3
- Update Composer to 1.10.13

## 0.5.5 - 2020-08-14

- Update PHP to 7.2.33
- Update Nginx to 1.19.2
- Update Composer to 1.10.10

## 0.5.4 - 2020-07-10

- Update PHP to 7.2.32

## 0.5.3 - 2020-07-09

- Update Nginx to 1.19.1
- Update Composer to 1.10.8

## 0.5.2 - 2020-06-03

- Update PHP to 7.2.31
- Update Nginx to 1.19.0
- Update Composer to 1.10.7

## 0.5.1 - 2020-04-19

- Update PHP to 7.2.30

## 0.5.0 - 2020-04-14

- Update Nginx to 1.17.10
- Update Composer to 1.10.5
- Add php7.2-soap for Craft Commerce
- Add PHP SOAP to server check and display Nginx version
- Only show last four docker tags in README

## 0.4.12 - 2020-03-24

- Update PHP to 7.2.29
- Update Composer to 1.10.1

## 0.4.11 - 2020-03-11

- Update Nginx to 1.17.9
- Update Composer to 1.10.0

## 0.4.10 - 2020-02-20

- Update PHP to 7.2.28
- Update Composer to 1.9.3

## 0.4.9 - 2020-01-23

- Update PHP to 7.2.27
- Update Nginx to 1.17.8

## 0.4.8 - 2020-01-02

- Update PHP to 7.2.26
- Update Nginx to 1.17.7

## 0.4.7 - 2019-12-04

- Update PHP to 7.2.25
- Update Nginx to 1.17.6
- Update Composer to 1.9.1
- Restore PHP version pinning as Docker Hub doesn't always update PHP on a fresh build without explicit declaration of minor versions

## 0.4.6 - 2019-10-24

- Update PHP to 7.2.24

## 0.4.5 - 2019-10-23

- Update Nginx to 1.17.5
- Stop pinning PHP version as it often differs between packages

## 0.4.4 - 2019-10-07

- Update PHP to 7.2.23
- Update Nginx to 1.17.4
- Optimize OPcache settings
- Print some Docker RUN commands with `set -x`

## 0.4.3 - 2019-09-13

- Pin PHP version to 7.2.22

## 0.4.2 - 2019-08-16

- Update Nginx to 1.17.3

## 0.4.1 - 2019-08-09

- Update Nginx to 1.17.2
- Update Composer to 1.9.0
- Increase PHP `max_execution_time` and `max_input_time`

## 0.4.0 - 2019-06-25

- Update Nginx to 1.17.1
- Update Composer to 1.8.6

## 0.3.1 - 2019-05-23

- Add iproute2 package to help with development

## 0.3.0 - 2019-05-01

- Revert from Nginx PPA to official Ubuntu package
- Pin Nginx version to 1.15.12
- Update code and directory structure to work with new version of Nginx
  - Home directory changed from /var/www to /usr/share/nginx/html
- Update Composer to 1.8.5
- Move config files into conf directory
- Store php config in files rather than modifying with sed in Dockerfile
- Change public directory from web to html

## 0.2.2 - 2019-04-29

- Pin Composer version to 1.8.4

## 0.2.1 - 2019-04-25

- Install hirak/prestissimo to speed up composer installs

## 0.2.0 - 2019-04-14

- Initial Release
