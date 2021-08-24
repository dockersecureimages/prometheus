FROM alpine:3.14.1
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="support@secureimages.dev"

ARG PROMETHEUS_VERSION=2.29.1

RUN adduser -s /bin/false -D -H prometheus &&\
    mkdir -p /etc/prometheus /var/lib/prometheus &&\
    wget -P /tmp/ https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz &&\
    tar -xvzf /tmp/prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz --strip-components=1 -C /tmp &&\
    cp /tmp/promtool /usr/local/bin/ &&\
    cp /tmp/prometheus /usr/local/bin/ &&\
    cp -R /tmp/console_libraries/ /etc/prometheus/ &&\
    cp -R /tmp/consoles/ /etc/prometheus/ &&\
    chown prometheus:prometheus /usr/local/bin/prometheus /usr/local/bin/promtool /var/lib/prometheus &&\
    rm -rf /var/cache/apk/* /tmp/*

ADD data/ /

RUN chmod 755 /entrypoint.sh &&\
    chown -R prometheus:prometheus /etc/prometheus

VOLUME /var/lib/prometheus

#USER prometheus

EXPOSE 9090

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/local/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/var/lib/prometheus/", "--storage.tsdb.retention.time=7d"]
