LOAD DATA 
 
INFILE '/cabio/cabiodb/cabio_data/temp/arrays/Affymetrix/HuEx10ST/HuEx-1_0-st-v2.transcript.dat'
"str '\n'"

APPEND
 
INTO TABLE ZSTG_EXON_TRANS_AFFY
 
REENABLE DISABLED_CONSTRAINTS 
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
 
(
TRANSCRIPT_CLUSTER_ID,
PROBE_SET_ID,
SEQNAME,
STRAND,
START_LOCATION,
STOP_LOCATION,
TOTAL_PROBES,
GENE_ASSIGNMENT char(70000),
MRNA_ASSIGNMENT char(50000),
SWISSPROT char(30000),
UNIGENE char(30000),
GO_BIOPROCESS char(30000),
GO_CELLULAR_COMPONENT char(30000),
GO_MOLECULAR_FUNCTION char(30000),
PATHWAY char(30000),
PROTEIN_DOMAINS char(30000),
CATEGORY
)
