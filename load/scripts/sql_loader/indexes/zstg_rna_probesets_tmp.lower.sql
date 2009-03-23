
create index ZSTG_RNA_TMP_OMIM_lwr on ZSTG_RNA_PROBESETS_TMP(lower(OMIM)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_EC_lwr on ZSTG_RNA_PROBESETS_TMP(lower(EC)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_ENTREZ_GEN_lwr on ZSTG_RNA_PROBESETS_TMP(lower(ENTREZ_GENE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_ENSEMBL_lwr on ZSTG_RNA_PROBESETS_TMP(lower(ENSEMBL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_UNIGENE_CL_lwr on ZSTG_RNA_PROBESETS_TMP(lower(UNIGENE_CLUSTER_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_CHROMOSOMA_lwr on ZSTG_RNA_PROBESETS_TMP(lower(CHROMOSOMAL_LOCATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_GENE_SYMBO_lwr on ZSTG_RNA_PROBESETS_TMP(lower(GENE_SYMBOL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_ALIGNMENTS_lwr on ZSTG_RNA_PROBESETS_TMP(lower(ALIGNMENTS)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_GENOME_VER_lwr on ZSTG_RNA_PROBESETS_TMP(lower(GENOME_VERSION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_UNIGENE_ID_lwr on ZSTG_RNA_PROBESETS_TMP(lower(UNIGENE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_ARCHIVAL_U_lwr on ZSTG_RNA_PROBESETS_TMP(lower(ARCHIVAL_UNIGENE_CLUSTER)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_REPRESENTA_lwr on ZSTG_RNA_PROBESETS_TMP(lower(REPRESENTATIVE_PUBLIC_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_TARGET_DES_lwr on ZSTG_RNA_PROBESETS_TMP(lower(TARGET_DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_TRANSCRIPT_lwr on ZSTG_RNA_PROBESETS_TMP(lower(TRANSCRIPT_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_SEQUENCE_S_lwr on ZSTG_RNA_PROBESETS_TMP(lower(SEQUENCE_SOURCE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_SEQUENCE_T_lwr on ZSTG_RNA_PROBESETS_TMP(lower(SEQUENCE_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_ANNOTATION_lwr on ZSTG_RNA_PROBESETS_TMP(lower(ANNOTATION_DATE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_SPECIES_SC_lwr on ZSTG_RNA_PROBESETS_TMP(lower(SPECIES_SCIENTIFIC_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_GENECHIP_A_lwr on ZSTG_RNA_PROBESETS_TMP(lower(GENECHIP_ARRAY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_PROBE_SET__lwr on ZSTG_RNA_PROBESETS_TMP(lower(PROBE_SET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_ANNOTATION_lwr on ZSTG_RNA_PROBESETS_TMP(lower(ANNOTATION_DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_QTL_lwr on ZSTG_RNA_PROBESETS_TMP(lower(QTL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_SGD_ACCESS_lwr on ZSTG_RNA_PROBESETS_TMP(lower(SGD_ACCESSION_NUMBER)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_RGD_NAME_lwr on ZSTG_RNA_PROBESETS_TMP(lower(RGD_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_MGI_NAME_lwr on ZSTG_RNA_PROBESETS_TMP(lower(MGI_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_WORMBASE_lwr on ZSTG_RNA_PROBESETS_TMP(lower(WORMBASE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_AGI_lwr on ZSTG_RNA_PROBESETS_TMP(lower(AGI)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_FLYBASE_lwr on ZSTG_RNA_PROBESETS_TMP(lower(FLYBASE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_REFSEQ_TRA_lwr on ZSTG_RNA_PROBESETS_TMP(lower(REFSEQ_TRANSCRIPT_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNA_TMP_REFSEQ_PRO_lwr on ZSTG_RNA_PROBESETS_TMP(lower(REFSEQ_PROTEIN_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
