#!/bin/bash
# reelyActive-Install hlc-server and run with systemctl

echo "Installing hlc-server and running with systemctl"
sudo mkdir /opt/reelyActive
sudo chown reelyactive /opt/reelyActive
sudo chgrp reelyactive /opt/reelyActive
cd /opt/reelyActive
sudo -u reelyactive git clone https://github.com/reelyactive/hlc-server.git
cd hlc-server
sudo -H -u reelyactive npm install
sudo cat > /lib/systemd/system/hlc.service << EOF
[Unit]
Description=reelyActive Hyperlocal Context Server
After=network.target

[Service]
WorkingDirectory=/opt/reelyActive/hlc-server
ExecStart=/usr/local/bin/npm start
Restart=on-failure
User=reelyactive

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl enable hlc.service
sudo systemctl start hlc.service