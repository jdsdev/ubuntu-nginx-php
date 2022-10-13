#!/bin/bash

# Update nginx to match worker_processes to # of cpu's
procs=$(cat /proc/cpuinfo |grep processor | wc -l)
sed -i -e "s/worker_processes  1/worker_processes $procs/" /etc/nginx/nginx.conf

# Start supervisord and services
exec /usr/local/bin/supervisord -n -c /etc/supervisord.conf
