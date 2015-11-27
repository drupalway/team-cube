all:

vm:
	test -d env/local/vagrant || git clone git://github.com/drupalway/drupal-vm.git env/local/vagrant
	cd env/local/vagrant && ln -sf ../config.yml config.yml
	cd env/local/vagrant && vagrant up
	cd env/local/vagrant && vagrant ssh -c 'cd /var/www/tc.dw && bash env/local/init.guest.project.sh'