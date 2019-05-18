#!/bin/bash

# Drop Intellijdea trial keys


removeFrom() {
    for fileName in $1; do
        if [ ! -f fileName ]; then
            echo "Files with \"$fileName\" pattern not found."
            return
        fi

        echo "Try to remove \"$fileName\":"
        rm $fileName
        if [ $? -eq 0 ]; then
            echo "File \"$fileName\" successfully removed"
        fi
    done
}

prefFolder="$HOME/Library/Preferences"

appCodeFolder="AppCode*"
golandFolder="GoLand*"
clionFolder="CLion*"

# remove all jetbrains plists
echo "Try to remove plist files"
removeFrom $prefFolder/jetbrains.*.plist

# remove appcode
echo ""
echo "Try to remove appcode eval keys"
removeFrom $prefFolder/$appCodeFolder/eval/*.key

# remove goland
echo ""
echo "Try to remove goland eval keys"
removeFrom $prefFolder/$golandFolder/eval/*.key

# remove clion
echo ""
echo "Try to remove clion eval keys"
removeFrom $prefFolder/$clionFolder/eval/*.key

echo "Done"

