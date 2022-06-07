#!/usr/bin/with-contenv bashio

for stream in $(bashio::config 'streams|keys')
do
 stream_name=$(bashio::config "streams[${stream}].name")
 stream_url=$(bashio::config "streams[${stream}].stream_url")
 mountpoint=$(bashio::config "streams[${stream}].mountpoint")

 mkdir -p /etc/services.d/ffmpeg_${mountpoint}
 bashio::var.json \
   STREAM_NAME "$stream_name" \
   STREAM_URL "$stream_url"   \
   MOUNTPOINT "$mountpoint" | tempio \
                            -template /usr/share/tempio/ffmpeg.gtpl \
                            -out /etc/services.d/ffmpeg_${mountpoint}/run
 chmod +x /etc/services.d/ffmpeg_${mountpoint}/run
done