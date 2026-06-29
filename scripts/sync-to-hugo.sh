#!/bin/bash
set -e
VAULT="./04 - PROIZVOD/SADRZAJ"
HUGO="../enterijer-rs-hugo/content/sr/blog"
mkdir -p "$HUGO"
rsync -av --delete --include='*.md' --exclude='_template*' "$VAULT/" "$HUGO/"
echo "Sync complete: $VAULT -> $HUGO"
