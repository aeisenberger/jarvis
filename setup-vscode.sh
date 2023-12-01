# Install vscode with base extensions

brew install --cask visual-studio-code

# Install vscode cli tool
cat << EOF >> ~/.zprofile
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

# Refresh shell
source ~/.zprofile

# Install vscode extensions
code --install-extension steoates.autoimport esbenp.prettier-vscode vscode-icons-team.vscode-icons CraigMaslowski.erb wmaurer.change-case dbaeumer.vscode-eslint vincaslt.highlight-matching-tag ms-vscode.makefile-tools unifiedjs.vscode-mdx bradlc.vscode-tailwindcss jaspernorth.vscode-pigments
