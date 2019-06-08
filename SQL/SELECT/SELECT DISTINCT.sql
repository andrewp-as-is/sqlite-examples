CREATE TABLE t(
    value text
);
INSERT INTO t VALUES ('value1'), ('value1'), ('value2'), ('value2');
SELECT DISTINCT value FROM t;
