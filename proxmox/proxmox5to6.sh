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
