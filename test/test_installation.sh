#!/bin/bash

# Test Installation Script for Nano Package Manager

echo "Running installation tests..."

# Test Install
if [ -f ~/.nano/plugins/example-plugin ]; then
    echo "Example plugin is installed."
else
    echo "Example plugin is not installed."
    exit 1
fi

echo "All installation tests passed."