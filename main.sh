#!/bin/bash

echo "~~~ MAIN REINSTALLATION SCRIPT BEGINNING ~~~";
echo "THIS SCRIPT IS DESIGNED TO REINSTALL SPECIFIC";
echo "SOFTWARE AND IS CONFIGURED FOR UBUNTU AND APT-GET.";
echo "";

# Change to temporary working directory for duration of installation.
scriptdir="`pwd`";
cd $(mktemp -d);

# Make sure system is up to date before continuing
sudo apt-get update;
sudo apt-get upgrade -y;

## Installation Scripts
sh "$scriptdir/basics.sh";
sh "$scriptdir/apps.sh";
sh "$scriptdir/programming.sh";
sh "$scriptdir/managerial.sh";
sh "$scriptdir/games.sh";
sh "$scriptdir/manual.sh";

echo "MAIN INSTALLATION SCRIPT COMPLETE";
