all: install

install:
	install -b duplicity-backup-runner /usr/local/bin
	install -b system-backup.service system-backup.timer /etc/systemd/system/
	install -b system-backup.conf /etc/
