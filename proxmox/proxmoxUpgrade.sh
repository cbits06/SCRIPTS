#UPGRADE FROM 5.x TO 6.x
apt update -y
apt upgrade -y
apt install -f
apt dist-upgrade -y
sed -i -e 's/stretch/buster/g' /etc/apt/sources.list.d/pve-install-repo.list 
sed -i 's/stretch/buster/g' /etc/apt/sources.list
apt update
apt dist-upgrade -y