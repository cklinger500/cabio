/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE INTERNET_SOURCE
 DROP PRIMARY KEY CASCADE
/
DROP TABLE INTERNET_SOURCE CASCADE CONSTRAINTS PURGE
/

--
-- INTERNET_SOURCE  (Table) 
--
CREATE TABLE INTERNET_SOURCE ( ID NUMBER NOT NULL, NAME VARCHAR2(50 BYTE) NOT NULL, OWNER_INSTITUTION VARCHAR2(200 BYTE) NOT NULL, OWNER_PERSONS VARCHAR2(100 BYTE) NULL, SOURCE_URI VARCHAR2(200 BYTE) NULL, CONSTRAINT PK_INTERNET_SOURCE PRIMARY KEY (ID), UNIQUE (NAME, OWNER_INSTITUTION, OWNER_PERSONS, SOURCE_URI) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


