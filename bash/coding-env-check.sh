#!/usr/bin/env bash
set -u

echo "== Coding Agent Environment =="
printf 'Host: '; hostname 2>/dev/null || true
printf 'OS: '; (grep PRETTY_NAME /etc/os-release 2>/dev/null || uname -s) | head -n1
printf 'Kernel: '; uname -r 2>/dev/null || true
echo
for cmd in git python3 node npm curl jq; do
  if command -v "$cmd" >/dev/null 2>&1; then
    printf '%-8s OK  %s\n' "$cmd" "$(command -v "$cmd")"
  else
    printf '%-8s MISSING\n' "$cmd"
  fi
done
echo
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Git repository: yes"
  git branch --show-current
  git status --short
else
  echo "Git repository: no"
fi