#!/usr/bin/env bash
{ set +x; } 2>/dev/null

db="$(mktemp)" || exit
f="${BASH_SOURCE[0]%/*}"/data.csv

sqlite3 "$db" <<EOF
.mode csv
.import '$f' foo
PRAGMA table_info(foo);
EOF
