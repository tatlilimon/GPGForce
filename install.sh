#!/bin/bash

# Build the binary
echo "Building gpgforce..."
go build -o gpgforce

# checks if the last command failed
if [ $? -ne 0 ]; then
    echo "Build failed"
    exit 1  # Exit with error status
fi

# Move binary to /usr/local/bin
echo "Installing gpgforce to /usr/local/bin..."
sudo mv gpgforce /usr/local/bin/

# checks if the last command failed
if [ $? -ne 0 ]; then
    echo "Installation failed. Make sure you have sudo privileges."
    exit 1  # Exit with error status
fi

echo "Installation successful! You can now use 'gpgforce' command."
