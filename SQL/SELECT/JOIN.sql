CREATE TABLE IF NOT EXISTS agents(
    path TEXT PRIMARY KEY,
    label TEXT UNIQUE
);
CREATE TABLE IF NOT EXISTS locks(
    path TEXT,
    key TEXT,
    FOREIGN KEY(path) REFERENCES agents(path),
    UNIQUE (path,key)
);

INSERT INTO agents VALUES ('file1.plist','label1'), ('file2.plist','label2');
INSERT INTO locks VALUES ('file1.plist','afk'), ('file1.plist','video');

SELECT a.path--, COUNT(l.path) as count
FROM agents as a
JOIN locks as l ON l.path=a.path
GROUP BY l.path
HAVING COUNT(l.path)>0
