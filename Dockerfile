FROM openjdk:24-slim-bullseye

WORKDIR /minecraft

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 25565 25575

CMD [ "java", "-Xmx4096M", "-Xms1024M", "-jar", "./server.jar", "--nogui", "--universe", "./data"]
