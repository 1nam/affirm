#!/bin/bash

# Define the location where we want to install the script
INSTALL_PATH="/usr/local/bin/affirm"

# Check if the script is already installed
if command -v affirm &>/dev/null; then
  echo "Affirmations are already installed. You can run 'affirm' anytime."
  exit 0
fi

# Download the affirmations script directly from GitHub
echo "Downloading affirmations script..."

# URL to raw script from GitHub (replace with your actual raw URL)
RAW_URL="https://raw.githubusercontent.com/1nam/affirm/refs/heads/main/install.sh"

# Use curl to download the file and make it executable
curl -s -o "$INSTALL_PATH" "$RAW_URL"
chmod +x "$INSTALL_PATH"

# Confirm successful installation
if [ -f "$INSTALL_PATH" ]; then
  echo "Affirmations installed successfully! You can now run 'affirm' to receive a daily affirmation."
else
  echo "Something went wrong during the installation. Please try again."
  exit 1
fi

