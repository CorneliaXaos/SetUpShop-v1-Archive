#!/bin/bash

echo "~~~ PROGRAMMING: Installing programming utilities. ~~~";
echo "Installing:";
echo "    guake: terminal application";
echo "    vim: Terminal Text Editor";
echo "    git: Version Control Software";
echo "    love liblove: Lua Game Engine";
echo "    libsdl2: SDL2 Libraries";
echo "    python3 and libraries: Python 3 Environment and libraries";
echo "    perl and libraries: PERL Environment and libraries";
echo "    openjdk: Java Execution Environment";
echo "    bless tree tmux traceroute: Various Utilities";
echo "    ant: Build Tool";
echo "    android: The Android Development Environment";
echo "    arduino: The Arduino Development Environment";
echo "    netbeans: The Netbeans Development Environment";

# PPA's
sudo add-apt-repository -y ppa:bartbes/love-stable; # LOVE
sudo add-apt-repository -y ppa:openjdk-r/ppa; # Java
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make;
sudo apt-get update;

# Installs
sudo apt-get install -y ubuntu-make;
sudo apt-get install -y guake;
sudo apt-get install -y vim;
sudo apt-get autoremove -y vim-tiny; # I really don't like this version...
sudo apt-get install -y git;
sudo apt-get install -y love liblove
sudo apt-get install -y libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev;
sudo apt-get install -y python3 python3-numpy python3-scipy python3-pil python3-pip python3-flask python-dev python3-dev;
sudo apt-get install -y perl libparams-validate-perl;
sudo cpan List::PowerSet;
sudo apt-get install -y openjdk-8-jdk icedtea-plugin openjdk-8-doc openjfx;
sudo update-alternatives --config java; # Configure
sudo apt-get install -y bless tree tmux traceroute;
sudo apt-get install -y ant;
sudo umake android;
sudo umake ide arduino;
sudo umake ide netbeans;


echo "PROGRAMMING INSTALLED";

