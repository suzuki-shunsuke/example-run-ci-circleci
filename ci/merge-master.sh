#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

ghc exec -- run-ci merge master

ghc exec -- git log -n 5 --pretty=oneline
