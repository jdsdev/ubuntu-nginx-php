# Changelog

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
