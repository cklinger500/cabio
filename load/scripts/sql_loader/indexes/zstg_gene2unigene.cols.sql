
create index ZSTG_GENGENE_GENEID on ZSTG_GENE2UNIGENE(GENEID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENGENE_UNIGENE_CL on ZSTG_GENE2UNIGENE(UNIGENE_CLUSTER) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
