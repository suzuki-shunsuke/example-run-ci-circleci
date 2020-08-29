#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")/.."

if [ "$CIRCLE_BRANCH" != master ]; then
  exit 0
fi

ghc exec -- run-ci update-pr --base master
