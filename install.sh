#!/bin/bash

#
# For use with a workspace build using an image that includes git. This
# script configures git using Coder's personalize script. This script runs
# each time the workspace is rebuilt. The script must be located at
# ~/personalize. The initial workspace will not contain this script, so
# it must be added after creation.
#

# Backup existing gitconfig if it exists
if [ -f ~/.gitconfig ]; then
echo "Backing up ~/.gitconfig"
mv ~/.gitconfig ~/.gitconfig.bak
fi

# Set name and email in git
echo "[user]\n\temail = youremailhere@gmail.com\n\tname = Your Name" > ~/.gitconfig
