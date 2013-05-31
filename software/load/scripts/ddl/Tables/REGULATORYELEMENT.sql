/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE REGULATORYELEMENT
 DROP PRIMARY KEY CASCADE
/
DROP TABLE REGULATORYELEMENT CASCADE CONSTRAINTS PURGE
/

--
-- REGULATORYELEMENT  (Table) 
--
CREATE TABLE REGULATORYELEMENT ( REGULATORYELEMENT_ID NUMBER NOT NULL, NAME VARCHAR2(50 BYTE) NOT NULL, REGULATORYELEMENTTYPE_ID NUMBER NOT NULL, TRANSGENE_ID NUMBER NOT NULL, TAXON_ID NUMBER NULL, CONSTRAINT REGELEMPK PRIMARY KEY (REGULATORYELEMENT_ID), UNIQUE (REGULATORYELEMENT_ID, NAME, REGULATORYELEMENTTYPE_ID, TAXON_ID, TRANSGENE_ID) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


