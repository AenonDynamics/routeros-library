# capsman channel config 2.4ghz - 20MHz
# -------------------------------------------

/caps-man channel

# non overlapping 2.4ghz channels, 20MHz
add name="2ghz-chan1" comment="wlan 2.4GHz channel 1" \
    band=2ghz-g/n control-channel-width=20mhz extension-channel=disabled \
    frequency=$wlanChannel1

add name="2ghz-chan5" comment="wlan 2.4GHz channel 5" \
    band=2ghz-g/n control-channel-width=20mhz extension-channel=disabled \
    frequency=$wlanChannel5

add name="2ghz-chan9" comment="wlan 2.4GHz channel 9" \
    band=2ghz-g/n control-channel-width=20mhz extension-channel=disabled \
    frequency=$wlanChannel9

add name="2ghz-chan13" comment="wlan 2.4GHz channel 13" \
    band=2ghz-g/n control-channel-width=20mhz extension-channel=disabled \
    frequency=$wlanChannel13

# non overlapping 2.4ghz channels, 20MHz (LEGACY)
add name="2ghz-chan6" comment="wlan 2.4GHz channel 6 - legacy compatibility" \
    band=2ghz-g/n control-channel-width=20mhz extension-channel=disabled \
    frequency=$wlanChannel6 

add name="2ghz-chan11" comment="wlan 2.4GHz channel 11 - legacy compatibility" \
    band=2ghz-g/n control-channel-width=20mhz extension-channel=disabled \
    frequency=$wlanChannel11

# automatic, 20MHz
add name="2ghz-auto-legacy" comment="wlan 2.4GHz automatic channel selection 1-6-11" \
    band=2ghz-g/n control-channel-width=20mhz extension-channel=disabled \
    reselect-interval=30m save-selected=yes \
    frequency="$wlanChannel1,$wlanChannel6,$wlanChannel11"

add name="2ghz-auto" comment="wlan 2.4GHz automatic channel selection 1-5-9-13" \
    band=2ghz-g/n control-channel-width=20mhz extension-channel=disabled \
    reselect-interval=30m save-selected=yes \
    frequency="$wlanChannel1,$wlanChannel5,$wlanChannel9,$wlanChannel13"

# capsman channel config 5ghz - 40MHz
# -------------------------------------------

# non overlapping 5ghz channels, 40MHz
add name="5ghz-40mhz-chan36" comment="wlan 5GHz channel 36" \
    band=5ghz-n/ac control-channel-width=20mhz extension-channel=Ce \
    frequency=$wlanChannel36

add name="5ghz-40mhz-chan44" comment="wlan 5GHz channel 44" \
    band=5ghz-n/ac control-channel-width=20mhz extension-channel=Ce \
    frequency=$wlanChannel44

add name="5ghz-40mhz-chan52" comment="wlan 5GHz channel 52" \
    band=5ghz-n/ac control-channel-width=20mhz extension-channel=Ce \
    frequency=$wlanChannel52

add name="5ghz-40mhz-chan60" comment="wlan 5GHz channel 60" \
    band=5ghz-n/ac control-channel-width=20mhz extension-channel=Ce \
    frequency=$wlanChannel60

add name="5ghz-40mhz-chan100" comment="wlan 5GHz channel 100" \
    band=5ghz-n/ac control-channel-width=20mhz extension-channel=Ce \
    frequency=$wlanChannel100

add name="5ghz-40mhz-chan108" comment="wlan 5GHz channel 108" \
    band=5ghz-n/ac control-channel-width=20mhz extension-channel=Ce \
    frequency=$wlanChannel108

add name="5ghz-40mhz-chan132" comment="wlan 5GHz channel 132" \
    band=5ghz-n/ac control-channel-width=20mhz extension-channel=Ce \
    frequency=$wlanChannel132

# automatic, 40MHz
add name="5ghz-40mhz-auto" comment="wlan 5GHz automatic channel selection 36-44-52-60-100-108" \
    band=5ghz-n/ac control-channel-width=20mhz extension-channel=Ce \
    reselect-interval=30m save-selected=yes \
    frequency="$wlanChannel36,$wlanChannel44,$wlanChannel52,$wlanChannel60,$wlanChannel100,$wlanChannel108"
