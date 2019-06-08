#!/usr/bin/env bash
{ set +x; } 2>/dev/null

db="$(mktemp)" || exit

sqlite3 "$db" <<EOF
SELECT 1;
SELECT 2;
EOF
