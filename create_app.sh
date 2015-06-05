#!/bin/sh
#
# Create an app launcher with Platypus
#
# NB: before running this, open Platypus' preferences and install the command line tool
#
# (c) 2015 Jean-Olivier Irisson, GNU General Public License v3

# Destination
appName="GitUp Here"
# here=$(pwd)
# dest="$here/"$appName".app"
dest="/Applications/$appName.app"
echo "Creating $dest"
echo ""
rm -Rf "$dest"

# Create the app
# man platypus for more information
/usr/local/bin/platypus \
  -a "$appName" \
  -i "AppIcon.icns" \
  -V "1.0" \
  -p "/bin/sh" \
  -o "None" \
  -D -B -R \
  gitup_here.sh "$dest"

exit 0
