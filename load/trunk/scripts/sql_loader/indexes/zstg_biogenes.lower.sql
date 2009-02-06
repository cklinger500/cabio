
create index ZSTG_BIOENES_PATHWAY_NA_lwr on ZSTG_BIOGENES(lower(PATHWAY_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_BIOENES_BC_ID_lwr on ZSTG_BIOGENES(lower(BC_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_BIOENES_LOCUS_ID_lwr on ZSTG_BIOGENES(lower(LOCUS_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
