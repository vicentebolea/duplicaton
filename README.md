# DUPLICATON

Attempt to automatize duplicity backups for laptops (now with systemD)

## How to install

```
autoreconf -i
./configure LABEL="your partition label"  USER="yourself"
sudo make install
```

## How to use 

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
1. Mount a partition named _LABEL_
