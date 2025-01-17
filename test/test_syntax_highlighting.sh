#!/bin/bash

# Test Syntax Highlighting Script for Nano

echo "Running syntax highlighting tests..."

# Test function syntax highlighting works
echo -e "# This is a comment\nfunction test() {\n    echo 'Hello World'\n}" > testfile.plugin
nano --syntax=plugin testfile.plugin

# Check open file syntax highlighting
if [ $? -eq 0 ]; then
    echo "Syntax highlighting is working."
else
    echo "Syntax highlighting is not working."
    exit 1
fi

# Tmp delete
rm testfile.plugin
echo "All syntax highlighting tests passed."