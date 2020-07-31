# Install Extra stuff
	apt install -y sudo ifupdown2 openvswitch-switch tinc iptables

# Create tinc Network
  export deployTinc=0
  if ( $deployTinc != 0 ) {
    export netName="netN"
    export subnet=""
    export mode="switch"
    export netPath="/etc/tinc/"$netName
    mkdir -p $netPath/hosts
    touch $netPath/tinc.conf
  }
