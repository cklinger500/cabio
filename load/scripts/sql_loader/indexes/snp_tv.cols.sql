
create index SNP_TVP_TV_ID on SNP_TV(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_DB_SNP_ID on SNP_TV(DB_SNP_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_VALIDATION on SNP_TV(VALIDATION_STATUS) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_CHROMOSOME on SNP_TV(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_ALLELE_A on SNP_TV(ALLELE_A) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_ALLELE_B on SNP_TV(ALLELE_B) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_FLANK on SNP_TV(FLANK) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_CHR_X_PSEU on SNP_TV(CHR_X_PSEUDO_AUTOSOMAL_REGION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_CODING_STA on SNP_TV(CODING_STATUS) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_TVP_TV_AMINO_ACID on SNP_TV(AMINO_ACID_CHANGE) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
