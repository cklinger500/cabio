
create index ZSTG_MOLBELS_SOURCE_ID_lwr on ZSTG_MOLECULECOMPONENTLABELS(lower(SOURCE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_MOLECULE_I_lwr on ZSTG_MOLECULECOMPONENTLABELS(lower(MOLECULE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_MTYPE_lwr on ZSTG_MOLECULECOMPONENTLABELS(lower(MTYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_MOLECULE_I_lwr on ZSTG_MOLECULECOMPONENTLABELS(lower(MOLECULE_ID_REF)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_LABEL_TYPE_lwr on ZSTG_MOLECULECOMPONENTLABELS(lower(LABEL_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLBELS_VALUE_lwr on ZSTG_MOLECULECOMPONENTLABELS(lower(VALUE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
