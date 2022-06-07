ARG BUILD_FROM
FROM $BUILD_FROM

RUN apt -qq -y update && \
    apt -qq -y install icecast2 ffmpeg nginx && \
    apt -y autoclean && \
    apt clean

COPY icecast.xml /etc/icecast2
RUN chown -R icecast2 /etc/icecast2
RUN mkdir -p /var/log/icecast2 && \
    chown -R icecast2 /var/log/icecast2 && \
    chown -R icecast2 /usr/share/icecast2
COPY rootfs /
RUN find /etc/cont-init.d -name "*.sh" -exec chmod a+x {} \;

EXPOSE 8000

