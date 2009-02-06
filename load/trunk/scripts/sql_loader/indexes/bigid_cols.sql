
create index ARRAY_R_CH_BIG_ID on ARRAY_REPORTER_CH(BIG_ID) tablespace ;
create index LOCATIO_CH_BIG_ID on LOCATION_CH(BIG_ID) tablespace ;
create index ZSTG_AR_CH_BIG_ID on ZSTG_ARRAY_REPORTER_CH(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_EXTER_BIG_ID on ZSTG_EXON_REPORTER(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_TAXON_BIG_ID on ZSTG_TAXON(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_PONCY_BIG_ID on ZSTG_POPULATION_FREQUENCY(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_BI_TV_BIG_ID on ZSTG_BIO_PATHWAYS_TV(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_CHOME_BIG_ID on ZSTG_CHROMOSOME(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_OLOLS_BIG_ID on ZSTG_OLD_PROTOCOLS(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_OLSES_BIG_ID on ZSTG_OLD_PROTOCOL_DISEASES(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_TAGET_BIG_ID on ZSTG_TARGET(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_MAKER_BIG_ID on ZSTG_MARKER(BIG_ID) tablespace CABIO_MAP_FUT;
create index ZSTG_AGENT_BIG_ID on ZSTG_AGENT(BIG_ID) tablespace CABIO_MAP_FUT;
create index AGENTENT_BIG_ID on AGENT(BIG_ID) tablespace CABIO_FUT;
create index ARRAY_RTER_BIG_ID on ARRAY_REPORTER(BIG_ID) tablespace CABIO_FUT;
create index CLONE_RION_BIG_ID on CLONE_RELATIVE_LOCATION(BIG_ID) tablespace CABIO_FUT;
create index CLONE_T_TV_BIG_ID on CLONE_TV(BIG_ID) tablespace CABIO_FUT;
create index CYTOBANAND_BIG_ID on CYTOBAND(BIG_ID) tablespace CABIO_FUT;
create index CYTOGENAND_BIG_ID on CYTOGENIC_LOCATION_CYTOBAND(BIG_ID) tablespace CABIO_FUT;
create index EVIDENCNCE_BIG_ID on EVIDENCE(BIG_ID) tablespace CABIO_FUT;
create index EVIDENCODE_BIG_ID on EVIDENCE_CODE(BIG_ID) tablespace CABIO_FUT;
create index EXONXON_BIG_ID on EXON(BIG_ID) tablespace CABIO_FUT;
create index EXON_RETER_BIG_ID on EXON_REPORTER(BIG_ID) tablespace CABIO_FUT;
create index EXPRESSTER_BIG_ID on EXPRESSION_REPORTER(BIG_ID) tablespace CABIO_FUT;
create index GENERICRAY_BIG_ID on GENERIC_ARRAY(BIG_ID) tablespace CABIO_FUT;
create index GENERICTER_BIG_ID on GENERIC_REPORTER(BIG_ID) tablespace CABIO_FUT;
create index GENE_AL_TV_BIG_ID on GENE_ALIAS_OBJECT_TV(BIG_ID) tablespace CABIO_FUT;
create index GENE_FUION_BIG_ID on GENE_FUNCTION_ASSOCIATION(BIG_ID) tablespace CABIO_FUT;
create index GENE_REION_BIG_ID on GENE_RELATIVE_LOCATION(BIG_ID) tablespace CABIO_FUT;
create index GENE_TV_TV_BIG_ID on GENE_TV(BIG_ID) tablespace CABIO_FUT;
create index GO_ONTOOGY_BIG_ID on GO_ONTOLOGY(BIG_ID) tablespace CABIO_FUT;
create index GO_RELAHIP_BIG_ID on GO_RELATIONSHIP(BIG_ID) tablespace CABIO_FUT;
create index HISTOLOODE_BIG_ID on HISTOLOGY_CODE(BIG_ID) tablespace CABIO_FUT;
create index HOMOLOGION_BIG_ID on HOMOLOGOUS_ASSOCIATION(BIG_ID) tablespace CABIO_FUT;
create index LIBRARYARY_BIG_ID on LIBRARY(BIG_ID) tablespace CABIO_FUT;
create index MARKERKER_BIG_ID on MARKER(BIG_ID) tablespace CABIO_FUT;
create index MARKER_IAS_BIG_ID on MARKER_ALIAS(BIG_ID) tablespace CABIO_FUT;
create index MARKER_ION_BIG_ID on MARKER_RELATIVE_LOCATION(BIG_ID) tablespace CABIO_FUT;
create index MICROARRAY_BIG_ID on MICROARRAY(BIG_ID) tablespace CABIO_FUT;
create index NEW_PROEIN_BIG_ID on NEW_PROTEIN(BIG_ID) tablespace CABIO_FUT;
create index NUCLEICNCE_BIG_ID on NUCLEIC_ACID_SEQUENCE(BIG_ID) tablespace CABIO_FUT;
create index POPULATNCY_BIG_ID on POPULATION_FREQUENCY(BIG_ID) tablespace CABIO_FUT;
create index PROTEINIAS_BIG_ID on PROTEIN_ALIAS(BIG_ID) tablespace CABIO_FUT;
create index PROTEINAIN_BIG_ID on PROTEIN_DOMAIN(BIG_ID) tablespace CABIO_FUT;
create index PROTEINNCE_BIG_ID on PROTEIN_SEQUENCE(BIG_ID) tablespace CABIO_FUT;
create index RELATIVION_BIG_ID on RELATIVE_LOCATION(BIG_ID) tablespace CABIO_FUT;
create index RELATIV_CH_BIG_ID on RELATIVE_LOCATION_CH(BIG_ID) tablespace CABIO_FUT;
create index SNP_REPTER_BIG_ID on SNP_REPORTER(BIG_ID) tablespace CABIO_FUT;
create index SNP_TV_TV_BIG_ID on SNP_TV(BIG_ID) tablespace CABIO_FUT;
create index TARGETGET_BIG_ID on TARGET(BIG_ID) tablespace CABIO_FUT;
create index TISSUE_PLE_BIG_ID on TISSUE_SAMPLE(BIG_ID) tablespace CABIO_FUT;
create index TRANSCRIPT_BIG_ID on TRANSCRIPT(BIG_ID) tablespace CABIO_FUT;
create index TRANSCRTER_BIG_ID on TRANSCRIPT_ARRAY_REPORTER(BIG_ID) tablespace CABIO_FUT;
create index ANOMALYALY_BIG_ID on ANOMALY(BIG_ID) tablespace CABIO_FUT;
create index BIO_PAT_TV_BIG_ID on BIO_PATHWAYS_TV(BIG_ID) tablespace CABIO_FUT;
create index CHROMOSOME_BIG_ID on CHROMOSOME(BIG_ID) tablespace CABIO_FUT;
create index DISEASEHIP_BIG_ID on DISEASE_RELATIONSHIP(BIG_ID) tablespace CABIO_FUT;
create index HISTOPATST_BIG_ID on HISTOPATHOLOGY_TST(BIG_ID) tablespace CABIO_FUT;
create index ORGANONHIP_BIG_ID on ORGANONTOLOGYRELATIONSHIP(BIG_ID) tablespace CABIO_FUT;
create index PROTOCOCOL_BIG_ID on PROTOCOL(BIG_ID) tablespace CABIO_FUT;
create index TAXONXON_BIG_ID on TAXON(BIG_ID) tablespace CABIO_FUT;
create index TISSUE_ODE_BIG_ID on TISSUE_CODE(BIG_ID) tablespace CABIO_FUT;
create index VOCABULARY_BIG_ID on VOCABULARY(BIG_ID) tablespace CABIO_FUT;
create index PROTOCOOLS_BIG_ID on PROTOCOLS(BIG_ID) tablespace CABIO_FUT;
create index PROTOCOSES_BIG_ID on PROTOCOL_DISEASES(BIG_ID) tablespace CABIO_FUT;

EXIT;