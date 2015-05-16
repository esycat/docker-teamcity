#!/bin/sh

REPO="esycat/teamcity-base"
TAG=${1:-"9.0"}

docker build -t $REPO:$TAG $(dirname $0) || exit $?
echo $REPO:$TAG image is ready.

