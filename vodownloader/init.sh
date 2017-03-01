#!/bin/bash

# clone git project
rm -rf vodownloader/
git clone https://github.com/Iron-Wolf/VODownloader.git vodownloader


# - modify entrypoint script -
# must do that because we can't act on the container volume when not running,
# so we can't do that in the dockerfile,
# and because required dependencies are not in the git repo
# (and obviously because the git project has bad architecture, with a bunch of relative path call)

# copy the dependencies from /tmp to the container volume
# & sed -i '/patern/a text after the patern' file
# & sed -i '/patern/i text before the patern' file
# & sed -i '/patern/replace string/g' file
sed -i '/bash/a cp -t /var/www/html /tmp/websocketd /tmp/youtube-dl'\
 vodownloader/startT2K.sh

# remove useless kill command, because no process run when container start
sed -i '/killall/g' vodownloader/startT2K.sh

# special trick to keep the container up
echo "tail -f /dev/null" >> vodownloader/startT2K.sh

# configure ip address (access websocket from javascript)
sed -i 's/localhost/192.168.1.18/g' vodownloader/myScript.js


# Vim ex-mode :
# & ex -sc '1d2000|x' file
#
# 1 : first line
# 2000 : select 2000 line
# d : delete
# x : save and close

