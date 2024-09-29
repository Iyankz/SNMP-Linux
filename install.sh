#!/bin/sh
echo "----------------------------------------------------"
echo " START INSTALL SNMP Linux Ubuntun "
echo "----------------------------------------------------"
echo ""
echo "----------------------------------------------------"
echo "update"
echo "----------------------------------------------------"
apt update

echo "----------------------------------------------------"
echo "upgrade"
echo "----------------------------------------------------"
apt upgrade -y

echo "----------------------------------------------------"
echo "install snmpd"
echo "----------------------------------------------------"
apt-get install snmpd -y

echo "----------------------------------------------------"
echo "install snmp"
echo "----------------------------------------------------"
apt-get install sudo apt install snmp snmp-mibs-downloader -y

echo "----------------------------------------------------"
echo "backup snmpd"
echo "----------------------------------------------------"
rm -rf /etc/snmp/snmpd.conf.bak
mv /etc/snmp/snmpd/conf /etc/snmp/snmpd.conf.bak

echo "----------------------------------------------------"
echo "download snmpd.conf"
echo "----------------------------------------------------"
wget --no-check-certificate https://raw.githubusercontent.com/Iyankz/SNMP-Linux/refs/heads/main/snmpd.conf -P /etc/snmp/

echo "----------------------------------------------------"
echo "Restart bind9"
echo "----------------------------------------------------"
systemctl restart snmpd.service 


echo "===================================================="
echo " *** DONE *** "
echo "===================================================="
