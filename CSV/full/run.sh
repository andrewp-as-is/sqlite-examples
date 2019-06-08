#!/usr/bin/env bash
{ set +x; } 2>/dev/null

db="$(mktemp)" || exit
f="${BASH_SOURCE[0]%/*}"/data.csv

#

sqlite3 "$db" <<EOF
CREATE TABLE stable_table (id TEXT PRIMARY KEY,value TEXT);
INSERT INTO stable_table VALUES (1,'value1'), (2,'value2');

.mode csv
.import '$f' tmp_table

.mode list
UPDATE tmp_table
SET value=stable_table.value
WHERE stable_table ON stable_table.id=tmp_table.id
EOF
