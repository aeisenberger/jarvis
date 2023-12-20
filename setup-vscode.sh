# Install vscode with base extensions

brew install --cask visual-studio-code

# Install vscode cli tool
cat << EOF >> ~/.zprofile
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

# Refresh shell
source ~/.zprofile

# Install vscode extensions
code --install-extension steoates.autoimport 
code --install-extension esbenp.prettier-vscode
code --install-extension vscode-icons-team.vscode-icons
code --install-extension CraigMaslowski.erb wmaurer.change-case
code --install-extension dbaeumer.vscode-eslint 
code --install-extension vincaslt.highlight-matching-tag
code --install-extension ms-vscode.makefile-tools
code --install-extension unifiedjs.vscode-mdx
code --install-extension bradlc.vscode-tailwindcss
code --install-extension jaspernorth.vscode-pigments
