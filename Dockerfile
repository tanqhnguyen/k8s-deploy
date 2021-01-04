# Latest upstream version: https://github.com/dtzar/helm-kubectl/blob/master/Dockerfile
FROM dtzar/helm-kubectl:3.4.1

ENV KRANE_VERSION=2.1.3

RUN apk --update upgrade \
    && apk add --update ruby ruby-bundler ruby-dev ruby-bigdecimal ca-certificates gcc build-base \
    && rm -rf /var/cache/apk/* \
    && gem install krane -v $KRANE_VERSION --no-document