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

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

fi

# Install homebrew packages
brew install android-ndk
brew install apktool
brew install ccache
brew install colordiff
brew install coreutils
brew install git
brew install gradle
brew install grc
brew install hub
brew install imagemagick
brew install --HEAD neovim/neovim/neovim
brew install qt
brew install qt5
brew install reattach-to-user-namespace
brew install the_silver_searcher
brew install tmux
brew install zsh

# Upgrade existing homebrew packages
brew upgrade
exit 0
