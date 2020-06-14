fw-flush.sh
#Policy
  iptables -P INPUT DROP
  iptables -P OUTPUT DROP
  iptables -P FORWARD DROP
#Input/Output
  iptables -I INPUT -i eth0 -m state --state ESTABLISHED,RELATED -j ACCEPT
  iptables -I OUTPUT -o eth0 -j ACCEPT
#APPLY
  /etc/init.d/iptables save
  /etc/init.d/networking restart
#DEBUG
  iptables -L --line-numbers -v
