sudo docker run -d --rm \
--name java8_Bot \
-v /home/ironwolf/java/TrainAlert.jar:/tmp/TrainAlert.jar \
openjdk:8-jre \
/bin/bash -c \
"cd /tmp; java -jar TrainAlert.jar"
