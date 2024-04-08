#!bin/bash
# Scripted by cinornu
# git : https://github.com/cinornu/zramonsteam35
clear
PS3="Select : "
echo "SteamOS 3.5.x zram Enabler v1.1
Scripted by cinornu

"

select prog in install uninstall quit
do
	echo
	case $prog in
		install)
			echo 1. copying essential files...
			sudo cp rc-local.service /etc/systemd/system/rc-local.service
			sudo cp rc.local /etc/rc.local
			echo 2. enable rc.local service...
			sudo chmod +x /etc/systemd/system/rc-local.service
			sudo chmod +x /etc/rc.local
			sudo systemctl enable rc-local.service
			echo 3. disable swap and enable zram...
			sudo sh /etc/rc.local
			echo - zram is successfully enabled!;;
		uninstall)
			echo 1. disable rc.local service...
			sudo systemctl disable rc-local.service
			echo 2. remove essential files...
			sudo rm /etc/systemd/system/rc-local.service
			sudo rm /etc/rc.local
			echo - zram is successfully disabled!
			echo - PLEASE REBOOT YOUR DECK!;;
		quit)
			echo "closing..."
			exit 1;;
		*)
			echo "Error!"
			exit 1;;
	esac
	break
done