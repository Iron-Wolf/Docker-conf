# Presentation
Docker implementation of the [VODownloader project](https://github.com/Iron-Wolf/VODownloader).  

## Preconfiguration :
* Change the __IP address__ in the [init.sh](https://github.com/Iron-Wolf/Docker-conf/blob/master/vodownloader/init.sh) script 
to your own network configuration.

* Make sure to open the needed port (or configure them in 
[docker-compose.yml](https://github.com/Iron-Wolf/Docker-conf/blob/master/vodownloader/docker-compose.yml)).
> Default website port : 81  
Default websocket port : 8080 to 8082  



## Installation
Clone the repo and build image
```bash
git clone https://github.com/Iron-Wolf/Docker-conf.git
cd Docker-conf
docker build -t docker-vod .
```

Initialize the project directory and lauch the container
```bash
./init.sh
docker-compose up -d
```

## Access website
Open a web browser with the following pattern : http://[IP address]:81  
