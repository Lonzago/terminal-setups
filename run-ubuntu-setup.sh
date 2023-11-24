#!/bin/bash

install-basics() {
	echo 'Installing Ubuntu Basic packages'
	sh ./setup-scripts/ubuntu/ubu-packages.sh
}
install-docker() {
	echo 'Installing Ubuntu Docker packages'
	sh ./setup-scripts/ubuntu/ubu-docker-setup.sh
}

#==== START SCRIPT ===========
echo -n 'Install All (y/n): '
read install_all

if [ "$install_all" = "y" ]; then

	install-basics
	install-docker

else

	echo 'Install Ubuntu basic packages? (y/n): '
	read basic_packages
	if [ "$basic_packages" = "y" ]; then

		install-basics

	else

		echo 'No Installing Ubuntu Basic packages'

	fi

	echo 'Install Ubuntu docker packages? (y/n): '
	read docker_packages

	if [ "$docker_packages" = "y" ]; then

		install-docker

	else

		echo 'No Installing Ubuntu Docker packages'

	fi
fi
