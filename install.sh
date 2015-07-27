#!/usr/bin/env bash
# github.com/callumacrae/if_changed - please send pull requests!

hookPath=".git/hooks/post-merge"
thisPath="$(dirname "$0")/$(readlink "$0")"
scriptPath="$(dirname "$thisPath")/if_changed.sh"

if [ "$1" == "install" ]
then
  echo "Installing post-merge hook"

  if [ ! -d ".git" ]
  then
    echo "fatal: .git directory not present"
    exit 1
  fi

  if [ -f "$hookPath" ]
  then
    echo "fatal: post-merge hook already exists, cannot be automatically installed"
    exit 1
  fi

  cp "$scriptPath" "$hookPath"
  chmod +x "$hookPath"
  echo "Installed :-)"
else
  . "$scriptPath"
fi
