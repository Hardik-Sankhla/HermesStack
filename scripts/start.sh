#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo
echo "=========================================="
echo "Starting HermesStack"
echo "=========================================="
echo

echo "[1/3] Starting FreeLLMAPI"
echo

cd "$ROOT_DIR/apps/FreeLLMAPI"

nohup npm run dev > "$ROOT_DIR/workspace/freellmapi.log" 2>&1 &

sleep 10

echo
echo "[2/3] Checking Hermes Agent"
echo

hermes --version

echo
echo "[3/3] Environment Verification"
echo

[ -d "$ROOT_DIR/workspace" ] && echo "✓ Workspace"
[ -d "$ROOT_DIR/mcp" ] && echo "✓ MCP Directory"
[ -d "$ROOT_DIR/apps/FreeLLMAPI" ] && echo "✓ FreeLLMAPI"
[ -d "$ROOT_DIR/apps/Hermes-Agent" ] && echo "✓ Hermes Agent"

echo
echo "FreeLLMAPI Dashboard:"
echo "http://localhost:5173"

echo
echo "FreeLLMAPI API:"
echo "http://localhost:3001"

echo
echo "Log file:"
echo "$ROOT_DIR/workspace/freellmapi.log"

echo
echo "Ready"
