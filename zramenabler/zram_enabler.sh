#!bin/bash
echo 1. copying essential files...
sudo cp rc-local.service /etc/systemd/system/rc-local.service
sudo cp rc.local /etc/rc.local
echo 2. enable rc.local service...
sudo chmod +x /etc/systemd/system/rc-local.service
sudo chmod +x /etc/rc.local
sudo systemctl enable rc-local.service
echo 3. disable swap and enable zram...
sudo sh /etc/rc.local
echo - zram is successfully enabled!
echo 
