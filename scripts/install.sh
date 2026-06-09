#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo
echo "=========================================="
echo "        HermesStack Installer"
echo "=========================================="
echo

echo "[1/4] Updating submodules"
git submodule update --init --recursive

echo
echo "[2/4] Installing FreeLLMAPI"
echo

cd "$ROOT_DIR/apps/FreeLLMAPI"

npm install

echo
echo "[3/4] Installing Hermes Agent"
echo

cd "$ROOT_DIR/apps/Hermes-Agent"

chmod +x setup-hermes.sh

./setup-hermes.sh

echo
echo "[4/4] Installation Summary"
echo

echo "FreeLLMAPI Installed"
echo "Hermes Agent Installed"
echo "Workspace Ready"

echo
echo "Installation Complete"
