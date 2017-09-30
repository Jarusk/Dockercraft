FROM openjdk:8

RUN mkdir /server
WORKDIR /server


RUN wget https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar

RUN echo "eula=true" > eula.txt

CMD ["java","-Xmx1024M","-Xms1024M","-jar","minecraft_server.1.12.2.jar","nogui"]
