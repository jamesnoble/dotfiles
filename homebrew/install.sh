#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install grc coreutils git hub zsh tmux reattach-to-user-namespace gcc the_silver_searcher z colordiff
brew install --HEAD neovim/neovim/neovim

# Upgrade existing homebrew packages
brew upgrade
exit 0
