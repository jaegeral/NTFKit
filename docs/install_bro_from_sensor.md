####
#### Follow instructions to convert flash drive to ext3 before continuing
####
####


#### source ntfk.conf
```
. /etc/ntfk.conf
```

#### change download compiled bro from NTFK_MASTER
```
scp $NTFK_MASTER:archive/ntfk0001.opt.bro-2.4.1.tgz /nsm/download
```

#### change to root user
```
sudo su -
```

#### install bro dependencies
```
apt-get -y install cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev htop vim libgeoip-dev ethtool git tshark tcpdump nmap python-pip autoconf libtool
```

#### extract bro to /opt
```
cd /
tar -xzvf /nsm/download/ntfk0001.opt.bro-2.4.1.tgz
cd /opt/bro-2.4.1
```

#### install bro
```
make install
```

#### change back to ntfk user
```
exit
```

#### change download node.cfg from NTFK_MASTER
```
rsync -vr $NTFK_MASTER:files/usr/local/bro files/usr/local/
```

#### change to root user
```
sudo su -
```

#### copy node.cfg to
```
cp /home/ntfk/files/usr/local/bro/etc/node.cfg /usr/local/bro/etc/node.cfg
```

#### start bro and check status
```
broctl deploy
broctl status
```

#### change back to ntfk user
```
exit
```
