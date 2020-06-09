# setup management access on mgmt interface
# -------------------------------------------------

# add ip for direct management
/ip address
add address=192.168.88.1/24 comment="direct management" interface=mgmt

# dhcp server
/ip pool
add name=mgmt-dhcp ranges=192.168.88.10-192.168.88.254 comment="direct management"

/ip dhcp-server
add address-pool=mgmt-dhcp disabled=no interface=mgmt name="mgmt-dhcp"

# add stateful firewall rules
# -------------------------------------------------

/ip firewall filter

# allow any input on management interface
add chain=input \
    action=accept \
    comment="ANTI LOCKOUT - allow access from management interface" \
    in-interface=mgmt \
    protocol=tcp \
    connection-state=new
