#!/bin/bash

echo "~~~ GAMES: Installs the fun things! ~~~";
echo "Installing:";
echo "    steam: game distribution service";
echo "    qjoypad jstest-gtk: Joystick software";
echo "    scorched3d: Turn Based Tank Mayhem";
echo "    libretro: Emulator Suite";

# PPA's
sudo add-apt-repository -y ppa:wfg/0ad;
sudo add-apt-repository -y ppa:libretro/stable;
sudo apt-get update;

# Installs
sudo apt-get install -y steam;
sudo apt-get install -y qjoypad jstest-gtk;
sudo apt-get install -y scorched3d;
sudo apt-get install -y retroarch retroarch-* libretro-*;

echo "NOTE: Steam installations must be completed manually.";
echo "GAMES INSTALLED";
