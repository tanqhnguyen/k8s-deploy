# Latest upstream version: https://github.com/dtzar/helm-kubectl/blob/master/Dockerfile
FROM dtzar/helm-kubectl:3.4.1

RUN apk --update upgrade \
    && apk add --update ruby ruby-bundler ruby-dev ruby-bigdecimal ca-certificates gcc build-base \
    && rm -rf /var/cache/apk/* \
    && gem install krane --no-document