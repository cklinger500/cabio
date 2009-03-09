
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C0021101;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C0021101;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C0021101;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C0021101;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C0021101;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C004462;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C004463;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C004464;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C004465;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C004466;
alter table GENE_FUNCTION_ASSOCIATION enable constraint GFA_PK;

alter table GENE_FUNCTION_ASSOCIATION enable primary key;

--EXIT;
create unique index SYS_C0021101_idx on GENE_FUNCTION_ASSOCIATION
(EVIDENCE_ID,HISTOLOGYCODE_ID,AGENT_ID,ROLE_ID,GENE_ID) tablespace CABIO_FUT;
alter table GENE_FUNCTION_ASSOCIATION enable constraint SYS_C0021101 using index SYS_C0021101_idx;
create unique index GFA_PK_idx on GENE_FUNCTION_ASSOCIATION
(ID) tablespace CABIO_FUT;
alter table GENE_FUNCTION_ASSOCIATION enable constraint GFA_PK using index GFA_PK_idx;