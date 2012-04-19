ALTER TABLE ZSTG_HUMAN_CYTOBAND
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_HUMAN_CYTOBAND CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_HUMAN_CYTOBAND  (Table) 
--
CREATE TABLE ZSTG_HUMAN_CYTOBAND ( CHROM VARCHAR2(25 BYTE) NOT NULL, CHROMSTART NUMBER(10) NOT NULL, CHROMEND NUMBER(10) NOT NULL, CYTONAME VARCHAR2(25 BYTE) NOT NULL, STAIN VARCHAR2(255 BYTE) NOT NULL, CHROMOSOME_NO VARCHAR2(20 BYTE) NOT NULL, CHROMOSOME_ID NUMBER NOT NULL, ID NVARCHAR2(20) NOT NULL, CYTOBAND VARCHAR2(100 BYTE) NOT NULL, CONSTRAINT ZHCPK PRIMARY KEY (ID), CONSTRAINT CYTOBAND_UNIQ UNIQUE (CYTOBAND) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

