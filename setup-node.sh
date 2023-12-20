read -p "Do you want to start the node/nvm setup? (yes/no): " start_setup

if [[ $start_setup == "yes" ]] || [[ $start_setup == "y" ]]; then
    # Install nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

    # Reload
    source ~/.zshrc
    source ~/.zprofile

    # Install Node.js version 16.14.0 using nvm
    nvm install 16.14.0
else
    echo "Node setup skipped."
fi
