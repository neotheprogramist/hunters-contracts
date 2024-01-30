#!/usr/bin/env bash

source .env && \

cargo +nightly contract build --release && \
cargo +nightly contract instantiate \
  --suri "$SEED" \
  --url $URL \
  --execute \
  --skip-confirm
