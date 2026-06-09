#!/usr/bin/env bash
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

echo
echo "==================================="
echo "      HermesStack Doctor"
echo "==================================="
echo

echo "[System]"

echo -n "Node: "
node --version 2>/dev/null || echo "Not Installed"

echo -n "npm: "
npm --version 2>/dev/null || echo "Not Installed"

echo -n "Python: "
python3 --version 2>/dev/null || echo "Not Installed"

echo -n "UV: "
uv --version 2>/dev/null || echo "Not Installed"

echo

echo "[Hermes Agent]"

if command -v hermes >/dev/null 2>&1; then
    hermes --version
else
    echo "Hermes not found"
fi

echo

echo "[Git Submodules]"

git submodule status

echo

echo "[Directories]"

for d in \
    apps \
    docs \
    workspace \
    mcp \
    scripts
do
    if [ -d "$d" ]; then
        echo "✓ $d"
    else
        echo "✗ $d"
    fi
done

echo

echo "[Ports]"

for p in 3001 5173 9119
do
    if ss -ltn 2>/dev/null | grep -q ":$p "; then
        echo "✓ Port $p"
    else
        echo "✗ Port $p"
    fi
done

echo

echo "[Memory]"
free -h

echo

echo "[Disk]"
df -h / | tail -1

echo

echo "[Repository]"

git status --short

echo

echo "Doctor complete."
