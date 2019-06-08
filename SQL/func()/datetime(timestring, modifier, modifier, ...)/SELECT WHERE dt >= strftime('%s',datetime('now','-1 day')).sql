CREATE TABLE t (
    dt INTEGER
);
INSERT INTO t VALUES (strftime('%s','now'));
SELECT strftime('%Y-%m-%d %H:%M:%S',dt, 'unixepoch')
FROM t
WHERE dt >= strftime('%s',datetime('now','-1 day'));
