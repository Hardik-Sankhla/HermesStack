#!/usr/bin/env bash

echo
echo "==================================="
echo "      HermesStack Status"
echo "==================================="
echo

check_process() {
    local pattern="$1"
    local name="$2"

    if pgrep -f "$pattern" >/dev/null 2>&1; then
        echo "✓ $name"
    else
        echo "✗ $name"
    fi
}

echo "[Services]"

check_process "FreeLLMAPI" "FreeLLMAPI"

if pgrep -af "FreeLLMAPI" >/dev/null 2>&1 || \
   pgrep -af "tsx watch src/index.ts" >/dev/null 2>&1; then
    echo "✓ FreeLLMAPI"
else
    echo "✗ FreeLLMAPI"
fi

check_process "vite" "Vite Dashboard"
check_process "hermes dashboard" "Hermes Dashboard"

echo
echo "[Memory]"
free -h

echo
echo "[Disk]"
df -h /

echo
echo "[Top Processes]"
ps aux --sort=-%mem | head -10

echo
echo "Done."

