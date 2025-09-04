#!/bin/bash
# Installer for affirm command

set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="affirm"

echo "🔮 Installing $SCRIPT_NAME..."

# Download the script from GitHub
curl -s -o /tmp/$SCRIPT_NAME https://github.com/1nam/affirm/blob/main/install.sh

chmod +x /tmp/$SCRIPT_NAME
sudo mv /tmp/$SCRIPT_NAME $INSTALL_DIR/

echo "✅ Installed! You can now type 'affirm' to get your affirmation."
