#CHANGE HOSTNAME
	export hostName=`hostname`
	export newHostName="Novus"

	cp -r /var/lib/rrdcached/db/pve2-storage/$hostName /var/lib/rrdcached/db/pve2-storage/$newHostName/
	cp /var/lib/rrdcached/db/pve2-node/$hostName /var/lib/rrdcached/db/pve2-node/$newHostName
	sed -i 's/'$hostName'/'$newHostName'/g' /etc/hosts /etc/hostname /etc/mailname /etc/postfix/main.cf


#NoSubscription

	echo "deb http://ftp.debian.org/debian stretch main contrib" > /etc/apt/sources.list
	echo "deb http://ftp.debian.org/debian stretch-updates main contrib" >> /etc/apt/sources.list
	echo "deb http://download.proxmox.com/debian/pve stretch pve-no-subscription" >> /etc/apt/sources.list
	echo "deb http://security.debian.org/debian-security stretch/updates main contrib" >> /etc/apt/sources.list
	rm /etc/apt/sources.list.d/pve-enterprise.list
	sed -i.bak "s/if (data.status !== 'Active') {/if (false) {/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
#Update & upgrade to Proxmox 6
	apt update -y
	apt upgrade -y
	apt install -f
	apt dist-upgrade -y
	sed -i -e 's/stretch/buster/g' /etc/apt/sources.list.d/pve-install-repo.list
	sed -i 's/stretch/buster/g' /etc/apt/sources.list
	apt update
	apt -f install
	apt dist-upgrade -y
	apt -f install
