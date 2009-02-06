
create index RESEARCH_INST_ID on RESEARCH_INSTITUTION_SOURCE(ID) tablespace CABIO_FUT;
create index RESEARCH_INST_NAME on RESEARCH_INSTITUTION_SOURCE(NAME) tablespace CABIO_FUT;
create index RESEARCH_INST_INSTITUTION_NAM on RESEARCH_INSTITUTION_SOURCE(INSTITUTION_NAME) tablespace CABIO_FUT;
create index RESEARCH_INST_INSTITUTION_DEP on RESEARCH_INSTITUTION_SOURCE(INSTITUTION_DEPT) tablespace CABIO_FUT;
create index RESEARCH_INST_INSTITUTION_PER on RESEARCH_INSTITUTION_SOURCE(INSTITUTION_PERSONS) tablespace CABIO_FUT;
create index RESEARCH_INST_INSTITUTION_ADD on RESEARCH_INSTITUTION_SOURCE(INSTITUTION_ADDRESS) tablespace CABIO_FUT;

--EXIT;
