#!/bin/bash

# Run Open terminal script

PROJ_NAME=${XcodeWorkspace%.*}
osascript /Users/best4u/Scripts/OpenTerminal.scpt "$PROJ_NAME by XCode" "$PWD"

