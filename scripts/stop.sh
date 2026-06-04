#!/usr/bin/env bash

echo "Stopping HermesStack..."

pkill -f "tsx watch" || true
pkill -f "vite" || true

rm -f workspace/*.pid

echo "Done."
