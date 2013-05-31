/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE ACE
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ACE CASCADE CONSTRAINTS PURGE
/

--
-- ACE  (Table) 
--
CREATE TABLE ACE ( ACE_ID NUMBER(38) NOT NULL, FILENAME VARCHAR2(200 BYTE) NOT NULL, PROJECT_ID NUMBER(38) NOT NULL, SUBSET_ID NUMBER(38) NOT NULL, ACCESSION VARCHAR2(10 BYTE) NULL, CLUSTER_NUMBER NUMBER(38) NULL, IS_TOPLEVEL NUMBER(38) NULL, GENE_ID NUMBER NULL, PRIMARY KEY (ACE_ID, FILENAME, PROJECT_ID, SUBSET_ID) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


