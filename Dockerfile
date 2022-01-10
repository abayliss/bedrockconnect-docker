FROM openjdk:11

ENV BEDROCKCONNECT_HOME=/opt/bedrockconnect

VOLUME $BEDROCKCONNECT_HOME

ADD https://github.com/Pugmatt/BedrockConnect/releases/latest/download/BedrockConnect-1.0-SNAPSHOT.jar /

EXPOSE 19132/udp

WORKDIR $BEDROCKCONNECT_HOME

CMD ["java", "-jar", "/BedrockConnect-1.0-SNAPSHOT.jar", "nodb=true", "custom_servers=servers.json", "featured_servers=false"]
