#!/bin/sh
#
# Open GitUp from finder
#
# (c) 2015 Jean-Olivier Irisson, GNU General Public License v3

# NB: dropped file(s) are positional arguments starting at $2 in Platypus
#     $1 is the name of the script itself

if [[ "$2" == "" ]]; then
  # no dropped files: get directory currently viewed in Finder (or Desktop)
  dir=$(/usr/bin/osascript <<EOT
    tell application "Finder"
      try
        set currFolder to (folder of the front window as alias)
      on error
        set currFolder to (path to desktop folder as alias)
      end try
      POSIX path of currFolder
    end tell
EOT
  )
else
  # dropped file or folder: get the folder part of the name
  dir=$(dirname "$2")
fi

# get to this repository top level
cd "$dir"
git_repo=$(git rev-parse --show-toplevel)
# NB: if not in a repository this will fail but that is later handled by GitUp
#     itself which will open in the current directory, i.e. $dir, and inform the
#     user it is not a repository.

# open it in GitUp
open -a GitUp "$git_repo"

exit 0
