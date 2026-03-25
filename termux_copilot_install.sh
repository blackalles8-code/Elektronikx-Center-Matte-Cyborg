#!/bin/bash

# Update and Upgrade Termux Packages
pkg update -y && pkg upgrade -y

# Install required dependencies
echo "Installing dependencies..."
pkg install git wget curl -y

# Install Node.js
echo "Installing Node.js..."
wget https://raw.githubusercontent.com/termux/termux-packages/master/packages/nodejs/termux-node.sh
bash termux-node.sh

# Install Copilot CLI
echo "Installing Termux Copilot..."
npm install -g termux-copilot

# Configuration Setup
# Create a configuration directory if it doesn't exist
gmkdir -p ~/.config/termux-copilot

# Create a sample configuration file
echo -e "{
    \"setting1\": \"value1\",
    \"setting2\": \"value2\"
}" > ~/.config/termux-copilot/config.json

# Feedback message
echo "Termux Copilot installation complete!"