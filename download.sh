#!/bin/sh

cd ~;
git clone https://github.com/aeisenberger/jarvis.git;
git checkout -b $USER
echo "Running Jarvis setup (setup.sh)"
source setup.sh