#!/usr/bin/env bash
{ set +x; } 2>/dev/null

db="$(mktemp)" || exit
f="${BASH_SOURCE[0]%/*}"/data.csv

sqlite3 "$db" <<EOF
CREATE TABLE foo (id TEXT,value TEXT);
.mode csv
.import '$f' foo
EOF
