all: install

install:
	sudo ansible-playbook -i localhost, ./edit-fstab.yml
	install -b duplicity-backup-runner /usr/local/bin
	install -b duplicaton.service duplicaton.timer /etc/systemd/system/
	install -b duplicaton.conf /etc/
