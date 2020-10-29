# enable ntp 
/system ntp client

# use de.pool.ntp.org
set enabled=yes \
    primary-ntp=0.0.0.0 \
    secondary-ntp=0.0.0.0 \
    server-dns-names=de.pool.ntp.org

# clock settings
/system clock

# timezone CET
set time-zone-name=CET
