#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo "Starting HermesStack..."

cd "$ROOT_DIR/apps/FreeLLMAPI"

nohup npm run dev \
> "$ROOT_DIR/workspace/freellmapi.log" \
2>&1 &

echo $! > "$ROOT_DIR/workspace/freellmapi.pid"

sleep 5

echo
echo "FreeLLMAPI Started"
echo
echo "API:"
echo "http://localhost:3001"
echo
echo "Dashboard:"
echo "http://localhost:5173"
echo
echo "Hermes command:"
echo "hermes"
