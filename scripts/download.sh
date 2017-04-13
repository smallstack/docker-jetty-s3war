set -e
if [[ $WAR_URL ]]; then
  echo "Downloading war file from $WAR_URL"
  curl -L -o ROOT.war $WAR_URL
  echo "Copying war file to JETTY_HOME/webapps ($JETTY_HOME/webapps)"
  cp ROOT.war $JETTY_HOME/webapps
  echo "echoing content of JETTY_HOME/webapps"
  cd $JETTY_HOME
  ls -la
  echo "Starting jetty with command: java -jar start.jar jetty.home=$JETTY_HOME"
  java -jar start.jar jetty.home=$JETTY_HOME
else
  echo "=> Please provide a WAR_URL environment variable!"
fi
