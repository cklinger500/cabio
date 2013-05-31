/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE ZSTG_MERGED_SNP_RSIDS_MAPPING
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_MERGED_SNP_RSIDS_MAPPING CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_MERGED_SNP_RSIDS_MAPPING  (Table) 
--
CREATE TABLE ZSTG_MERGED_SNP_RSIDS_MAPPING ( OLD_RS_ID NVARCHAR2(23) NOT NULL, NEW_RS_ID NVARCHAR2(23) NULL, BUILD_ID NVARCHAR2(2000) NULL, ORIENTATION NVARCHAR2(2000) NULL, CREATE_TIME VARCHAR2(23 BYTE) NULL, LAST_UPDATE_TIME VARCHAR2(23 BYTE) NULL, CURRENT_RS_ID NVARCHAR2(23) NULL, ORIEN2CURRENT NVARCHAR2(2000) NULL, CONSTRAINT ZSTG_MERGED_SNP_RSIDS_MAP_PK PRIMARY KEY (OLD_RS_ID) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


