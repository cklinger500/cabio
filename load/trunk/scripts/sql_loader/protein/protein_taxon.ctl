LOAD DATA 
 
INFILE '/cabio/cabiodb/cabio_data/temp/protein/protein_taxon.dat'
 
APPEND
 
INTO TABLE protein_taxon 
 
REENABLE DISABLED_constraints  
FIELDS TERMINATED BY "	"
 
TRAILING NULLCOLS
  (PROTEIN_ID "TRIM(:PROTEIN_ID)",
  taxon_ID "TRIM(:TAXON_ID)")
