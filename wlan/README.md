WLAN / CAPsMAN Examples
==============================


## CAPsMAN Access Point config ##

File: `55-capsman-ap.rsc`

```
# capsman ap config
# -------------------------------------------

/interface wireless cap
set bridge=br0 discovery-interfaces="" enabled=yes \
    interfaces=wlan1 \
    certificate=request
```

## CAPsMAN Security ##


File: `52-capsman-security.rsc`

```
# capsman security
# -------------------------------------------

/caps-man security

add name=wpa2-personal-test comment="default conf" \
    encryption=aes-ccm group-encryption=aes-ccm \
    authentication-types=wpa2-psk \
    passphrase=12345678 
```

## CAPsMAN Manager ##

File: `55-capsman-mgmt.rsc`

```
# capsman config
# -------------------------------------------

/caps-man configuration
add country=germany name=wlan-config \
    datapath=local-fwd-vlan \
    channel=2ghz-auto-legacy \
    security=wpa2-personal-test \
    ssid=MikroTikCAP

# ap provisioning
/caps-man provisioning
add action=create-dynamic-enabled \
    comment="default ap deployment scheme" \
    master-configuration=wlan-config

# capsman manager config
# -------------------------------------------

# only listen to bridge interface
/caps-man manager interface
set [ find default=yes ] forbid=yes
add disabled=no interface=br0

# enable manager, using auto cert deployment
/caps-man manager
set enabled=yes certificate=auto ca-certificate=auto require-peer-certificate=yes
```