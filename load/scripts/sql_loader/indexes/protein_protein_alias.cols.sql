
create index PROTEIN_LIAS_PROTEIN_ID on PROTEIN_PROTEIN_ALIAS(PROTEIN_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTEIN_LIAS_PROTEIN_AL on PROTEIN_PROTEIN_ALIAS(PROTEIN_ALIAS_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
