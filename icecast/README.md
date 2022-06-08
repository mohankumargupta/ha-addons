# Home Assistant Add-on: Icecast

Installs the Icecast streaming server as a Home Assistant addon.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

## About

Certain radio stations and live streams won't play on a device like a Google Home Mini, especially those HLS streams with a URL ending in m3u8 .

A possible solution is to push those streams to a streaming server like Icecast that is on the local network, then the Google Home Mini can access the stream from the Icecast server.

## Features

- starts an Icecast server
- access to Icecast's dashboard/admin page through Home Assistant Sidebar menu.
- can pre-configure multiple input streams to be pushed to the Icecast server.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
