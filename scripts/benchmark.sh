#!/usr/bin/env bash

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

mkdir -p "$ROOT_DIR/workspace/benchmarks"

OUTFILE="$ROOT_DIR/workspace/benchmarks/benchmark-$(date +%Y%m%d-%H%M%S).txt"

{
echo "==================================="
echo "HermesStack Benchmark"
echo "==================================="

echo
echo "[Memory]"
free -h

echo
echo "[Disk]"
df -h

echo
echo "[CPU]"
uptime

echo
echo "[Top Processes]"
ps aux --sort=-%mem | head -20

} | tee "$OUTFILE"

echo
echo "Saved:"
echo "$OUTFILE"
