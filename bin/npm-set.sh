#!/bin/bash

function install_plugin() {
    local plugin_url=$1

    # Check URL
    if [ -z "$plugin_url" ]; then
        echo "Error: No plugin URL provided."
        echo "Usage: $0 install <plugin-url>"
        exit 1
    fi

    local plugin_name=$(basename "$plugin_url" .git)
    local plugin_dir="$HOME/.nano/plugins/$plugin_name"

    echo "Installing plugin from $plugin_url..."

    if [ -d "$plugin_dir" ]; then
        echo "Plugin $plugin_name is already installed."
    else
        git clone "$plugin_url" "$plugin_dir"
        echo "Plugin $plugin_name installed successfully."
    fi
}