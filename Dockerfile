FROM ubuntu:latest
MAINTAINER "srikantha.muvva@gmail.com"
 
RUN apt-get update && apt-get upgrade -y
# Install golang 
RUN apt-get install golang-go -y

# Add webserver binary
ADD webserv /tmp/ 
 
# Expose port 8080
EXPOSE 8080
 
#
ENTRYPOINT /tmp/webserv
