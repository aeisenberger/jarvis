# Setup github

read -p "Do you want to start the GitHub setup? (yes/no): " start_setup

if [[ $start_setup == "yes" ]] || [[ $start_setup == "y" ]]; then

    SSH_CONFIG_FILE=~/.ssh/config

    read -p "What is your full name: "
    git config --global user.name "$REPLY"
    read -p "Your GitHub email: "
    git config --global user.email "$REPLY"
    echo "When you're prompted to 'Enter a file in which to save the key' press Enter"
    ssh-keygen -t ed25519 -C "$REPLY"

    if [ ! -f "$SSH_CONFIG_FILE" ]; then
        touch "$SSH_CONFIG_FILE"
    fi

    cat << EOF >> "$SSH_CONFIG_FILE"
Host github.com
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_ed25519
EOF

    eval "$(ssh-agent -s)"

    echo "---- Here's your key. It has also been copied to your clipboard. Please paste it on the page that opens and save. If you need help reference these docs: https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent----"
    cat ~/.ssh/id_ed25519.pub | pbcopy
    cat ~/.ssh/id_ed25519.pub

    ssh-add --apple-use-keychain ~/.ssh/id_ed25519
    open "https://github.com/settings/ssh/new"
else
    echo "GitHub setup skipped."
fi
