apk add iptables
rc-update add iptables
echo net.ipv4.ip_forward = 1 > /etc/sysctl.conf
echo 1 > /proc/sys/net/ipv4/ip_forward
rc-update add local default
rclocal
