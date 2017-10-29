FROM openjdk:8-alpine

RUN mkdir /server
WORKDIR /server

RUN apk add --no-cache openssl git

RUN wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastStableBuild/artifact/target/BuildTools.jar

RUN exec $(git config --global --unset core.autocrlf)

RUN java -jar BuildTools.jar
