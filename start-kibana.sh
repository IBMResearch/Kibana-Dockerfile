#!/bin/sh
cd /root/kibana
until git pull
do
   sleep 1
done
cd /root/kibana/dashboard

echo "Starting Kibana..."
./bin/kibana --elasticsearch.url=$URL_ELASTIC_SEARCH --elasticsearch.username=$USERNAME_ELASTIC_SEARCH --elasticsearch.password=$PASSWORD_ELASTIC_SEARCH
