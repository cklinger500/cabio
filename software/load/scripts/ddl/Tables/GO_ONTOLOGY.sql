/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE GO_ONTOLOGY
 DROP PRIMARY KEY CASCADE
/
DROP TABLE GO_ONTOLOGY CASCADE CONSTRAINTS PURGE
/

--
-- GO_ONTOLOGY  (Table) 
--
CREATE TABLE GO_ONTOLOGY ( GO_ID NUMBER NOT NULL, GO_NAME VARCHAR2(250 BYTE) NULL, HS_GENES NUMBER NOT NULL, MM_GENES NUMBER NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT GOOPK PRIMARY KEY (GO_ID), CONSTRAINT GONODUPS UNIQUE (GO_NAME), CONSTRAINT GOOBIGID UNIQUE (BIG_ID), UNIQUE (GO_NAME, HS_GENES, MM_GENES) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


