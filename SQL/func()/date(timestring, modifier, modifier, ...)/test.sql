CREATE TABLE t (
    dt INTEGER
);
INSERT INTO t VALUES (strftime('%s','now'));
SELECT * FROM t
WHERE dt >= date('now','-1 day')
AND dt <  date('now');
