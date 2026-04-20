#!/usr/bin/env bash
# bootstrap-agent-env.sh
#
# Makes gbrain/bun discoverable from stripped-PATH subagent shells.
# Safe to run many times (idempotent). Run on any fresh environment.
#
# Problem it solves:
#   delegate_task subagents spawn with PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#   and do NOT source ~/.bashrc. Without symlinks into /usr/local/bin, every
#   `gbrain` / `bun` invocation fails "command not found".
#
# Source of truth: ~/brain/AGENTS.md §0 (signal-detector subagent).

set -euo pipefail

BUN_BIN="${HOME}/.bun/bin"

for cmd in gbrain bun bunx; do
  src="${BUN_BIN}/${cmd}"
  dst="/usr/local/bin/${cmd}"
  if [[ -x "${src}" ]]; then
    ln -sfn "${src}" "${dst}"
    echo "linked ${dst} -> ${src}"
  else
    echo "skip ${cmd}: ${src} not found" >&2
  fi
done

echo
echo "Verifying stripped-PATH resolution:"
env -i HOME="${HOME}" PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" \
  bash -c 'which gbrain && which bun'
