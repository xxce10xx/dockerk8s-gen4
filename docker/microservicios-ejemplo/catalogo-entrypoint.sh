#!/bin/sh
while ! nc -z eureka-server 8761; do
   echo "esperando al servidor eureka"
   sleep 3
done
while ! nc -z mongodb 27017; do
   echo "esperando al servidor mongo"
   sleep 3
done
echo "lanzando el jar"
java -jar /opt/lib/productos.jar 
