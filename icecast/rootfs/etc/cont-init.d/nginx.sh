#!/usr/bin/with-contenv bashio

sed -i 's/80 default_server/8099 default_server/' /etc/nginx/sites-enabled/default
chmod +x /etc/services.d/nginx/run
