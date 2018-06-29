#!/bin/bash

echo "~~~ MANAGERIAL: Installs management apps. ~~~";
echo "Installing:";
echo "    dconf-tools: configuration toolkit";
echo "    gconf-editor: configuration toolkit";
echo "    unity-tweak-tool: Tweak Unity's appearance";
echo "    htop: Processes Terminal Tool";
echo "    acpi: Hardware Status Utility";
echo "    gparted: Partition Manipulation Utility";
echo "    pavucontrol: Pulse Audio Volume Control Utility";
echo "    zenmap: Network Sniffing Utility";
echo "    ubuntu-tweak: Ubuntu Tweak Tool";

# PPA's
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

sudo apt-get update;

# Installs
sudo apt-get install -y dconf-tools;
sudo apt-get install -y unity-tweak-tool;
sudo apt-get install -y htop;
sudo apt-get install -y acpi;
sudo apt-get install -y gparted;
sudo apt-get install -y pavucontrol;
sudo apt-get install -y zenmap;
sudo apt-get install -y ubuntu-tweak;

echo "MANAGERIAL INSTALLED";
