#!/bin/bash
# reelyActive-Start Elasticsearch and Kibana

echo "Starting Elasticsearch and Kibana"
sudo systemctl start elasticsearch.service && sudo systemctl start kibana.service && echo "DONE"