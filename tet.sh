#!/usr/bin/env bash
{ set +x; } 2>/dev/null

sqlite3 /Users/russianidiot/Library/Caches/webloc.db <<EOF
PRAGMA table_info(webloc);
EOF
