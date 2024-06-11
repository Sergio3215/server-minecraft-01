# FROM itzg/minecraft-server

# WORKDIR /app

# # COPY whitelist.json /data

# COPY build-info.sh /opt

# ENV EULA=TRUE
# ENV VERSION=1.20.4
# ENV TYPE=FORGE
# ENV ENABLE_WHITELIST=FALSE
# ENV ONLINE_MODE=FALSE


# EXPOSE 25565

FROM ubuntu:20.04

RUN apt-get update
RUN apt install docker-ce -y
RUN apt install docker.io -y
RUN apt install docker-compose-plugin -y
RUN docker compose up -d

CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar"]