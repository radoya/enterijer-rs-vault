#!/bin/bash
set -e
SLUG=$1
TITLE=$2
DATE=$(date +%Y-%m-%d)
if [ -z "$SLUG" ] || [ -z "$TITLE" ]; then
  echo "Usage: ./new-content.sh <slug> <title>"
  exit 1
fi
mkdir -p '04 - PROIZVOD/SADRZAJ'
cat > "04 - PROIZVOD/SADRZAJ/${SLUG}.md" <<EOF
---
title: "${TITLE}"
date: "${DATE}T10:00:00+02:00"
draft: true
description: ""
tags: []
---

EOF
echo "Created: 04 - PROIZVOD/SADRZAJ/${SLUG}.md"
