#!/bin/sh

set -x
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git config user.name "${GITHUB_ACTOR}"
echo "Version Bump"
npm version $1
git push --tags 

