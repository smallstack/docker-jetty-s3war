set -e
if [[ $WAR_URL ]]; then
  echo "Downloading war file..."Ï
  curl -L -o ROOT.war $WAR_URL
  cp ROOT.war $JETTY_HOME/webapps
  cd $JETTY_HOME
  java -Dorg.eclipse.jetty.server.Request.maxFormContentSize=512m -jar start.jar jetty.home=$JETTY_HOME
else
  echo "=> Please provide a WAR_URL environment variable!"
fi
