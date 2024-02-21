FROM ubuntu:22.04
RUN apt update && yes | apt install openjdk-17-jdk curl && mkdir /server && cd /server && curl -LO https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar && echo "eula=true" > eula.txt
CMD cd /server && java -Xmx1024M -Xms1024M -jar server.jar nogui
EXPOSE 25565