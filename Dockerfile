################################################
#
#
#
#
#
################################################

FROM        ehudkaldor/alpine-s6:latest
MAINTAINER  Ehud Kaldor <ehud@UnfairFunction.org>

RUN         apk add --update \
            snapcast && \
            rm -rf /var/cache/apk/*

# Server socket.
EXPOSE      1704 1705

# directory for stream file(s)
run         mkdir /tmp/streams/

# Add the configuration file.
ADD         rootfs /
