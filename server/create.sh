#!/bin/sh

REPO="esycat/teamcity-server"
TAG="latest"

NAME="teamcity"
PORTS="80:8080"
VOLUMES=""

docker create --name $NAME -p $PORTS $REPO:$TAG || exit $?

echo $NAME container is ready.
echo To start: docker start $NAME

