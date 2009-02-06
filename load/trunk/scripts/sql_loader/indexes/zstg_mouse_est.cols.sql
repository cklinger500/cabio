
create index ZSTG_MOU_EST_QNAME on ZSTG_MOUSE_EST(QNAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOU_EST_TNAME on ZSTG_MOUSE_EST(TNAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOU_EST_TSTART on ZSTG_MOUSE_EST(TSTART) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOU_EST_TEND on ZSTG_MOUSE_EST(TEND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOU_EST_CHROMOSOME on ZSTG_MOUSE_EST(CHROMOSOME_NO) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOU_EST_CHROMOSOME on ZSTG_MOUSE_EST(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
