#!/bin/bash

MYIP=`curl $BOOTIP`

export CLASSPATH="/opt/zookeeper/build/zookeeper-3.4.7-SNAPSHOT.jar" 

echo $ID_ENV > /opt/zookeeper/myid

echo "networkaddress.cache.ttl = 0" >> $JAVA_HOME/jre/lib/security/java.security
echo "networkaddress.cache.negative.ttl = 0" >> $JAVA_HOME/jre/lib/security/java.security

curl -X PUT -H "Content-Type: application/json" -d '{"ID": "zookeeper'$ID_ENV'", "Name": "zookeeper'$ID_ENV'", "Address": "'$MYIP'"}' http://$BOOTIP:8500/v1/agent/service/register

cd /opt/zookeeper && /opt/zookeeper/bin/zkEnv.sh && /opt/zookeeper/bin/zkServer.sh start-foreground
