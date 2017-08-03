#### change to root
```
sudo su -
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
# --> d (delete) --> n (new) --> w (write and exit)
 ```

#### create ext4 fs
```
mkfs.ext4 /dev/sda
```
#### append mount point to fstab
```
echo '/dev/sda1       /nsm            ext4    defaults,nofail 0       2' >> /etc/fstab
```

#### mount new ext4 partition
```
mount /nsm
```
#### create folder to hold downloads
```
mkdir -p /nsm/download
```

#### Start cron
```
service cron restart
```
