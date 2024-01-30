#!/usr/bin/env bash

source .env && \

cargo +nightly contract call --suri "$SEED" --url $URL \
  --contract $CONTRACT \
  --message mint_next \
  --args $ACCOUNT \
  --execute \
  --skip-confirm
