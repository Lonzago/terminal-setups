#!/bin/bash

echo 'Install Ubuntu basic packages? (y/n)'
read basic_packages

if ["$basic_packages"=="y"]; then
	echo 'Installing Ubuntu Basic packages'
	sudo sh ./setup-scripts/ubuntu/ubu-packages.sh
else
	echo 'No Installing Ubuntu Basic packages'
fi

echo 'Install Ubuntu docker packages? (y/n)'
read docker_packages

if ["$docker_packages"=="y"]; then
	echo 'Installing Ubuntu Docker packages'
	sudo sh ./setup-scripts/ubuntu/ubu-docker-setup.sh
else
	echo 'No Installing Ubuntu Docker packages'
fi
