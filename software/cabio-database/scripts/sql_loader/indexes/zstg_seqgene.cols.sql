
create index ZSTG_SEQGENE_EVIDENCE_C on ZSTG_SEQGENE(EVIDENCE_CODE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_TRANSCRIPT on ZSTG_SEQGENE(TRANSCRIPT) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_GROUP_LABE on ZSTG_SEQGENE(GROUP_LABEL) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_FEATURE_TY on ZSTG_SEQGENE(FEATURE_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_FEATURE_ID on ZSTG_SEQGENE(FEATURE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_FEATURE_NA on ZSTG_SEQGENE(FEATURE_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_CTG_ORIENT on ZSTG_SEQGENE(CTG_ORIENT) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_CTG_STOP on ZSTG_SEQGENE(CTG_STOP) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_CTG_START on ZSTG_SEQGENE(CTG_START) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_CONTIG on ZSTG_SEQGENE(CONTIG) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_CHR_ORIENT on ZSTG_SEQGENE(CHR_ORIENT) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_CHR_STOP on ZSTG_SEQGENE(CHR_STOP) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_CHR_START on ZSTG_SEQGENE(CHR_START) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_CHROMOSOME on ZSTG_SEQGENE(CHROMOSOME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQGENE_TAX_ID on ZSTG_SEQGENE(TAX_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
