
create index TRANSCRIGENE_TRANSCRIPT on TRANSCRIPT_GENE(TRANSCRIPT_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index TRANSCRIGENE_GENE_ID on TRANSCRIPT_GENE(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;