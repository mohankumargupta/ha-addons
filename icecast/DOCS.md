# Home Assistant Add-on: Icecast

# Configuration Tab

In addition to starting an Icecast server on port 8000, the addon also has an ability to push input streams to the Icecast server without needing an external program like ffmpeg or butt to do so, although you can go that way too if needed.

The addon's configuration page allows you to configure this.

## Default configuration

The default configuration pushes 1 stream to the icecast server.

![default configuration][default_configuration]

Here is the result on the Icecast dashboard/status page:

![icecast status default config][icecast_default_config]

Here is the important snippet listed under **Options** heading in the addon's configuration page.

```yaml
- name: iHeartRadio Cafe
  mountpoint: iheartcafe
  stream_url: https://stream.revma.ihrhls.com/zc6951/hls.m3u8
```

### Option: name

This property is shown as **Stream Name** on the Icecast dashboard

### Option: stream_url

The input stream URL. The addon uses ffmpeg to push this input stream to the Icecast server

This property is shown as **Stream Description** on the Icecast dashboard

### Option: mountpoint

Mountpoint is the HTTP endpoint on the Icecast server that is available to your client devices(VLC player, Google Home Mini) to play the stream.

The full media URLs is in the following form:

**http://<HA_IP_ADDRESS>:8000/<MOUNTPOINT\>**

where HA_IP_ADDRESS is the LAN IP address of the Home Assistant instance

eg. if your home assistant IP address is 192.168.1.10, and the mountpoint is iheartcafe, then the media URL is: http://192.168.1.10:8000/iheartcafe

The mountpoint must be unique for each stream that you want to push to the Icecast server, and contain no spaces.

# Additional info

admin/relay/source password is password

Icecast docs [here](https://www.icecast.org/docs/icecast-trunk/)

[default_configuration]: https://raw.githubusercontent.com/mohankumargupta/icecast/master/images/default-configuration.png
[icecast_default_config]: https://raw.githubusercontent.com/mohankumargupta/icecast/master/images/icecast-default-configuration.png


