#!/bin/sh

cd ~;
mkdir ~/apps
cd apps
git clone https://github.com/aeisenberger/jarvis.git;
cd jarvis
git checkout -b $USER
echo "Running Jarvis setup (setup.sh)"
source setup.sh