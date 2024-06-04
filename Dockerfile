FROM itzg/minecraft-server

WORKDIR /app

# COPY whitelist.json /data

COPY build-info.sh /opt

ENV EULA=TRUE
ENV VERSION=1.20.4
ENV TYPE=FORGE
ENV ENABLE_WHITELIST=FALSE
ENV ONLINE_MODE=FALSE


# RUN apt-get install jq && /opt/build-info.sh

EXPOSE 25565

CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar"]


# FROM openjdk:latest
# WORKDIR /data
# RUN echo "eula=true" > eula.txt
# CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar"]