FROM maven:3.5.3-jdk-8-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
	apk add --no-cache python3 && \
    pip3 install --upgrade pip setuptools httpie && \
    rm -r /root/.cache
