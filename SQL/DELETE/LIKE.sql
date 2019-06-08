CREATE TABLE t(
    name text
);
INSERT INTO t VALUES ('name_1'), ('name-2'), ('name3'), ('else');
DELETE FROM t WHERE name LIKE 'name_%';
SELECT * FROM t;
