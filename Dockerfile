FROM node:latest

# Update linux and install sudo
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install sudo -y

ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN sudo chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

WORKDIR /app

CMD ["yarn", "dev"]