
create index ZSTG_MOU_EST_QNAME_lwr on ZSTG_MOUSE_EST(lower(QNAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOU_EST_TNAME_lwr on ZSTG_MOUSE_EST(lower(TNAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOU_EST_CHROMOSOME_lwr on ZSTG_MOUSE_EST(lower(CHROMOSOME_NO)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOU_EST_CHROMOSOME_lwr on ZSTG_MOUSE_EST(lower(CHROMOSOME_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
