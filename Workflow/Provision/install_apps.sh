#!/bin/bash
# reelyActive-Install NodeJS and npm

echo "Installing NodeJS and npm"
cd
wget https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.xz
tar -xf node-v10.15.3-linux-x64.tar.xz
sudo mv node-v10.15.3-linux-x64 /usr/local/node
rm node-v10.15.3-linux-x64.tar.xz
cd /usr/local/bin
sudo ln -s /usr/local/node/bin/node node
sudo ln -s /usr/local/node/bin/npm npm