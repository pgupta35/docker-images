# Build a minimal distribution container
# upstream https://github.com/gliderlabs/docker-alpine
FROM zabbix/zabbix-web-nginx-pgsql:alpine-4.4.0
MAINTAINER 若虚 <slpcat@qq.com>

# Container variables
ENV \
    TERM="xterm" \
    LANG="zh_CN.UTF-8" \ 
    LANGUAGE="zh_CN.UTF-8" \
    LC_ALL="zh_CN.UTF-8" \
    TIMEZONE="Asia/Shanghai"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories

# Set timezone and locales
RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add \
           bash \
           tzdata \
           vim \
           tini \
           su-exec \
           gzip \
           tar \
           wget \
           curl \
    && echo "${TIMEZONE}" > /etc/TZ \
    && ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
    # Network fix
    && echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf

#COPY wqy-microhei.ttf /usr/share/zabbix/fonts/
COPY wqy-microhei.ttf /usr/share/zabbix/assets/fonts/
COPY php-fpm.conf /etc/php7/
COPY 99-zabbix.ini /etc/php7/conf.d/

RUN sed -i s/DejaVuSans/wqy-microhei/g  /usr/share/zabbix/include/defines.inc.php
