# ethernet interfaces
# -------------------------------------------

/interface ethernet

# ether1 - management interface; 100mbps in case auto negotiation has been disabled
set [ find default-name=ether1 ] \
    comment="direct management (eth1)" \
    name=mgmt \
    speed=100Mbps

# setup management access on mgmt interface
# -------------------------------------------------

# add ip for direct management
/ip address
add address=192.168.88.1/24 comment="direct management" interface=mgmt
