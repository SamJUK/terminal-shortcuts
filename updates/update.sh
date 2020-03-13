#!/usr/bin/env bash
DIVIDER="------------------"
echo "$DIVIDER\nUPDATING SCRIPTS\nTIME $(date)\n$DIVIDER\n" >> /opt/sam/updates/update.log;
GIT_SSH_COMMAND="ssh -i ../.ssh/id_rsa -F /dev/null" git --git-dir="/opt/sam/.git" pull >> /opt/sam/updates/update.log
