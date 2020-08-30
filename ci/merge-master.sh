#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

if [ "$CIRCLE_BRANCH" = master ]; then
  exit 0
fi

ghc exec -- git fetch origin master
ghc exec -- env GIT_AUTHOR_NAME=ci-helper GIT_AUTHOR_EMAIL=ci-helper@example.com GIT_COMMITTER_NAME=ci-helper GIT_COMMITTER_EMAIL=ci-helper@example.com git merge --no-edit origin/master

ghc exec -- git log -n 5 --pretty=oneline
