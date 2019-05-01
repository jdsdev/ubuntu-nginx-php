# Changelog

## 0.3.0 - 2019-05-01

- Revert from Nginx PPA to official Ubuntu package
- Pin Nginx version to 1.15.12
- Update code and directory structure to work with new version of Nginx
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
