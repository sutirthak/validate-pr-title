# Base image
FROM alpine:latest

# Copies your code file  repository to the filesystem
COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

RUN ls

# file to execute when the docker container starts up
ENTRYPOINT ["entrypoint.sh"]