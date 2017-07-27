#### change to root
```
sudo su -
```

#### source ntfk.conf
```
. /etc/ntfk.conf
```
#### Stop cron
```
service cron stop
```

#### stop all packet captures
```
killall tcpdump
```

#### prepare for new mount point
```
mkdir /nsm
touch /nsm/NOT_MOUNTED
```

#### if using flash drive, reformat /dev/sda1 from vfat to ext4
```
umount /dev/sda1
fdisk /dev/sda
```
 --> d (delete)
 --> n (new)
 --> w (write and exit)


#### create ext4 fs
```
mkfs.ext4 /dev/sda
```
#### change to ntfk user and copy fstab from ntfk master
```
su - ntfk
. /etc/ntfk.conf
scp $NTFK_MASTER:files/etc/fstab.ext4 files/etc/
exit
```

#### copy fstab to /etc
```
cp /home/ntfk/files/etc/fstab.ext4 /etc/fstab
```

#### mount new ext4 partition
```
mount /nsm
```
#### create folder to hold downloads
```
mkdir -p /nsm/download
```
