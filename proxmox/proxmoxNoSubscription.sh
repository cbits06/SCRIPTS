

echo "deb http://ftp.debian.org/debian stretch main contrib" > /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian stretch-updates main contrib" >> /etc/apt/sources.list

echo "deb http://download.proxmox.com/debian/pve stretch pve-no-subscription" >> /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security stretch/updates main contrib" >> /etc/apt/sources.list
rm /etc/apt/sources.list.d/pve-enterprise.list