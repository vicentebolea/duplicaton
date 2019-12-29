# DUPLICATON

Attempt to automatize duplicity backups for laptops (now with systemD)

## How to install

Find out the partition UUID of your USB stick (or any other block device).

```
→ sudo lsblk -o name,mountpoint,label,size,uuid

NAME     MOUNTPOINT        LABEL      SIZE UUID
sdb                                 931.5G 
└─sdb1   /run/media/backup backup   931.5G XXXYYY

```

```
autoreconf -i
./configure UUID=XXXYYY
sudo make install
```
### Configure it

Modify `/etc/duplicaton.conf` such as:

```
+ /etc
+ /usr/local
+ /var/lib/rpm/
+ /var/adm/
+ /var/mail/
- /var/lib
- **
``` 

## How to use it

1. Just plug your USB stick (or whatever other device).
2. Force backup by `sudo systemctl start duplicaton.service`


## AUTHORS

- Vicente Adolfo Bolea Sanchez <vicente.bolea@gmail.com>
