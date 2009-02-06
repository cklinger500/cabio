
create index GENE_ALIT_TV_ALIAS_TYPE_lwr on GENE_ALIAS_OBJECT_TV(lower(ALIAS_TYPE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_ALIT_TV_NAME_lwr on GENE_ALIAS_OBJECT_TV(lower(NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
