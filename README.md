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




[freshrss badge d]: https://badgen.net/badge//FreshRSS?icon=docker
[freshrss badge g]: https://badgen.net/badge//FreshRSS/green?icon=github
[freshrss docker]: https://hub.docker.com/r/linuxserver/freshrss/
[freshrss github]: https://github.com/linuxserver/docker-freshrss

[nextcloud badge d]: https://badgen.net/badge//NextCloud?icon=docker
[nextcloud badge g]: https://badgen.net/badge//NextCloud/green?icon=github
[nextcloud docker]: https://hub.docker.com/r/indiehosters/nextcloud/
[nextcloud github]: https://github.com/indiehosters/nextcloud

[haproxy badge g]: https://badgen.net/badge//HAProxy/green?icon=github
[haproxy github]: https://github.com/indiehosters/haproxy
