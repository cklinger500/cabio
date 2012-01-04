
create index ZSTG_MAP_MAP_END_CYTOBA on ZSTG_MAP(END_CYTOBAND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_START_CYTO on ZSTG_MAP(START_CYTOBAND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_CHROMOSOME on ZSTG_MAP(CHROMOSOME_NUMBER) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_CYTOBAND on ZSTG_MAP(CYTOBAND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_TAXON_ID on ZSTG_MAP(TAXON_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_CHROMOSOME on ZSTG_MAP(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_MAP_LOCATI on ZSTG_MAP(MAP_LOCATION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_MAP_TYPE on ZSTG_MAP(MAP_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_MAP_ID on ZSTG_MAP(MAP_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
