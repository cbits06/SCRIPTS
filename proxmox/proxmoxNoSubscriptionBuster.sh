echo "deb http://ftp.debian.org/debian buster main contrib" > /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian buster-updates main contrib" >> /etc/apt/sources.list

echo "deb http://download.proxmox.com/debian/pve buster pve-no-subscription" >> /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security buster/updates main contrib" >> /etc/apt/sources.list