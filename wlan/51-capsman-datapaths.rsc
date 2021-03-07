# capsman default datapaths
# -------------------------------------------

/caps-man datapath

# example: local forwarding using vlan 1
add name=local-fwd-vlan comment="local forwarding using provided vlan tag" \
    client-to-client-forwarding=no \
    local-forwarding=yes \
    vlan-mode=use-tag \
    vlan-id=1 \
    bridge=br0
