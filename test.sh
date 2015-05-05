#!/usr/bin/env bash
# github.com/callumacrae/if_changed - please send pull requests!

a_changed_file=$(git diff-tree -r --name-only ORIG_HEAD HEAD | head -1)

. ./if_changed.sh

if_changed definitelynot "exit 1"
if_changed "$a_changed_file" 'echo "success"'
