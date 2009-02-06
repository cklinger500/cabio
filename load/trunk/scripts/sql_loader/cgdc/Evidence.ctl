LOAD DATA 
 
INFILE '/cabio/cabiodb/cabio_data/temp/cgdc/evidence.dat'
 
APPEND
 
INTO TABLE evidence 
 
REENABLE DISABLED_constraints  
FIELDS TERMINATED BY "|"
 
TRAILING NULLCOLS
(
ID,
gene_ID filler,
gene_ID_AGAIN filler,
CHR_ID filler,
TAX_ID filler,
SENTENCE char(500000),	
NEGATION_STATUS,
CELLLINE_STATUS,
COMMENTS "substr(:COMMENTS,1,3000)",
PUBMED_ID,
SENTENCE_STATUS
)
