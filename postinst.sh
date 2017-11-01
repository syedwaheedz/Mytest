#!/bin/sh
mkdir /usr/local/scripts
cd /usr/local/scripts
wget http://192.168.0.7/pub/misc/ps1.sh
mv ps1.sh /etc/profile.d/
wget http://192.168.0.7/pub/misc/disable_ipv6.sh
chmod +x disable_ipv6.sh
sh disable_ipv6.sh
wget http://192.168.0.7/pub/misc/authorized_keys
mkdir -p /root/.ssh
chmod 700 /root/.ssh
mv id_rsa /root/.ssh/
wget http://192.168.0.7/pub/misc/rhel-source.repo
mv rhel-source.repo /etc/yum.repos.d
wget http://192.168.0.7/pub/misc/ifcfg-eth0
func_upd_hostname ()
{
HOST_FILE=/etc/sysconfig/network
> $HOST_FILE
echo "HOSTNAME=dnode2.example.com" >> $HOST_FILE
echo "GATEWAY=192.168.0.1" >> $HOST_FILE
echo "IPV6INIT=no" >> $HOST_FILE
}
func_upd_hostname
