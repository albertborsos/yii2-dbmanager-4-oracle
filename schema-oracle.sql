--------------------------------------------------------
--  DDL for Table TBL_AUTH_ASSIGNMENT
--------------------------------------------------------

  CREATE TABLE "TBL_AUTH_ASSIGNMENT"
   (	"ITEM_NAME" VARCHAR2(64 BYTE),
	"USER_ID" VARCHAR2(64 BYTE),
	"CREATED_AT" NUMBER
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  TABLESPACE "TS_TBL" ;
--------------------------------------------------------
--  DDL for Table TBL_AUTH_ITEM
--------------------------------------------------------

  CREATE TABLE "TBL_AUTH_ITEM"
   (	"NAME" VARCHAR2(64 BYTE),
	"TYPE" NUMBER,
	"DESCRIPTION" VARCHAR2(4000 BYTE),
	"RULE_NAME" VARCHAR2(64 BYTE),
	"DATA" VARCHAR2(4000 BYTE),
	"CREATED_AT" NUMBER,
	"UPDATED_AT" NUMBER
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  TABLESPACE "TS_TBL" ;
--------------------------------------------------------
--  DDL for Table TBL_AUTH_ITEM_CHILD
--------------------------------------------------------

  CREATE TABLE "TBL_AUTH_ITEM_CHILD"
   (	"PARENT" VARCHAR2(64 BYTE),
	"CHILD" VARCHAR2(64 BYTE)
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  TABLESPACE "TS_TBL" ;
--------------------------------------------------------
--  DDL for Table TBL_AUTH_RULE
--------------------------------------------------------

  CREATE TABLE "TBL_AUTH_RULE"
   (	"NAME" VARCHAR2(64 BYTE),
	"DATA" VARCHAR2(4000 BYTE),
	"CREATED_AT" NUMBER,
	"UPDATED_AT" NUMBER
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  TABLESPACE "TS_TBL" ;
REM INSERTING into TBL_AUTH_ASSIGNMENT
SET DEFINE OFF;
REM INSERTING into TBL_AUTH_ITEM
SET DEFINE OFF;
REM INSERTING into TBL_AUTH_ITEM_CHILD
SET DEFINE OFF;
REM INSERTING into TBL_AUTH_RULE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index TBL_AUTH_ASSIGNMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_AUTH_ASSIGNMENT_PK" ON "TBL_AUTH_ASSIGNMENT" ("ITEM_NAME", "USER_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "TS_TBL" ;
--------------------------------------------------------
--  DDL for Index TBL_AUTH_ITEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_AUTH_ITEM_PK" ON "TBL_AUTH_ITEM" ("NAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "TS_TBL" ;
--------------------------------------------------------
--  DDL for Index TBL_AUTH_ITEM_CHILD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_AUTH_ITEM_CHILD_PK" ON "TBL_AUTH_ITEM_CHILD" ("PARENT", "CHILD")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "TS_TBL" ;
--------------------------------------------------------
--  DDL for Index TBL_AUTH_RULE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_AUTH_RULE_PK" ON "TBL_AUTH_RULE" ("NAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "TS_TBL" ;
--------------------------------------------------------
--  Constraints for Table TBL_AUTH_ASSIGNMENT
--------------------------------------------------------

  ALTER TABLE "TBL_AUTH_ASSIGNMENT" ADD CONSTRAINT "TBL_AUTH_ASSIGNMENT_PK" PRIMARY KEY ("ITEM_NAME", "USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "TS_TBL"  ENABLE;
  ALTER TABLE "TBL_AUTH_ASSIGNMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_AUTH_ASSIGNMENT" MODIFY ("ITEM_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_AUTH_ITEM
--------------------------------------------------------

  ALTER TABLE "TBL_AUTH_ITEM" ADD CONSTRAINT "TBL_AUTH_ITEM_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "TS_TBL"  ENABLE;
  ALTER TABLE "TBL_AUTH_ITEM" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "TBL_AUTH_ITEM" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_AUTH_ITEM_CHILD
--------------------------------------------------------

  ALTER TABLE "TBL_AUTH_ITEM_CHILD" ADD CONSTRAINT "TBL_AUTH_ITEM_CHILD_PK" PRIMARY KEY ("PARENT", "CHILD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "TS_TBL"  ENABLE;
  ALTER TABLE "TBL_AUTH_ITEM_CHILD" MODIFY ("CHILD" NOT NULL ENABLE);
  ALTER TABLE "TBL_AUTH_ITEM_CHILD" MODIFY ("PARENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_AUTH_RULE
--------------------------------------------------------

  ALTER TABLE "TBL_AUTH_RULE" ADD CONSTRAINT "TBL_AUTH_RULE_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "TS_TBL"  ENABLE;
  ALTER TABLE "TBL_AUTH_RULE" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBL_AUTH_ASSIGNMENT
--------------------------------------------------------

  ALTER TABLE "TBL_AUTH_ASSIGNMENT" ADD CONSTRAINT "FK_ITEM_NAME" FOREIGN KEY ("ITEM_NAME")
	  REFERENCES "TBL_AUTH_ITEM" ("NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_AUTH_ITEM
--------------------------------------------------------

  ALTER TABLE "TBL_AUTH_ITEM" ADD CONSTRAINT "FK_RULE_NAME" FOREIGN KEY ("RULE_NAME")
	  REFERENCES "TBL_AUTH_RULE" ("NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_AUTH_ITEM_CHILD
--------------------------------------------------------

  ALTER TABLE "TBL_AUTH_ITEM_CHILD" ADD CONSTRAINT "FK_CHILD" FOREIGN KEY ("CHILD")
	  REFERENCES "TBL_AUTH_ITEM" ("NAME") ENABLE;
  ALTER TABLE "TBL_AUTH_ITEM_CHILD" ADD CONSTRAINT "FK_PARENT" FOREIGN KEY ("PARENT")
	  REFERENCES "TBL_AUTH_ITEM" ("NAME") ENABLE;
