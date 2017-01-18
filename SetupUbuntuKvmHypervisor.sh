#!/bin/bash

{
	#
	# Install LXDE desktop.
	sudo apt install xorg
	sleep 2
	sudo apt install --no-install-recommends lightdm-gtk-greeter
	sleep 2
	sudo apt install --no-install-recommends lightdm
	sleep 2
	sudo apt install --no-install-recommends lxde-icon-theme
	sleep 2
	sudo apt install --no-install-recommends lxde-core
	sleep 2
	sudo apt install --no-install-recommends lxde-common
	sleep 2
	sudo apt install --no-install-recommends policykit-1 lxpolkit
	sleep 2
	sudo apt install --no-install-recommends lxsession-logout
	sleep 2
	sudo apt install --no-install-recommends gvfs-backends
	#
	# Install virt-manager
	sleep 2
	sudo apt install virt-manager
	#
	# Add current user to libvirt group
	sleep 2
	sudo adduser $USER libvirtd
} |tee $0.log
