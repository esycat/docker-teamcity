#!/bin/sh

echo "TeamCity Server URL:" $TEAMCITY_SERVER_URL
echo "TeamCity Agent name:" $TEAMCITY_AGENT_NAME

sed -r \
    -e "s|^serverUrl=(.*)|serverUrl=${TEAMCITY_SERVER_URL}|" \
    -e "s|^name=(.*)|name=${TEAMCITY_AGENT_NAME}|" \
    < conf/buildAgent.dist.properties \
    > conf/buildAgent.properties

bin/agent.sh $@
