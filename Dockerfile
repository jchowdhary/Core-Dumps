FROM google/cloud-sdk:alpine

MAINTAINER Jayant Chaudhury "jayant.chaudhary@xyz.io"

#RUN INSTALL INOTIFYWAIT
RUN apk add --no-cache inotify-tools

# Create directory to keep secret to keep SA JSON.
RUN mkdir -p /secrets

# Download your own secret JSON in local file and update/replace the below line 
COPY projects-jayant-82544f23332b.json /secrets/

# COPY the NOTIFY SCRIPT

COPY watchnotify.sh /usr/sbin/
