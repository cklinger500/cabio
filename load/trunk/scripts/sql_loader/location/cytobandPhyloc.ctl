LOAD DATA 
 
INFILE '/cabio/cabiodb/cabio_data/temp/cytoband/phylocCytoband.txt'
 
APPEND
 
INTO TABLE physical_location 
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
( CYTONAME filler,
  cytoband_ID,
  PHYLOC_ID filler,
  CHROMOSOMAL_START_POSITION,
  CHROMOSOMAL_END_POSITION,
  chromosome_ID,
  ID SEQUENCE(MAX,1)
)

INTO TABLE location_tv 
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
( cytoband filler POSITION(1),
  cytoband_ID,
  PHYLOC_ID filler,
  CHROMOSOMAL_START_POSITION filler,
  CHROMOSOMAL_END_POSITION filler,
  chromosome_ID,
  ID SEQUENCE(MAX,1)
)


INTO TABLE location_ch 
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
( CYTONAME filler POSITION(1),
  cytoband_ID,
  PHYLOC_ID filler,
  CHROMOSOMAL_START_POSITION,
  CHROMOSOMAL_END_POSITION,
  chromosome_ID,
  DISCRIMINATOR CONSTANT "CytobandPhysicalLocation",
  FEATURE_TYPE CONSTANT "cytoband",
  ASSEMBLY CONSTANT "reference",
  ID SEQUENCE(MAX,1)
)
