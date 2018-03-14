#!/bin/sh

if test ! $(which brew)
then
  if test "$(uname)" = "Darwin"
  then
    echo "  Installing Homebrew for you."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi

brew bundle

exit 0
