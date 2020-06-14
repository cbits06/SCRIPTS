echo net.ipv4.ip_forward = 1 > /etc/sysctl.conf
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -A FORWARD -i eth0 -o eth1 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -j ACCEPT
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sysctl -p
/etc/init.d/iptables save
/etc/init.d/networking restart
