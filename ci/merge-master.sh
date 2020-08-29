#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

if [ "$CIRCLE_BRANCH" = master ]; then
  exit 0
fi

ghc exec -- run-ci merge master

ghc exec -- git log -n 5 --pretty=oneline
