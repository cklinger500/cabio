LOAD DATA 
 
INFILE '/cabio/cabiodb/cabio_data/temp/arrays/Affymetrix/HG-U133_Plus2/OMIM_out.txt'
 
APPEND
 
INTO TABLE ar_omim_id
 
FIELDS TERMINATED BY "|"
 
TRAILING NULLCOLS
(Probe_Set_ID,
OMIM_ID,
genechip_array)
