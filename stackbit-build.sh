#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://localhost:8092/init.js 6008a9f86b574d2f6a2c5a50

echo "stackbit-build.sh: finished build"
