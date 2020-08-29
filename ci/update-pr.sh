#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")/.."

ghc exec -- run-ci update-pr --base master
