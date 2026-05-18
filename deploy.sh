#!/bin/bash
cd /docker/ControlCenter
git config --global --add safe.directory /docker/ControlCenter
git fetch --all
git reset --hard origin/main
docker compose up -d --build --force-recreate