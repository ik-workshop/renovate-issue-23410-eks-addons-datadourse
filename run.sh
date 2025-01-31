#!/bin/bash

# set -x

RENOVATE_CONFIG_FILE=$PWD/config.js

cleanup()
{
  echo "Removing temporary files:"
  rm -rf "$RENOVATE_CONFIG_FILE"
  exit
}

trap cleanup EXIT

cd $RENOVATE_REPO_PATH

# nvm use v22.13.1

# --print-config
#

cp $RENOVATE_CONFIG_FILE ./config.js

LOG_LEVEL=debug pnpm ts-node lib/renovate.ts --print-config --dry-run=false

# LOG_LEVEL=debug pnpm ts-node lib/renovate.ts --help
