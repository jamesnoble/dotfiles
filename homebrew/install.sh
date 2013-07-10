#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

# Install homebrew packages
brew install grc coreutils git hub vim zsh tmux reattach-to-user-namespace

# Upgrade existing homebrew packages
brew upgrade
exit 0
