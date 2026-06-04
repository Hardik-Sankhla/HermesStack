#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo "================================="
echo " HermesStack Installer"
echo "================================="

if [ -n "$TERMUX_VERSION" ]; then
    PLATFORM="termux"
else
    PLATFORM="linux"
fi

echo
echo "Platform: $PLATFORM"

echo
echo "[1/5] Updating submodules"

cd "$ROOT_DIR"

git submodule update --init --recursive

echo
echo "[2/5] Installing FreeLLMAPI"

cd "$ROOT_DIR/apps/FreeLLMAPI"

if [ ! -d node_modules ]; then
    npm install
else
    echo "FreeLLMAPI already installed"
fi

echo
echo "[3/5] Installing Hermes Agent"

if [ "$PLATFORM" = "termux" ]; then

    if ! command -v hermes >/dev/null 2>&1; then

        curl -fsSL \
        https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh \
        | bash

    else

        echo "Hermes already installed"

    fi

else

    if ! command -v hermes >/dev/null 2>&1; then

        curl -fsSL \
        https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh \
        | bash

    else

        echo "Hermes already installed"

    fi

fi

echo
echo "[4/5] Creating workspace folders"

mkdir -p "$ROOT_DIR/workspace"
mkdir -p "$ROOT_DIR/backups"
mkdir -p "$ROOT_DIR/models"

echo
echo "[5/5] Verification"

node --version || true
npm --version || true
python --version || true
hermes --version || true

echo
echo "HermesStack installation complete."
