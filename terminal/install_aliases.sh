#!/usr/bin/env bash
DIVIDER="-------------------------"
INJECTION="\n# SAM SCRIPTS\nfor f in /opt/sam/terminal/enabled/*.conf; do source $f; done\n# END SAM SCRIPTS"
echo $INJECTION >> ~/.zprofile
echo $INJECTION >> ~/.bash_profile

echo $DIVIDER
echo "Mapped enabled aliases into zprofile & bash_profile files.";
echo $DIVIDER
