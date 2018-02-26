CREATE TABLE IF NOT EXISTS "FARM_EVENT" (
    "ID" INTEGER PRIMARY KEY,
    "FARM_UID" BLOB,
    "VERSION" INTEGER,
    "EVENTS" JSON
);

CREATE INDEX IF NOT EXISTS "FARM_EVENT_FARM_UID_INDEX" ON "FARM_EVENT" ("FARM_UID");

CREATE TABLE IF NOT EXISTS "FARM_READ" (
    "UID" BLOB PRIMARY KEY,
    "NAME" TEXT,
    "LATITUDE" TEXT,
    "LONGITUDE" TEXT,
    "TYPE" TEXT,
    "COUNTRY_CODE" TEXT,
    "CITY_CODE" TEXT,
    "IS_ACTIVE" INTEGER,
    "CREATED_DATE" TEXT
);

CREATE UNIQUE INDEX IF NOT EXISTS "FARM_READ_UID_UNIQUE_INDEX" ON "FARM_READ" ("UID");

CREATE TABLE IF NOT EXISTS "RESERVOIR_EVENT" (
    "ID" INTEGER PRIMARY KEY,
    "RESERVOIR_UID" BLOB,
    "VERSION" INTEGER,
    "CREATED_DATE" TEXT,
    "EVENT" BLOB
);

CREATE INDEX IF NOT EXISTS "RESERVOIR_EVENT_RESERVOIR_UID_INDEX" ON "RESERVOIR_EVENT" ("RESERVOIR_UID");

CREATE TABLE IF NOT EXISTS "RESERVOIR_READ" (
    "UID" BLOB PRIMARY KEY,
    "NAME" TEXT,
    "WATERSOURCE_TYPE" TEXT,
    "WATERSOURCE_CAPACITY" REAL,
    "FARM_UID" BLOB,
    "FARM_NAME" TEXT,
    "CREATED_DATE" TEXT
);

CREATE INDEX IF NOT EXISTS "RESERVOIR_READ_UID_UNIQUE_INDEX" ON "RESERVOIR_READ" ("UID");

CREATE TABLE IF NOT EXISTS "RESERVOIR_READ_NOTES" (
    "UID" BLOB PRIMARY KEY,
    "RESERVOIR_UID" BLOB,
    "CONTENT" TEXT,
    "CREATED_DATE" TEXT
);

CREATE UNIQUE INDEX IF NOT EXISTS "RESERVOIR_READ_NOTES_UID_UNIQUE_INDEX" ON "RESERVOIR_READ_NOTES" ("UID");
CREATE INDEX IF NOT EXISTS "RESERVOIR_READ_NOTES_RESERVOIR_UID_INDEX" ON "RESERVOIR_READ_NOTES" ("RESERVOIR_UID");