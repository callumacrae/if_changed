#!/usr/bin/env bash
# github.com/callumacrae/if_changed - please send pull requests!

PWD=$(pwd)

changed_files=$(git diff-tree -r --name-only ORIG_HEAD HEAD)

function if_changed() {
  files=$(printf "%s" "$changed_files" | grep "$1$" -)
  for file in $files; do
    cd $(dirname "$file") && eval "$2" && cd "$PWD"
  done
}

# JavaScript
if_changed bower.json "bower install"
if_changed package.json "npm install"

# PHP
if_changed composer.json "composer install"

# Ruby
if_changed Gemfile.lock "bundle install"
if_changed db/schema.rb "rake db:migrate"
