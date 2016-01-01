FROM esycat/java:oracle-8

MAINTAINER "Eugene Janusov" <esycat@gmail.com>

ENV TEAMCITY_VERSION 9.1.5
ENV TEAMCITY_USER teamcity
ENV TEAMCITY_SUFFIX teamcity

ENV TEAMCITY_DISTFILE TeamCity-${TEAMCITY_VERSION}.tar.gz
ENV TEAMCITY_PREFIX /opt
ENV TEAMCITY_DIR $TEAMCITY_PREFIX/$TEAMCITY_SUFFIX
ENV TEAMCITY_HOME /var/lib/$TEAMCITY_SUFFIX

# preparing home (data) directory and user+group
RUN mkdir $TEAMCITY_HOME
RUN groupadd -r $TEAMCITY_USER
RUN useradd -r -g $TEAMCITY_USER -d $TEAMCITY_HOME $TEAMCITY_USER
RUN chown -R $TEAMCITY_USER:$TEAMCITY_USER $TEAMCITY_HOME

# downloading and unpacking the distribution
WORKDIR $TEAMCITY_PREFIX
RUN wget -q https://download.jetbrains.com/teamcity/$TEAMCITY_DISTFILE && \
    tar -xf $TEAMCITY_DISTFILE && \
    rm $TEAMCITY_DISTFILE && \
    mv TeamCity $TEAMCITY_SUFFIX && \
    chown -R $TEAMCITY_USER:$TEAMCITY_USER $TEAMCITY_DIR

VOLUME ["$TEAMCITY_HOME"]
