# setup system nameserver QUAD9 + DNS4EU
#
# QUAD9 - https://quad9.net/service/service-addresses-and-features/#ecssec
# - 9.9.9.9 | 2620:fe::fe
# - 149.112.112.112 | 2620:fe::9
#
# DNS4EU - https://joindns4.eu/for-public
# - 86.54.11.1 | 2a13:1001::86:54:11:1
# - 86.54.11.201 | 2a13:1001::86:54:11:201
#
/ip/dns set servers=9.9.9.9,149.112.112.112,86.54.11.1,86.54.11.201,2620:fe::fe,2620:fe::9,2a13:1001::86:54:11:1,2a13:1001::86:54:11:201

# increase dns cache size
/ip/dns set cache-size=16384

# allow dns remote requests - firewall based acls required
/ip/dns set allow-remote-requests=yes