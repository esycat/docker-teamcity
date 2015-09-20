#!/bin/sh

REPO="esycat/teamcity-server"
TAG=${1:-"9.1"}

docker build -t $REPO:$TAG $(dirname $0) || exit $?
echo $REPO:$TAG image is ready.
