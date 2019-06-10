#!/bin/bash

prefFolder="$HOME/Library/Preferences"


# remove all jetbrains plists
rm "$prefFolder/jetbrains*.plist"

# remove appcode
rm $prefFolder/AppCode*/eval/*.key

# remove goland
rm $prefFolder/$GoL*/eval/*.key

# remove clion
rm $prefFolder/$CLi*/eval/*.key

echo "Done"

