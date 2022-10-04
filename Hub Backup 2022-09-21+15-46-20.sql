CREATE TABLE "devices"
(
    "id"           INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
    "rig_id"       INTEGER NOT NULL UNIQUE,
    "rig_passwd"   TEXT    NOT NULL,
    "login"        TEXT,
    "password"     TEXT,
    "farm_hash"    TEXT    NOT NULL,
    "ip"           TEXT    NOT NULL,
    "kind"         TEXT    NOT NULL,
    "uid"          TEXT    NOT NULL,
    "meta"         BLOB,
    "config"       BLOB,
    "created_at"   INTEGER NOT NULL,
    "last_ping_at" INTEGER NOT NULL
, "type" TEXT NOT NULL DEFAULT '', "mac" TEXT NOT NULL DEFAULT '', "farm_id" NUMERIC NOT NULL DEFAULT 0, "worker_name" TEXT, "wd_enabled" NUMERIC NOT NULL DEFAULT 0, "confseq" INTEGER NOT NULL DEFAULT 0);
CREATE TABLE "props"
(
    "key"   TEXT NOT NULL UNIQUE,
    "value" BLOB NOT NULL,
    PRIMARY KEY ("key")
);
INSERT INTO "props" VALUES('hiveos.rig.id',X'36303432303130');
INSERT INTO "props" VALUES('hiveos.rig.password',X'536159626A783248');
INSERT INTO "props" VALUES('hiveos.farm_hash',X'61623132383861343330626133333764396136613539633436376434343862646233643932353266');
INSERT INTO "props" VALUES('setup.isComplete',X'74727565');
CREATE TABLE schema_migrations (version uint64,dirty bool);
INSERT INTO "schema_migrations" VALUES(6,0);
DELETE FROM "sqlite_sequence";
CREATE UNIQUE INDEX version_unique ON schema_migrations (version);
