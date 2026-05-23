#!/bin/bash
cd /docker/ControlCenter
git config --global --add safe.directory /docker/ControlCenter
git fetch --all
git reset --hard origin/main
#docker compose up -d --build --force-recreate
nohup sh -c 'sleep 3 && docker compose up -d --build --force-recreate' > /dev/null 2>&1 &
#(sleep 3 && docker compose up -d --build) &