#!/usr/bin/bash
#
# setup fresh fedora install

# update and upgrade
sudo dnf update -y
sudo dnf upgrade -y

# clean cache
dnf clean all

# enable RPM Fusion (free release and non-free release)
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# run another update
sudo dnf upgrade --refresh
sudo dnf groupupdate core -y

# install gnome-tweaks
sudo dnf install gnome-tweaks -y

# setup flathub repo for flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y

# install gnome-extensions
flatpak install flathub org.gnome.Extensions -y

# enable gnome-extensions
sudo dnf install chrome-gnome-shell -y
