#!/bin/bash

# Run Open terminal script
SCRIPT_PATH=`dirname "$0"`
echo $SCRIPT_PATH
PROJ_NAME=${XcodeWorkspace%.*}
osascript $SCRIPT_PATH/OpenTerminal.scpt $PROJ_NAME "cd \"$PWD\" && clear"

