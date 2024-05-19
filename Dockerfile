FROM itzg/minecraft-server

WORKDIR /app

# COPY whitelist.json /data

COPY build-info.sh /opt

RUN apt-get install jq && /opt/build-info.sh

EXPOSE 25565

CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar"]


# FROM openjdk:latest
# WORKDIR /data
# RUN echo "eula=true" > eula.txt
# CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar"]