#!/bin/bash
# ARGUS-LP_OS auto-push script
# Place: ~/Desktop/Marketing/ARGUS-LP_OS/scripts/autopush.sh
# Usage: bash scripts/autopush.sh [commit message]
# Run after making changes. Automatically stages, commits, and pushes.

set -e
cd ~/Desktop/Marketing/ARGUS-LP_OS

MSG="${1:-auto: $(date '+%Y-%m-%d %H:%M')}"

git add -A
if git diff --cached --quiet; then
    echo "Nothing to commit."
    exit 0
fi
git commit -m "$MSG"
git push origin main
echo "✅ Pushed to Georgia-Longevity-Alliance/ARGUS-LP (public)"
