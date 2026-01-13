#!/bin/bash
# ============================================================
# Script Name : generate.sh
# Author      : Brenddon Andrade
# Created     : 13-Jan-2026
# Version     : 1.0
# Description : This script will create a new ssh key for you computer.
# Usage       : ./generate.sh
# ============================================================
# Reference: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key

# 1 Generating a new SSH key
## get your email
read -p "Type your email: " email 
ssh-keygen -t ed25519 -C "$email"

# 2 Adding your SSH key to the ssh-agent
## Start the ssh-agent in the background.
eval "$(ssh-agent -s)"

## Add your SSH private key to the ssh-agent.
ssh-add ~/.ssh/id_ed25519

# 3 Add the SSH public key to your account on GitHub
## Copy the SSH public key to your clipboard.
cat ~/.ssh/id_ed25519.pub

echo "In the upper-right corner of any page on GitHub, click your profile picture, then click"

echo "Settings."

echo "In the 'Access' section of the sidebar, click"

echo "SSH and GPG keys."

echo "Click New SSH key or Add SSH key."

echo "In the 'Title' field, add a descriptive label for the new key. For example, if you're using a personal laptop, you might call this key 'Personal laptop'."

echo "Select the type of key, either authentication or signing. For more information about commit signing, see About commit signature verification."

echo "In the 'Key' field, paste your public key."

echo "Click Add SSH key."

