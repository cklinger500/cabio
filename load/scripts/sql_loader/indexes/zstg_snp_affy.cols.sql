
create index ZSTG_SNPAFFY_COPY_NUM_V on ZSTG_SNP_AFFY(COPY_NUM_VARIATION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_STRAND_VS_ on ZSTG_SNP_AFFY(STRAND_VS_DBSNP) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_IN_HAPMAP on ZSTG_SNP_AFFY(IN_HAPMAP) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_NUM_CHRM on ZSTG_SNP_AFFY(NUM_CHRM) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_HET_FREQ on ZSTG_SNP_AFFY(HET_FREQ) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ALLELE_FRE on ZSTG_SNP_AFFY(ALLELE_FREQ) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_FRAGMENT_L on ZSTG_SNP_AFFY(FRAGMENT_LENGTH_START_STOP) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_MICROSATEL on ZSTG_SNP_AFFY(MICROSATELLITE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_GENETIC_MA on ZSTG_SNP_AFFY(GENETIC_MAP) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ASSOCIATED on ZSTG_SNP_AFFY(ASSOCIATED_GENE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ALLELE_B on ZSTG_SNP_AFFY(ALLELE_B) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ALLELE_A on ZSTG_SNP_AFFY(ALLELE_A) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_FLANK on ZSTG_SNP_AFFY(FLANK) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_CYTOBAND on ZSTG_SNP_AFFY(CYTOBAND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_CHRX_PSEUD on ZSTG_SNP_AFFY(CHRX_PSEUDO_AUTOSOMAL_REGION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_STRAND on ZSTG_SNP_AFFY(STRAND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_PHYSICAL_P on ZSTG_SNP_AFFY(PHYSICAL_POSITION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_DB_SNP_VER on ZSTG_SNP_AFFY(DB_SNP_VERSION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_GENOME_VER on ZSTG_SNP_AFFY(GENOME_VERSION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_CHROMOSOME on ZSTG_SNP_AFFY(CHROMOSOME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_DBSNP_RS_I on ZSTG_SNP_AFFY(DBSNP_RS_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_AFFY_SNP_I on ZSTG_SNP_AFFY(AFFY_SNP_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_PROBE_SET_ on ZSTG_SNP_AFFY(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ARRAY_NAME on ZSTG_SNP_AFFY(ARRAY_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
