#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$ROOT_DIR"

echo
echo "[1/4] Updating HermesStack"

git pull

echo
echo "[2/4] Updating submodules"

git submodule update \
--init \
--recursive \
--remote

echo
echo "[3/4] Updating FreeLLMAPI"

cd "$ROOT_DIR/apps/FreeLLMAPI"

npm install

echo
echo "[4/4] Hermes"

echo "Hermes updates are managed upstream."
echo "Run: hermes --version"

echo
echo "Update complete."
