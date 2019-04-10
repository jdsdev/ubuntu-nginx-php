#!/bin/bash

# Update nginx to match worker_processes to # of cpu's
procs=$(cat /proc/cpuinfo |grep processor | wc -l)
sed -i -e "s/worker_processes  1/worker_processes $procs/" /etc/nginx/nginx.conf

# Always chown webroot for better mounting
chown -Rf www-data:www-data /var/www

# Start supervisord and services
/usr/local/bin/supervisord -n -c /etc/supervisord.conf
