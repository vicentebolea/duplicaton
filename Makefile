all: install

install:
	install -b duplicity-backup-runner /usr/local/bin
	install -b system-backup.service system-backup.timer /etc/systemd/system/

install-udev:
	install -b 99-udev-backer.rules /etc/udev/rules.d/
