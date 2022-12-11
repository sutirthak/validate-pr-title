# Base image
FROM alpine:latest

# installes required packages for our script
RUN	apk add --no-cache \
  bash \
  ca-certificates \
  curl \
  jq \

COPY . /
WORKDIR /
RUN ls

# Copies your code file  repository to the filesystem
COPY entrypointb.sh /entrypointa.sh

# change permission to execute the script and
RUN chmod +x /entrypoints.sh

# file to execute when the docker container starts up
ENTRYPOINT ["/entrypointc.sh"]