
create index ZSTG_BIOESCR_PATH_ID_lwr on ZSTG_BIOPATHWAY_DESCR(lower(PATH_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;