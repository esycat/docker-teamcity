#!/bin/sh

CONFIG_DIR="../conf"

if [ ! -f "${CONFIG_DIR}/buildAgent.properties" ] ; then
    echo "The configuration file does not exist. Copying from default configuration…"
    echo "TeamCity Server URL:" $TEAMCITY_SERVER_URL
    echo "TeamCity Agent name:" ${TEAMCITY_AGENT_NAME:=$(hostname)}

    sed -r \
        -e "s|^serverUrl=(.*)|serverUrl=${TEAMCITY_SERVER_URL}|" \
        -e "s|^name=(.*)|name=${TEAMCITY_AGENT_NAME}|" \
        < ${CONFIG_DIR}/buildAgent.dist.properties \
        > ${CONFIG_DIR}/buildAgent.properties
fi

# bin/agent.sh $@
