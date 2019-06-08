#!/usr/bin/env bash

echo "SELECT datetime('now','localtime').sql
" | sqlite3
