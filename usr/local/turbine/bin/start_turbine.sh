#! /bin/bash

echo "Checking for config.properties at /opt/turbine"
if [ -f /opt/turbine/config.properties ]; then
	echo "config.properties found!"
	cp /opt/turbine/config.properties /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/config.properties
else
	echo "config.properties not found!"
	exit 1;
fi
/usr/local/tomcat/bin/catalina.sh run

