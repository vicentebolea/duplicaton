all: install

install:
	install -b duplicity-backup-runner /usr/local/bin
	install -b duplicaton.service duplicaton.timer duplicaton.mount /etc/systemd/system/
	install -b duplicaton.conf /etc/
