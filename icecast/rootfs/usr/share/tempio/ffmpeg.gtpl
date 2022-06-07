#!/usr/bin/with-contenv bashio

bashio::net.wait_for 8000
ffmpeg -hide_banner -loglevel error -nostats -re -i {{ .STREAM_URL }} -c:a libmp3lame -b:a 128k  -ice_name "{{ .STREAM_NAME }}" -ice_description {{ .STREAM_URL }}  -content_type audio/mpeg -f mp3 icecast://source:password@localhost:8000/{{ .MOUNTPOINT }}
