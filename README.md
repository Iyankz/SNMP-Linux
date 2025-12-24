# SNMP-Linux
Install SNMP pada Linux Ubuntu atau Debian

1. Install SNMP
##
    sudo curl -Ssl https://raw.githubusercontent.com/Iyankz/SNMP-Linux/refs/heads/main/snmp-install.sh | sudo bash

2. Edit Konfigurasi SNMP
##
    sudo nano /etc/snmp/snmpd.conf
3. Sesuaikan Community, Location dan Contact, secara default RANDOMSTRINGGOESHERE merupakan community SNMP
4. Exit menggunakan CTRL+X
5. restart SNMP
##
    sudo systemctl restart snmpd.service
