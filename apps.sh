#!/bin/bash

echo "~~~ APPS: Installs productivity apps. ~~~";
echo "Installing:";
echo "    banshee: music playing application";
echo "    cheese: webcam utilization software";
echo "    wallch: wallpaper swapping application";
echo "    deluge: torrenting application";
echo "    gimp: GNU Image Manipulation Program";
echo "    vlc: Media Player";
echo "    easytag: Audio file tagging utility";
echo "    mumble: VOIP Utility";
echo "    dia: Graph Creation Utility";
echo "    inkscape: Vector Graphics Creation Utility";
echo "    audacity: Sound File Manipulator";
echo "    wine winetricks: Windows 'Emulation' Software";
echo "    vovoid: Vovoid Audio Visualization Software";
#echo "    haguichi: LogMeIn VPN Technologies"; # Discontinued
echo "    skype: Skype VOIP Software";
echo "    obs-studio: Screen Recording Software";
echo "    gtk-recordmydesktop: desktop screengrabber";
echo "    kazam: desktop screengrabber";
echo "    blender: Blender Application Suite";
echo "    tor: Tor Web Browser";

# PPA'S
sudo add-apt-repository -y ppa:obsproject/obs-studio;
sudo add-apt-repository -y ppa:wine/wine-builds;
sudo add-apt-repository ppa:ubuntu-wine/ppa;
sudo add-apt-repository -y ppa:vovoid/vsxu-release;
#sudo add-apt-repository -y ppa:webupd8team/haguichi; # Discontinued
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"; # UNTESTED!! :O
sudo add-apt-repository ppa:thomas-schiex/blender;

sudo add-apt-repository -y "deb http://deb.torproject.org/torproject.org/ $(lsb_release -sc) main";
gpg --keyserver keys.gnupg.net --recv 886DDD89;
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -;

sudo apt-get update;

# Pre-Configuration
sudo dpkg --add-architecture i386;

# Installs
sudo apt-get install -y banshee;
sudo apt-get install -y cheese;
sudo apt-get install -y wallch;
sudo apt-get install -y deluge;
sudo apt-get install -y gimp;
sudo apt-get install -y vlc;
sudo apt-get install -y easytag;
sudo apt-get install -y mumble;
sudo apt-get install -y dia;
sudo apt-get install -y inkscape;
sudo apt-get install -y audacity;
sudo apt-get install -y --install-recommends winehq-staging;
sudo apt-get install -y winetricks winbind;
sudo apt-get install -y vsxu;
#sudo apt-get install -y haguichi; # Discontinued
sudo apt-get install -y skype;
sudo apt-get install -y obs-studio;
sudo apt-get install -y gtk-recordmydesktop;
sudo apt-get install -y kazam;
sudo apt-get install -y blender;
sudo apt-get install -y tor deb.torproject.org-keyring

# Configures
echo "Configuring the WINE environments...";
USER=`whoami`;
WINE64="/home/$USER/.wine/";
WINE32="/home/$USER/.wine32/";

env WINEPREFIX=$WINE64 winecfg;
env WINEPREFIX=$WINE32 WINEARCH="win32" winecfg;

env WINEPREFIX=$WINE64 winetricks corefonts;
env WINEPREFIX=$WINE32 winetricks corefonts vcrun2005 vcrun2008 vcrun2010 vcrun2012 vcrun2013 vcrun6 vcrun6sp6 vcrun2015;
env WINEPREFIX=$WINE32 winetricks --no-isolate steam;
echo "WINE Configured";

echo "APPS INSTALLED";
