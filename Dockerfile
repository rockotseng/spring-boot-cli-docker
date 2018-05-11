FROM openjdk:8-jdk-alpine

RUN apk add --no-cache bash curl zip unzip sed

RUN curl -s "https://get.sdkman.io" | bash

RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install springboot"

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]