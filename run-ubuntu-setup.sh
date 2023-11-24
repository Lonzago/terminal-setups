#!/bin/bash

echo 'Install Ubuntu basic packages? (y/n)'
read basic_packages

if ["basic_packages"=="y"]; then
	echo 'Installing Ubuntu Basic packages'
else
	echo 'No Installing Ubuntu Basic packages'
fi
