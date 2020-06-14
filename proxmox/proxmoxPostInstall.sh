
#Scripts
wget https://raw.githubusercontent.com/cbits06/Novus/master/scripts/proxmoxNoSubscription.sh
wget https://raw.githubusercontent.com/cbits06/Novus/master/scripts/proxmoxNoSubscriptionBuster.sh
wget https://raw.githubusercontent.com/cbits06/Novus/master/scripts/proxmoxUpgrade.sh


#CHANGE HOSTNAME
	export hostName=`hostname`
	export newHostName="Novus"
	
	cp -r /var/lib/rrdcached/db/pve2-storage/$hostName /var/lib/rrdcached/db/pve2-storage/$newHostName/
	cp /var/lib/rrdcached/db/pve2-node/$hostName /var/lib/rrdcached/db/pve2-node/$newHostName
	sed -i 's/'$hostName'/'$newHostName'/g' /etc/hosts /etc/hostname /etc/mailname /etc/postfix/main.cf
	
	
#NoSubscription
	rm /etc/apt/sources.list.d/pve-enterprise.list
	sed -i.bak "s/data.status !== 'Active'/false/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
	systemctl restart pveproxy.service
	
#Update & upgrade

apt update -y
apt upgrade -y

	

	