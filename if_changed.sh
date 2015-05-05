#!/usr/bin/env bash
# github.com/callumacrae/if_changed - please send pull requests!

changed_files=$(git diff-tree -r --name-only ORIG_HEAD HEAD)

function if_changed() {
  [[ "$changed_files" == *"$1"* ]] && eval "$2"
}

# JavaScript
if_changed bower.json "bower install"
if_changed package.json "npm install"

# PHP
if_changed composer.lock "composer install"
if_changed composer.json "composer install"

# Ruby
if_changed Gemfile.lock "bundle install"
if_changed db/schema.rb "rake db:migrate"
