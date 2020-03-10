#!/bin/bash

# exec echo "[DEBUG]GIT_PATH="${GIT_PATH}

# exec mkdir /root/.ssh/
# exec cp -r /tmp/id_rsa /root/.ssh/id_rsa
# exec ls -l /root/.ssh
# exec chmod 600 /root/.ssh/id_rsa

# if [ -n "$GIT_PATH" ]; then
#     # Create known_hosts
#     exec touch /root/.ssh/known_hosts
#     exec chmod 777 /root/.ssh/known_hosts
#     #Add bitbuckets key
#     exec ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts
#     # Clone the conf files into the docker container
#     exec echo "[DEBUG]ls -l /website befor git clone"
#     exec ls -l /website
#     exec git clone ${GIT_PATH} /website
#     exec echo "[DEBUG]ls -l /website after git clone"
#     exec ls -l /website
#     # ADD ./www  /website
#     # VOLUME "/demo" "/Users/winny/Downloads/demo"
#     # echo "[DEBUG]npm install"
#     exec npm install
# fi

# if [ -z "$DATABASE_ALREADY_EXISTS" ]; then
#     cp -r /tmp/resources /website
#     exec npm install
# fi

# exec cp -r /tmp/resources /website
# exec npm install
exec npm run start
