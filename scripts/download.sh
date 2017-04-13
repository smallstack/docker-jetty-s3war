set -e
 if [[ $WAR_URL ]]; then
   echo "Downloading war file..."
    curl -L -o ROOT.war $WAR_URL
    cp ROOT.war $JETTY_HOME/webapps
    cd $JETTY_HOME
    java -jar start.jar --module=logging jetty.home=$JETTY_HOME
  else
    echo "=> Please provide a WAR_URL environment variable!"
  fi
