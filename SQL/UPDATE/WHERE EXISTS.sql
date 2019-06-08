CREATE TABLE t1 (id TEXT PRIMARY KEY,value TEXT);
CREATE TABLE t2 (id TEXT PRIMARY KEY,value TEXT);

INSERT INTO t1 VALUES (1,'value1'), (2,'value2');
INSERT INTO t2 VALUES (1,'new_value1'), (2,'new_value2');

UPDATE t1
SET value = (SELECT t2.value FROM t2 WHERE t2.id = t1.id )
WHERE EXISTS (SELECT * FROM t2 WHERE t2.id = t1.id);

SELECT * FROM t1;
