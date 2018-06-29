#!/bin/bash

echo "~~~ BASICS: Installs things considered 'standard'. ~~~";
echo "Installing:";
echo "    preload: application preloading software";
echo "    anthy kasumi: Japanese text entry tools";
echo "    ubuntu-restricted-extras: additional media codecs";
echo "    flashplugin-installer: Adobe Flash";
echo "    libdvd-pkg: Play encrypted dvds";
echo "    rar: Rar Archive Software";
echo "    tlp: Battery Saver";
echo "    exfat-utils exfat-fuse: exfat filesystem";
echo "    ubuntu-tweak: Ubuntu Configuration Manager";
echo "    mesa-utils: Graphics Utilities";

# PPA's
sudo add-apt-repository -y ppa:linrunner/tlp;
sudo apt-get update;

# Installs
sudo apt-get install -y preload;
sudo apt-get install -y anthy kasumi;
sudo apt-get install -y ubuntu-restricted-extras;
sudo apt-get install -y flashplugin-installer;
sudo apt-get install -y libdvd-pkg;
sudo apt-get install -y rar;
sudo apt-get install -y tlp tlp-rdw;
sudo tlp start;
sudo apt-get install -y exfat-utils exfat-fuse;
sudo apt-get install -y ubuntu-tweak;

# Configuring
echo "Disabling Advertising Scopes";
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']";

# Removals
echo "Removing Software:";
echo "    rhythmbox: Music Player";
echo "    thunderbird: Email Client";

sudo apt-get autoremove -y rhythmbox;
sudo apt-get autoremove -y thunderbird;

echo "BASICS INSTALLED";
