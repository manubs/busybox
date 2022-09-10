#Install Busy box and Alpine base image 
FROM alpine:3
#Set the Maintainer
MAINTAINER Manoj Bangari
#Set of Run Instructions 
RUN apk update && \
    apk add tar && \
    apk add bind-tools && \
    apk search htop && \
    apk add htop && \
    apk search traceroute && \
    apk add traceroute && \
    apk search netcat-openbsd && \
    apk add netcat-openbsd && \
    apk add curl && \
    curl -sSL "https://github.com/fullstorydev/grpcurl/releases/download/v1.8.7/grpcurl_1.8.7_linux_x86_64.tar.gz" | tar -xz -C /usr/bin && \
    apk add wget && \
    apk add busybox && \
    apk add --update coreutils && rm -rf /var/cache/apk/*   && \ 
    apk add --update openjdk11 tzdata curl unzip bash && \
    apk add --no-cache nss 
#Command Instruction    
CMD ["sh", "-c", "tail -f /dev/null"]
