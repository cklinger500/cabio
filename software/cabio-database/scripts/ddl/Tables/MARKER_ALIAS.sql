/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE MARKER_ALIAS
 DROP PRIMARY KEY CASCADE
/
DROP TABLE MARKER_ALIAS CASCADE CONSTRAINTS PURGE
/

--
-- MARKER_ALIAS  (Table) 
--
CREATE TABLE MARKER_ALIAS ( ID NUMBER NULL, NAME VARCHAR2(500 BYTE) NOT NULL, BIG_ID VARCHAR2(500 BYTE) NULL, CONSTRAINT PK_MARKER_ALIAS PRIMARY KEY (ID), CONSTRAINT MABIGID UNIQUE (BIG_ID), UNIQUE (NAME) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


