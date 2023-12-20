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


read -p "Setup new SSH key (yes/no)? (Reccomended response: yes) : "
if [ "$REPLY" != "yes" ]; then
    echo "Skipping SSH KEY Github setup"
else
   ./setup-github.sh
fi

read -p "Setup RBENV (yes/no)? (Reccomended response: yes) : "
if [ "$REPLY" != "yes" ]; then
    echo "Skipping RBENV setup"
else
   ./setup-rbenv.sh
fi

read -p "Setup Node/NVM (yes/no)? (Reccomended response: yes) : "
if [ "$REPLY" != "yes" ]; then
    echo "Skipping Node/NVM setup"
else
   ./setup-node.sh
fi

read -p "Setup yarn (yes/no)? (Reccomended response: yes) : "
if [ "$REPLY" != "yes" ]; then
    echo "Skipping yarn setup"
else
   ./setup-yarn.sh
fi

# Switch to apps directory
goto_apps() {
    cd ~/apps || return
}
