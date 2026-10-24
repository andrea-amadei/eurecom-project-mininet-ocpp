PRAGMA application_id=0;
PRAGMA user_version=0;
BEGIN TRANSACTION;
CREATE TABLE Events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type VARCHAR(255) NOT NULL,
    timestamp DATETIME NOT NULL DEFAULT current_timestamp,
    target VARCHAR(255) NOT NULL DEFAULT '*',
    data text NOT NULL
);
INSERT INTO "Events" VALUES(1,'reserve_now','2024-02-21 09:47:17','E2507-8420-1274','{"type": "ISO15693", "id_token": "1122334455667788"}');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('Events',1);
COMMIT;
