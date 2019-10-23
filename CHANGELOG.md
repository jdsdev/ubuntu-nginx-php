# Changelog

## 0.4.5 - 2019-10-23

- Update Nginx to 1.17.5
- Stop pinning PHP version as it often differs between packages

## 0.4.4 - 2019-10-07

- Update PHP to 7.2.23
- Update Nginx to 1.17.4
- Optimize opcache settings
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
