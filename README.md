# Docker-conf
Personnal docker configuration.  
Some docker compose are based on existing repository.


### FreshRSS [![][freshrss badge d]][freshrss docker] [![][freshrss badge g]][freshrss github] 
The repo is configured with sqlite.  
I've configured mine with mysql.  
__Reminder :__ this container use a custom cron job to update RSS feeds, in ``etc/cont-init.d/40-install``  
``*/15 * * * * /usr/bin/php7 /config/www/freshrss/app/actualize_script.php > /tmp/FreshRSS.log 2>&1``

### NextCloud [![][nextcloud badge d]][nextcloud docker] [![][nextcloud badge g]][nextcloud github] 
No change.

### HAProxy [![][haproxy badge g]][haproxy github] 
No change.  

### Grafana Stack [![][dockprom badge g]][dockprom github] 
No change.

Compatible Grafana.com Dashboard :  

| Id   | Name                                     | Author          |
|------|------------------------------------------|-----------------|
| 179  | Docker and Host Monitoring w/ Prometheus | Brian Christner |
| 193  | Docker monitoring                        | philicious      |
| 6287 | Host Overview                            | ichasco         |
| 1860 | Node Exporter Full                       | idealista       |
| 405  | Node Exporter Server Metrics             | Knut Ytterhaug  |
| 893  | Docker and system monitoring             | Thibaut Mottet  |


[freshrss badge d]: https://badgen.net/badge//FreshRSS?icon=docker
[freshrss badge g]: https://badgen.net/badge//FreshRSS/green?icon=github
[freshrss docker]: https://hub.docker.com/r/linuxserver/freshrss/
[freshrss github]: https://github.com/linuxserver/docker-freshrss

[nextcloud badge d]: https://badgen.net/badge//NextCloud?icon=docker
[nextcloud badge g]: https://badgen.net/badge//NextCloud/green?icon=github
[nextcloud docker]: https://hub.docker.com/r/indiehosters/nextcloud/
[nextcloud github]: https://github.com/libresh/compose-nextcloud

[haproxy badge g]: https://badgen.net/badge//HAProxy/green?icon=github
[haproxy github]: https://github.com/libresh/compose-haproxy

[dockprom badge g]: https://badgen.net/badge//DockProm/green?icon=github
[dockprom github]: https://github.com/stefanprodan/dockprom


## Notes
``` bash
# Delete every Docker containers
# Must be run first because images are attached to containers
docker rm -f $(docker ps -a -q)

# Delete every Docker image
docker rmi -f $(docker images -q)

# Show logs with Docker Compose
# --follow is like tail -f
# container id/name can be added at the end of the command
docker-compose logs --follow
```
