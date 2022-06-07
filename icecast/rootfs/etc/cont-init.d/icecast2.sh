#!/usr/bin/with-contenv bashio

mkdir -p /etc/services.d/icecast2

echo '#!/usr/bin/execlineb -P' > /etc/services.d/icecast2/run
echo "s6-setuidgid icecast2" >> /etc/services.d/icecast2/run
echo "icecast2 -c /etc/icecast2/icecast.xml" >> /etc/services.d/icecast2/run

chmod +x /etc/services.d/icecast2/run
