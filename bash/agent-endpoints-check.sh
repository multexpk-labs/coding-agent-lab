#!/usr/bin/env bash
set -u

echo "== Agent Endpoint Check =="

check() {
  local name="$1" url="$2"
  if curl -fsS --max-time 5 "$url" >/dev/null 2>&1; then
    echo "$name: reachable ($url)"
  else
    echo "$name: unavailable or requires authentication ($url)"
  fi
}

check "Local Ollama" "http://127.0.0.1:11434/api/tags"
check "Local HTTP" "http://127.0.0.1/"