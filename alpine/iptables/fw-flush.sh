iptables --flush
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
