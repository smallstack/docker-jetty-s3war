FROM jetty

ENV WORKING_DIRECTORY /opt/work
COPY scripts $WORKING_DIRECTORY

RUN bash $WORKING_DIRECTORY/download.sh

EXPOSE 8080
WORKDIR $JETTY_HOME
CMD ["java", "-jar", "start.jar", "jetty.home=$JETTY_HOME"]
