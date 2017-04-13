FROM jetty:9.2

ENV WORKING_DIRECTORY /opt/work
COPY scripts $WORKING_DIRECTORY

EXPOSE 8080
WORKDIR $JETTY_HOME

ENTRYPOINT bash $WORKING_DIRECTORY/download.sh
