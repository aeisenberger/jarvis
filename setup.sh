#!/bin/sh


#Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Homebrew installed"

# Setup vscode with extensions
./setup-vscode.sh

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Refresh shell
source ~/.zprofile

#Install other cli tools
brew install wget gh

# Refresh shell
source ~/.zprofile

# Other setup scripts
./setup-github.sh
./setup-node.sh
./setup-rbenv.sh
./setup-yarn.sh


# Switch to apps directory
goto_apps() {
    cd ~/apps || return
}
