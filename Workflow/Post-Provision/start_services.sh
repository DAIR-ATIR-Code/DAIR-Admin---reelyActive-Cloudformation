#!/bin/bash
# reelyActive-Start Elasticsearch and Kibana

echo "Starting Elasticsearch and Kibana"
sudo systemctl start elasticsearch.service
sudo systemctl start kibana.service 
sleep 10
sudo systemctl status elasticsearch.service
sudo systemctl status kibana.service 
echo "Done"