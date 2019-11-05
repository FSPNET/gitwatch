FROM alpine:3.10

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN set -ex ;\
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories ;\
    apk add --update bash git inotify-tools openssh ;\
    git clone https://github.com/gitwatch/gitwatch.git ;\
    install -b gitwatch/gitwatch.sh /usr/local/bin/gitwatch ;\
    mkdir ~/.ssh ;\
    echo 'Host *' > ~/.ssh/config ;\
    echo '    StrictHostKeyChecking no' >> ~/.ssh/config ;\
    chmod 700 ~/.ssh ;\
    chmod +x /usr/local/bin/docker-entrypoint.sh ;\
    rm -rf /var/cache/apk/* ;\
    rm -rf gitwatch

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]