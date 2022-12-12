# Base image
FROM python:3-alpine

RUN	apk add --no-cache \
  bash

# Copies your code file  repository to the filesystem
COPY entrypoint.sh /entrypoint.sh
COPY verify-pr.py /verify-pr.py

# change permission to execute the script and
RUN chmod +x /entrypoint.sh
RUN chmod +x /verify-pr.py

RUN ls

# file to execute when the docker container starts up
ENTRYPOINT ["/entrypoint.sh"]

