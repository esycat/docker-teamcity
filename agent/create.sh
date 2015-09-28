#!/bin/sh

REPO="esycat/teamcity-agent"
TAG="latest"

NAME="teamcity-agent"
PORTS="9090:9090"
VOLUMES=""
ENV="TEMCITY_SERVER_URL=https://teamcity.redlounge.io/"

docker create --name $NAME -p $PORTS -e $ENV $REPO:$TAG --restart=always || exit $?

echo $NAME container is ready.
echo To start: docker start $NAME
