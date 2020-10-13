#!/bin/bash

next_version=$(npm version $@)

# Add all changes in the subdirectory
git add .

# Commit changes
git commit -m "chore: $1 $next_version"

# Create lightweight tag
git tag "$next_version"

git push
git push --tags
