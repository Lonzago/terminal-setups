#!/bin/bash

add_separator() {
	echo ===========================================
	echo ===========================================
	echo ===========================================
}

install_basics() {
	add_separator
	echo 'Installing Ubuntu Basic packages'
	sh ./setup-scripts/ubuntu/ubu-packages.sh
}
install_docker() {
	add_separator
	echo 'Installing Ubuntu Docker packages'
	sh ./setup-scripts/ubuntu/ubu-docker-setup.sh
}
add_bashconfig() {
	add_separator
	echo 'Adding Bahs configuration'
	sh ./setup-scripts/ubuntu/ubu-add-bashconfig.sh
}
add_lazyvim_configuration() {
	add_separator
	echo 'Adding Lazyvim config from github'
	sh ./setup-scripts/ubuntu/ubu-add-lazyvim-config.sh
}

#==== START SCRIPT ===========
echo -n 'Install All (y/n): '
read install_all

if [ "$install_all" = "y" ]; then
	install_basics
	add_bashconfig
	add_lazyvim_configuration
	install_docker

else
	## BASICS
	add_separator
	echo 'Install Ubuntu basic packages? (y/n): '
	read basic_packages
	if [ "$basic_packages" = "y" ]; then
		install_basics
	else
		add_separator
		echo 'No Installing Ubuntu Basic packages'
	fi
	## BASH CONFIG
	add_separator
	echo 'Do you want to add Bash Config? (y/n): '
	read bash_config
	if [ "$bash_config" = "y" ]; then
		add_bashconfig
	else
		add_separator
		echo 'No Adding Bash Config'
	fi
	## LAZYVIM CONFIG
	add_separator
	echo 'Do you want to add LazyVim Config? (y/n): '
	read lazy_config
	if [ "$lazy_config" = "y" ]; then
		add_lazyvim_configuration
	else
		add_separator
		echo 'No Adding Lazyvim Configuration'
	fi
	## DOCKER
	add_separator
	echo 'Install Ubuntu docker packages? (y/n): '
	read docker_packages
	if [ "$docker_packages" = "y" ]; then
		install_docker
	else
		add_separator
		echo 'No Installing Ubuntu Docker packages'
	fi
fi
