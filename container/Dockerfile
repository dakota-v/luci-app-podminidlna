FROM alpine

MAINTAINER lisaac <lisaac.cn@gmail.com>

ENV TZ=Asia/Shanghai

COPY init.sh /

RUN apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add tzdata minidlna tini && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    mkdir -p /etc/minidlna && cp /etc/minidlna.conf /etc/minidlna/minidlna.conf && \
    chmod +x /init.sh

EXPOSE 137/udp 138/udp 139 445

VOLUME ["/etc/minidlna"]

CMD [ "/sbin/tini", "--", "/init.sh" ]