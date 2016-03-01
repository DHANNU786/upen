
CREATE TABLE BANK
(
  ID     NUMBER,
  BNAME  VARCHAR2(100 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE BLOGIN
(
  ID      NUMBER,
  BID     VARCHAR2(100 BYTE),
  PWD     VARCHAR2(100 BYTE),
  BNAME   VARCHAR2(100 BYTE),
  STATUS  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE CLOGIN
(
  ID      NUMBER,
  CID     VARCHAR2(100 BYTE),
  PWD     VARCHAR2(100 BYTE),
  STATUS  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE CREJECT
(
  CID    VARCHAR2(100 BYTE),
  PWD    VARCHAR2(100 BYTE),
  ACCNO  VARCHAR2(100 BYTE),
  BNAME  VARCHAR2(100 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE CUSTOMER
(
  ID      VARCHAR2(100 BYTE),
  CID     VARCHAR2(100 BYTE),
  PWD     VARCHAR2(100 BYTE),
  ACCNO   VARCHAR2(100 BYTE),
  ATYPE   VARCHAR2(100 BYTE),
  CNAME   VARCHAR2(100 BYTE),
  BNAME   VARCHAR2(100 BYTE),
  BAL     NUMBER,
  TPWD    VARCHAR2(100 BYTE),
  STATUS  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE REJECT
(
  CID    VARCHAR2(100 BYTE),
  ACCNO  VARCHAR2(100 BYTE),
  ATYPE  VARCHAR2(100 BYTE),
  BNAME  VARCHAR2(100 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE TACCEPT
(
  SCID    VARCHAR2(100 BYTE),
  SACCNO  VARCHAR2(100 BYTE),
  ATYPE   VARCHAR2(100 BYTE),
  SBNAME  VARCHAR2(100 BYTE),
  SBAL    NUMBER,
  DCID    VARCHAR2(100 BYTE),
  DACCNO  VARCHAR2(100 BYTE),
  DTYPE   VARCHAR2(100 BYTE),
  DBNAME  VARCHAR2(100 BYTE),
  DBAL    NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE TRANSFER
(
  ID      VARCHAR2(100 BYTE),
  SACCNO  VARCHAR2(100 BYTE),
  DACCNO  VARCHAR2(100 BYTE),
  AMT     NUMBER,
  ATYPE   VARCHAR2(100 BYTE),
  DTYPE   VARCHAR2(100 BYTE),
  TPWD    VARCHAR2(100 BYTE),
  SBANK   VARCHAR2(100 BYTE),
  DBANK   VARCHAR2(100 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;



Insert into BANK
   (ID, BNAME)
 Values
   (1, 'sbi');
Insert into BANK
   (ID, BNAME)
 Values
   (2, 'AXIS');
Insert into BANK
   (ID, BNAME)
 Values
   (3, 'hdfc');
Insert into BANK
   (ID, BNAME)
 Values
   (4, 'icici');
Insert into BANK
   (ID, BNAME)
 Values
   (5, 'HSBC');
COMMIT;

Insert into BLOGIN
   (ID, BID, PWD, BNAME, STATUS)
 Values
   (1, 'sunil', 'sunil', 'sbi', 1);
Insert into BLOGIN
   (ID, BID, PWD, BNAME, STATUS)
 Values
   (2, 'suri', 'katta', 'sbi', 1);
Insert into BLOGIN
   (ID, BID, PWD, BNAME, STATUS)
 Values
   (3, 'Vara', 'sai', 'AXIS', 1);
Insert into BLOGIN
   (ID, BID, PWD, BNAME, STATUS)
 Values
   (4, '60606', 'bank', 'hdfc', 1);
Insert into BLOGIN
   (ID, BID, PWD, BNAME, STATUS)
 Values
   (5, '9630', 'bank', 'icici', 1);
Insert into BLOGIN
   (ID, BID, PWD, BNAME, STATUS)
 Values
   (6, 'HSBC', 'HSBC', 'HSBC', 1);
COMMIT;

Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (1, 'sunil', '123456', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (2, 'suni', '123456', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (3, '542', 'katta', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (4, 'Vara', 'sai', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (5, 'sai', 'sai', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (6, 'Sunil', 'Sunil', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (7, '90909', 'naresh', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (8, '808080', 'madhu', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (9, '234', '234', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (10, '67890', 'hello', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (11, '1230', 'jhansi', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (12, 'Madhu', 'Madhu', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (14, 'shashi', 'shashi', 1);
Insert into CLOGIN
   (ID, CID, PWD, STATUS)
 Values
   (13, 'Arvind', 'Arvind', 1);
COMMIT;


Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('sunil', 'sunil', '123456', '123456', 'Savings Account', 
    'sunil', 'sbi', 1500, '123456', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('suni', 'suni', '123456', '789456', 'Savings Account', 
    'suni', 'sbi', 3000, '123456', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('542', '542', 'katta', '5420', 'Savings Account', 
    'Surendra', 'sbi', 1500, 'katta', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('Vara', 'Vara', 'sai', '1', 'Savings Account', 
    'Vara', 'sbi', 2500, 'tp', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('sai', 'sai', 'sai', '2', 'Savings Account', 
    'Sai', 'sbi', 2000, 'saitp', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('Sunil', 'Sunil', 'Sunil', '9876', 'Savings Account', 
    'Sunil', 'sbi', 1500, 'Suniltp', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('90909', '90909', 'naresh', 'A12345', 'Savings Account', 
    'naresh', 'AXIS', 1500, 'naresh', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('808080', '808080', 'madhu', 'H34567', 'Savings Account', 
    'madhu', 'hdfc', 2500, 'madhu', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('234', '234', '234', '1234', 'Savings Account', 
    'nnn', 'sbi', 2000, '345', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('67890', '123654', 'jan', 'ic1234', 'Savings Account', 
    'jan', 'icici', 3000, 'jan', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('1230', '1234', 'jansi', 'hf1234', 'Savings Account', 
    'jansi', 'hdfc', 1000, 'jansi', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('1230', '1234', 'jansi', 'hf1234', 'Savings Account', 
    'jansi', 'hdfc', 1000, 'jansi', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('Madhu', 'Madhu', 'Madhu', '234567', 'Savings Account', 
    'Madhu', 'HSBC', 1000, '2098', 1);
Insert into CUSTOMER
   (ID, CID, PWD, ACCNO, ATYPE, 
    CNAME, BNAME, BAL, TPWD, STATUS)
 Values
   ('Arvind', 'Arvind', 'Arvind', '67890', 'Savings Account', 
    'Arvind', 'hdfc', 3000, '78', 1);
COMMIT;


Insert into TACCEPT
   (SCID, SACCNO, ATYPE, SBNAME, SBAL, 
    DCID, DACCNO, DTYPE, DBNAME, DBAL)
 Values
   ('sunil', '123456', 'Savings Account', 'sbi', 1000, 
    'suni', '789456', 'Savings Account', 'sbi', 1000);
Insert into TACCEPT
   (SCID, SACCNO, ATYPE, SBNAME, SBAL, 
    DCID, DACCNO, DTYPE, DBNAME, DBAL)
 Values
   ('542', '5420', 'Savings Account', 'sbi', 1500, 
    'sunil', '123456', 'Savings Account', 'sbi', 500);
Insert into TACCEPT
   (SCID, SACCNO, ATYPE, SBNAME, SBAL, 
    DCID, DACCNO, DTYPE, DBNAME, DBAL)
 Values
   ('Sunil', '9876', 'Savings Account', 'sbi', 1500, 
    'Vara', '1', 'Savings Account', 'sbi', 500);
Insert into TACCEPT
   (SCID, SACCNO, ATYPE, SBNAME, SBAL, 
    DCID, DACCNO, DTYPE, DBNAME, DBAL)
 Values
   ('90909', 'A12345', 'Savings Account', 'AXIS', 1500, 
    '808080', 'H34567', 'Savings Account', 'hdfc', 500);
Insert into TACCEPT
   (SCID, SACCNO, ATYPE, SBNAME, SBAL, 
    DCID, DACCNO, DTYPE, DBNAME, DBAL)
 Values
   ('1230', 'hf1234', 'Savings Account', 'hdfc', 1000, 
    '67890', 'ic1234', 'Savings Account', 'icici', 1000);
Insert into TACCEPT
   (SCID, SACCNO, ATYPE, SBNAME, SBAL, 
    DCID, DACCNO, DTYPE, DBNAME, DBAL)
 Values
   ('Madhu', '234567', 'Savings Account', 'HSBC', 1000, 
    'Arvind', '67890', 'Savings Account', 'hdfc', 1000);
COMMIT;

Insert into TRANSFER
   (ID, SACCNO, DACCNO, AMT, ATYPE, 
    DTYPE, TPWD, SBANK, DBANK)
 Values
   ('2', '5420', '5420', 5000, 'Savings Account', 
    'Savings Account', 'katta', 'sbi', 'sbi');
Insert into TRANSFER
   (ID, SACCNO, DACCNO, AMT, ATYPE, 
    DTYPE, TPWD, SBANK, DBANK)
 Values
   ('3', '234567', '67890', 1000, 'Savings Account', 
    'Savings Account', '2099', 'HSBC', 'hdfc');
COMMIT;

