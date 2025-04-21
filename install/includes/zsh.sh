#!/bin/bash
echo "changing shell for current user to zsh"
chsh -s "$(which zsh)" "$USER"
