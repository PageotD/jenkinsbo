# Use the latest BlueOcean image
FROM jenkinsci/blueocean:latest

# As root
USER root

# Install packages
RUN apk add --no-cache --update \
    python3 \
    python3-dev \
    py3-pip \
    build-base \
    && pip install virtualenv \
    && rm -rf /var/cache/apk/*

USER jenkins