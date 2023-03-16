#!/bin/bash
# reelyActive-Install Kibana and enable as systemctl service

echo "Installing Kibana and enabling as systemctl service"
sudo apt-get update && sudo apt-get install kibana
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service