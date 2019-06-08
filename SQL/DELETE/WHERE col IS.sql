CREATE TABLE t(
    col text
);
INSERT INTO t VALUES ('name1'), ('name2'), ('name3');
DELETE FROM t WHERE col IS'name1';
SELECT * FROM t;
