export newHostname="Novus"
export gitUser="gitU"
export sudoUser="sudoU"

export pubkeyGit="https://github.com/"$gitUser".keys"
export hostname=`hostname`
# CHANGE HOSTNAME

	cp -r /var/lib/rrdcached/db/pve2-storage/$hostname /var/lib/rrdcached/db/pve2-storage/$newHostName/
	cp /var/lib/rrdcached/db/pve2-node/$hostname /var/lib/rrdcached/db/pve2-node/$newHostName
	sed -i 's/'$hostname'/'$newHostname'/g' /etc/hosts /etc/hostname /etc/mailname /etc/postfix/main.cf
# NoSubscription
	echo "deb http://ftp.debian.org/debian stretch main contrib" > /etc/apt/sources.list
	echo "deb http://ftp.debian.org/debian stretch-updates main contrib" >> /etc/apt/sources.list
	echo "deb http://download.proxmox.com/debian/pve stretch pve-no-subscription" >> /etc/apt/sources.list
	echo "deb http://security.debian.org/debian-security stretch/updates main contrib" >> /etc/apt/sources.list
	rm /etc/apt/sources.list.d/pve-enterprise.list
	sed -i.bak "s/if (data.status !== 'Active') {/if (false) {/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js

	wget https://raw.githubusercontent.com/cbits06/SCRIPTS/master/proxmox/extras.sh
	chmod +x extras.sh
