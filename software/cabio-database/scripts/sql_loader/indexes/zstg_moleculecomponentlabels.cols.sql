
create index ZSTG_MOLBELS_VALUE on ZSTG_MOLECULECOMPONENTLABELS(VALUE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_LABEL_TYPE on ZSTG_MOLECULECOMPONENTLABELS(LABEL_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_MOLECULE_I on ZSTG_MOLECULECOMPONENTLABELS(MOLECULE_ID_REF) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_MTYPE on ZSTG_MOLECULECOMPONENTLABELS(MTYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_MOLECULE_I on ZSTG_MOLECULECOMPONENTLABELS(MOLECULE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_SOURCE_ID on ZSTG_MOLECULECOMPONENTLABELS(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
