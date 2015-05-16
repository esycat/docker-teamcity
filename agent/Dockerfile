FROM esycat/teamcity-base

MAINTAINER "Eugene Janusov" <esycat@gmail.com>

ENV TEAMCITY_PORT 9090
ENV TEAMCITY_AGENT_DIR ${TEAMCITY_DIR}-agent
ENV TEAMCITY_AGENT_MEM_OPTS -Xmx2g

RUN mkdir $TEAMCITY_AGENT_DIR
RUN unzip -d $TEAMCITY_AGENT_DIR $TEAMCITY_DIR/webapps/ROOT/update/buildAgent.zip
RUN rm -rf $TEAMCITY_DIR

WORKDIR $TEAMCITY_AGENT_DIR
COPY teamcity-agent.sh bin/
RUN chmod +x bin/*.sh
RUN chown -R $TEAMCITY_USER:$TEAMCITY_USER .

USER $TEAMCITY_USER
ENTRYPOINT ["bin/teamcity-agent.sh"]
CMD ["run"]
EXPOSE $TEAMCITY_PORT

