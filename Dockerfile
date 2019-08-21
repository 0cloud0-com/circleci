ARG BASE_IMAGE=anishnath/tomcat
ARG ALPINE_VERSION=9
FROM ${BASE_IMAGE}:${ALPINE_VERSION}
LABEL org.label-schema.schema-version="1.0.0-demo" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="0cloud.com" \
    org.label-schema.docker.cmd="docker run -d -p 8082:8080 " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"


ENV TOMCAT_MAJOR=9 \
    TOMCAT_VERSION=9.0.22 \
    TOMCAT_HOME=/opt/tomcat \
    CATALINA_HOME=/opt/tomcat \
    CATALINA_OUT=/dev/null

RUN apk add --update  && \
    mkdir -p /opt/zerocloud/ && \
    rm -rf ${TOMCAT_HOME}/webapps/* && \
    apk del curl && \
    rm -rf /tmp/* /var/cache/apk/*

COPY ROOT.war ${TOMCAT_HOME}/webapps/




CMD ["/opt/tomcat/bin/catalina.sh", "run"]
EXPOSE 8080