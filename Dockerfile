FROM google/cloud-sdk:alpine

MAINTAINER Jayant Chaudhury "jayant.chaudhary@mitel.io"

#RUN INSTALL INOTIFYWAIT
RUN apk add --no-cache inotify-tools

# Create directory to keep secret to keep SA JSON.
RUN mkdir -p /secrets
COPY projects-jayant-82544f23332b.json /secrets/

# COPY the NOTIFY SCRIPT

COPY watchnotify.sh /usr/sbin/
