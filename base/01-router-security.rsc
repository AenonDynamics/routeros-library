# SPDX-License-Identifier: MPL-2.0

# disable unused services
/ip/service set telnet disabled=yes
/ip/service set winbox disabled=yes
/ip/service set ftp disabled=yes
/ip/service set api disabled=yes
/ip/service set api-ssl disabled=yes
/ip/service set www-ssl disabled=yes

# disable (mostly) unused NAT helpers
/ip/firewall/service-port set h323 disabled=yes
/ip/firewall/service-port set irc disabled=yes
/ip/firewall/service-port set tftp disabled=yes
/ip/firewall/service-port set pptp disabled=yes
/ip/firewall/service-port set sip disabled=yes

# strong ssh params; disable forwarding; key based login only (if available)
/ip/ssh set strong-crypto=yes forwarding-enabled=no password-authentication=yes-if-no-key

# disable mac-telnet services
/tool/mac-server set allowed-interface-list=none

# disable mac-winbox services
/tool/mac-server/mac-winbox set allowed-interface-list=none

# disable mac-ping service
/tool/mac-server/ping set enabled=no

# disable MikroTik Neighbor discovery
/ip/neighbor/discovery-settings set discover-interface-list=none 

# disable bandwidth test server
/tool/bandwidth-server set enabled=no

# enable syn cookies
/ip/settings set tcp-syncookies=yes

# strict reverse path filtering
/ip/settings set rp-filter=strict