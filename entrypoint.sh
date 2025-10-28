#!/bin/sh

set -e

sed -i "s/HOSTNAME/$HOSTNAME/g" /usr/share/nginx/html/index.html

exec "$@"