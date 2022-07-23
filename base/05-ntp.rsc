# enable ntp client
/system/ntp/client set enabled=yes

# use de.pool.ntp.org
/system/ntp/client/servers add address=0.de.pool.ntp.org
/system/ntp/client/servers add address=1.de.pool.ntp.org
/system/ntp/client/servers add address=2.de.pool.ntp.org
/system/ntp/client/servers add address=3.de.pool.ntp.org

# clock settings timezone CET
/system/clock set time-zone-name=CET
