
create index NEW_PROTTEIN_PROTEIN_ID on NEW_PROTEIN(PROTEIN_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NEW_PROTTEIN_PRIMARY_AC on NEW_PROTEIN(PRIMARY_ACCESSION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NEW_PROTTEIN_SECONDARY_ on NEW_PROTEIN(SECONDARY_ACCESSION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NEW_PROTTEIN_UNIPROTCOD on NEW_PROTEIN(UNIPROTCODE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NEW_PROTTEIN_KEYWORD on NEW_PROTEIN(KEYWORD) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NEW_PROTTEIN_COPYRIGHTS on NEW_PROTEIN(COPYRIGHTSTATEMENT) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NEW_PROTTEIN_NAME on NEW_PROTEIN(NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
