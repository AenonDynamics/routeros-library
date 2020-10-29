# ethernet interfaces
# -------------------------------------------

/interface ethernet

# ether8 - management interface; 100mbps in case auto negotiation has been disabled
set [ find default-name=ether8 ] \
    comment="direct management (eth8)" \
    name=mgmt \
    speed=100Mbps

# setup management access on mgmt interface
# -------------------------------------------------

# add ip for direct management
/ip address
add address=192.168.88.1/24 comment="direct management" interface=mgmt

# dhcp server
/ip pool
add name=mgmt-dhcp ranges=192.168.88.100-192.168.88.150 comment="direct management"

/ip dhcp-server
add address-pool=mgmt-dhcp disabled=no interface=mgmt name="mgmt-dhcp"

# temporary anti-lockout
# -------------------------------------------------

