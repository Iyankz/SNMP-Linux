# SNMP-Linux
Install SNMP pada Linux Ubuntu atau Debian

1. Download file install.sh
##
    wget --no-check-certificate https://raw.githubusercontent.com/Iyankz/SNMP-Linux/refs/heads/main/snmp-install.sh

2. Modifikasi Privilage install.sh
##
    chmod +x snmp-install.sh

3. Install
##
    ./snmp-install.sh
    
4. Edit Konfigurasi SNMP
##
    sudo nano /etc/snmp/snmpd.conf
5. Sesuaikan Community, Location dan Contact, secara default RANDOMSTRINGGOESHERE merupakan community SNMP
6. Exit menggunakan CTRL+X
7. restart SNMP
##
    systemctl restart snmpd.service
