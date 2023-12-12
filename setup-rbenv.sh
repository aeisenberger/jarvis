# Install rbenv using Homebrew
brew install rbenv

# Initialize rbenv
rbenv init

# Add rbenv init to your shell to enable shims and autocompletion
echo 'eval "$(rbenv init - zsh)"' >> ~/.zprofile

# Reload your profile
source ~/.zprofile

# Install Ruby 2.7.6 using rbenv
rbenv install 2.7.6

# Set Ruby 2.7.6 as the default version for all shells
rbenv global 2.7.6

# Reload your profile again to apply the changes
source ~/.zprofile