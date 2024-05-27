DROP TABLE IF EXISTS "task";
DROP TABLE IF EXISTS "user";

CREATE TABLE "user" (
	"id"          SERIAL PRIMARY KEY,
	"first_name"  TEXT   NOT NULL,
	"middle_name" TEXT,
	"last_name"   TEXT   NOT NULL,
	"birthday"    DATE   NOT NULL,
	"login"       TEXT   NOT NULL,
	"password"    TEXT   NOT NULL
);

CREATE TABLE "task" (
	"id"       SERIAL PRIMARY KEY,
	"owner_id" INT    NOT NULL REFERENCES "user" ON UPDATE RESTRICT ON DELETE CASCADE,
	"name"     TEXT   NOT NULL,
	"created"  DATE   NOT NULL DEFAULT now(),
	"x_1"      FLOAT  NOT NULL,
	"y_1"      FLOAT  NOT NULL,
	"x_0"      FLOAT  NOT NULL,
	"y_0"      FLOAT  NOT NULL,
	"r"        FLOAT  NOT NULL
);

INSERT INTO "user"
-------------------------------------------------------------------------------------------
("id", "first_name", "middle_name", "last_name", "birthday"  , "login" , "password") VALUES
-------------------------------------------------------------------------------------------
(1   , 'Иван'      , 'Иванович'   , 'Иванов'   , '2003-02-01', 'ivanov', '12345'   );
SELECT setval('user_id_seq', 1);

INSERT INTO "task"
----------------------------------------------------------------------------------------------
("id", "owner_id", "name"              , "created"   , "x_1", "y_1", "x_0", "y_0", "r") VALUES
----------------------------------------------------------------------------------------------
(1   , 1         , 'Простой случай'    , '2024-01-10', 1    , 7    , 11   , 2    , 5  ),
(2   , 1         , 'Тривиальный случай', '2024-01-15', 0    , 0    , 1    , 1    , 1  ),
(3   , 1         , 'Особый случай'     , '2024-01-13', 8    , 3    , 1    , 2    , 5  ),
(4   , 1         , 'Усложнённый случай', '2024-01-12', 33.8 , 0    , 0    , 0    , 13 );
SELECT setval('task_id_seq', 4);