#!/bin/bash

# Function to check if the desktop environment is ready
is_desktop_ready() {
    # Check if the X server is running
    if pgrep -x "Xorg" > /dev/null; then
        return 0  # Desktop environment is ready
    else
        return 1  # Desktop environment is not ready
    fi
}

# Wait until the desktop environment is ready
while ! is_desktop_ready; do
    sleep 1  # Check every second
done

# Check if Polybar is already running
if ! pgrep -x "polybar" > /dev/null; then
    polybar example &> /dev/null &  # Redirect output to /dev/null
fi

