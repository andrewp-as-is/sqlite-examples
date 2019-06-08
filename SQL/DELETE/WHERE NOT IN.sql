CREATE TABLE t(
    name text,
    value text
);
INSERT INTO t VALUES ('name1','value1'), ('name2','value2'), ('name3','value3');
DELETE FROM t WHERE name NOT IN ('name2','name3');
SELECT * FROM t;
