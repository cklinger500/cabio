/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE AR_GENE_SYMBOL_TMP
 DROP PRIMARY KEY CASCADE
/
DROP TABLE AR_GENE_SYMBOL_TMP CASCADE CONSTRAINTS PURGE
/

--
-- AR_GENE_SYMBOL_TMP  (Table) 
--
CREATE TABLE AR_GENE_SYMBOL_TMP ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, GENE_SYMBOL VARCHAR2(2500 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, PRIMARY KEY (PROBE_SET_ID, GENE_SYMBOL, GENECHIP_ARRAY) DISABLE ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


