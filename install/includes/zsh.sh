#!/bin/bash

while ! chsh -s $(which zsh); do
    echo "ERROR: Authentication failed. Please enter the correct password."
    sleep 1
done
echo ":: Shell is now zsh."
