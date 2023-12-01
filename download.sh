#!/bin/sh

cd ~;
git clone https://github.com/AngelList/jarvis.git;
git checkout -b $USER
echo "Running Jarvis setup (setup.sh)"
source setup.sh