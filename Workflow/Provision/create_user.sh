#!/bin/bash
# reelyActive-Create reelyactive user

echo "Creating reelyactive user"
sudo adduser reelyactive --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "reelyactive:owl-in-one" | sudo chpasswd