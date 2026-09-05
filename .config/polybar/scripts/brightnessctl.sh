#!/bin/bash

# Get the brightness percentage using brightnessctl.
# The -oP '\(\K[0-9]+%' part extracts the percentage number (e.g., '25%') from the output.
BRIGHTNESS_PERCENTAGE=$(brightnessctl | grep -oP '\(\K[0-9]+%' | head -n 1)

# Output with a symbol for Polybar
echo "$BRIGHTNESS_PERCENTAGE"
