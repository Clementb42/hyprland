#!/bin/bash

chsh -s "$(which zsh)" "$USER"
zsh
if [ -f "$HOME/.zshrc"]; then
  source "$HOME/.zshrc"
fi
