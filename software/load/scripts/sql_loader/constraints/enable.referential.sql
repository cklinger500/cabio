
alter table PID_PHYSICAL_ENTITY_NAME enable constraint SYS_C0016531;
alter table PID_PHYSICAL_ENTITY_NAME enable constraint SYS_C0016532;
alter table PID_PHYSICAL_ENTITY_ACCESSION enable constraint SYS_C0016529;
alter table PID_PHYSICAL_ENTITY_ACCESSION enable constraint SYS_C0016530;
alter table PID_PATHWAY_INTERACTION enable constraint SYS_C0016528;
alter table PID_PARTICIPANT enable constraint SYS_C0016524;
alter table PID_PARTICIPANT enable constraint SYS_C0016525;
alter table PID_PARTICIPANT enable constraint SYS_C0016526;
alter table PID_INTERACTION_EVIDENCE enable constraint SYS_C0016522;
alter table PID_INTERACTION_EVIDENCE enable constraint SYS_C0016523;
alter table PID_INTERACTION_EC enable constraint SYS_C0016519;
alter table PID_INTERACTION_EC enable constraint SYS_C0016521;
alter table PID_ENTITY_SEQUENCE enable constraint SYS_C0016517;
alter table PID_ENTITY_SEQUENCE enable constraint SYS_C0016518;
alter table PID_ENTITY_PROTEIN enable constraint SYS_C0016515;
alter table PID_ENTITY_PROTEIN enable constraint SYS_C0016516;
alter table PID_ENTITY_AGENT enable constraint SYS_C0016513;
alter table PID_ENTITY_AGENT enable constraint SYS_C0016514;
alter table TRANSCRIPT_GENE enable constraint TGFK1;
alter table TRANSCRIPT_GENE enable constraint TGFK2;
alter table TRANSCRIPT_ARRAY_REPORTER enable constraint TARFK;
alter table TARGET_AGENT enable constraint TAFK1;
alter table SNP_REPORTER enable constraint SYS_C0016564;
alter table RELATIVE_LOCATION_CH enable constraint RLOCFK1;
alter table RELATIVE_LOCATION_CH enable constraint SYS_C0016563;
alter table PROTEIN_TAXON enable constraint PT_FK1;
alter table PROTEIN_TAXON enable constraint PTFK1;
alter table PROTEIN_SEQUENCE enable constraint PSFK;
alter table PROTEIN_SECONDARY_ACCESSION enable constraint PSAFK;
alter table PROTEIN_PROTEIN_ALIAS enable constraint PPAFK1;
alter table PROTEIN_KEYWORDS enable constraint PKFK;
alter table PROTEIN_ALIAS enable constraint PAFK;
alter table PHYSICAL_LOCATION enable constraint PL_G;
alter table PHYSICAL_LOCATION enable constraint PK_NAS;
alter table PHYSICAL_LOCATION enable constraint PL_CHR;
alter table PHYSICAL_LOCATION enable constraint PLXSCRPT;
alter table PHYSICAL_LOCATION enable constraint PLMID;
alter table PHYSICAL_LOCATION enable constraint SYS_C0016561;
alter table PHYSICAL_LOCATION enable constraint SYS_C0016562;
alter table MARKER_MARKER_REL_LOCATION enable constraint MMRL;
alter table MARKER_MARKER_REL_LOCATION enable constraint MMRLFK2;
alter table MARKER_MARKER_ALIAS enable constraint MMAFK1;
alter table MARKER_MARKER_ALIAS enable constraint MMAFK2;
alter table MARKER enable constraint MTFK;
alter table LOCATION_TV enable constraint LT_CHR;
alter table LOCATION_TV enable constraint LTV_GENE;
alter table LOCATION_TV enable constraint LT_NAS;
alter table LOCATION_TV enable constraint LOCTVMKFK;
alter table LOCATION_TV enable constraint LCHXSCRIPTID;
alter table LOCATION_TV enable constraint LCHEXREPFK;
alter table LOCATION_TV enable constraint LTVSNPFK;
alter table LOCATION_CH enable constraint LCH_CHR;
alter table LOCATION_CH enable constraint LCH_GENE;
alter table LOCATION_CH enable constraint LCH_NAS;
alter table LOCATION_CH enable constraint LCHEREP;
alter table LOCATION_CH enable constraint LCHMIDFK;
alter table LOCATION_CH enable constraint LCHAREPCYTOIDFK;
alter table LOCATION_CH enable constraint LCHGIDFK;
alter table LOCATION_CH enable constraint LCHXSCRIPT;
alter table LOCATION_CH enable constraint LCHEXREPFK1;
alter table LOCATION_CH enable constraint LCHARREP;
alter table LOCATION_CH enable constraint LOCCHSNPFK;
alter table LIBRARY_HISTOPATHOLOGY enable constraint LHFK;
alter table LIBRARY_HISTOPATHOLOGY enable constraint LHFK2;
alter table HOMOLOGOUS_ASSOCIATION enable constraint HA_FK1;
alter table HOMOLOGOUS_ASSOCIATION enable constraint HA_FK2;
alter table GENE_TV enable constraint GENE_CHR;
alter table GENE_TV enable constraint GENE_TAX;
alter table GENE_TARGET enable constraint GTFK1;
alter table GENE_TARGET enable constraint GTFK2;
alter table GENE_RELATIVE_LOCATION enable constraint GRLFK2;
alter table GENE_RELATIVE_LOCATION enable constraint SYS_C0016538;
alter table GENE_PROTEIN_TV enable constraint GPTVFK1;
alter table GENE_PROTEIN_TV enable constraint GPTVFK2;
alter table GENE_NUCLEIC_ACID_SEQUENCE enable constraint GNAS;
alter table GENE_MARKER enable constraint GMFK1;
alter table GENE_HISTOPATHOLOGY enable constraint SYS_C0016560;
alter table GENE_GENEALIAS enable constraint SYS_C0016567;
alter table GENE_FUNCTION_ASSOCIATION enable constraint GFAFK1;
alter table GENE_FUNCTION_ASSOCIATION enable constraint GFAFK2;
alter table GENE_FUNCTION_ASSOCIATION enable constraint GFAFK4;
alter table GENE_FUNCTION_ASSOCIATION enable constraint GFAEVFK;
alter table GENERIC_REPORTER enable constraint GRFK;
alter table GENERIC_ARRAY_SNP_REPORTER enable constraint GASRFK1;
alter table GENERIC_ARRAY_SNP_REPORTER enable constraint GASRFK2;
alter table GENERIC_ARRAY_GENERIC_REPORTER enable constraint GRFK1;
alter table GENERIC_ARRAY_GENERIC_REPORTER enable constraint GRGPFK;
alter table EXPR_REPORTER_PROTEIN_DOMAIN enable constraint EXPREPPDFK1;
alter table EXPR_REPORTER_PROTEIN_DOMAIN enable constraint EXPREPDFK2;
alter table EXPRESSION_REPORTER enable constraint EXPRREPFK1;
alter table EXPRESSION_REPORTER enable constraint EXPRREPFK2;
alter table EXPRESSION_REPORTER enable constraint EXPREPNASFK;
alter table EXON_REPORTER_GENE enable constraint EXREPFK;
alter table EXON_REPORTER_GENE enable constraint EXPRREPGENEFK2;
alter table EXON_REPORTER enable constraint EXREPFK1;
alter table EXON_REPORTER enable constraint EXREPFK2;
alter table EXON enable constraint EXFK;
alter table DATABASE_CROSS_REFERENCE enable constraint DBGENEFK;
alter table DATABASE_CROSS_REFERENCE enable constraint DBCROSSREFFK3;
alter table DATABASE_CROSS_REFERENCE enable constraint DBCROSSREFFK4;
alter table DATABASE_CROSS_REFERENCE enable constraint SYS_C0017733;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint CYTOCBANDFK;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint CCBANDGENEFK;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint CCBANDNASFK;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C0017732;
alter table CYTOBAND enable constraint CYTOFK;
alter table CYTOBAND enable constraint SYS_C0016565;
alter table CLONE_TV enable constraint CLONTVFK;
alter table CLONE_TAXON enable constraint CT_TAX;
alter table CLONE_RELATIVE_LOCATION enable constraint CRLFK;
alter table CLONE_RELATIVE_LOCATION enable constraint CLRFK2;
alter table CHROMOSOME enable constraint CHTAX;
alter table CGAP_TISSUE_SELECTION enable constraint CGTFK;
alter table CGAP_GENE_ALIAS enable constraint CGFK;
alter table BIO_PATHWAYS_TV enable constraint BPTV;
alter table BIO_PATHWAYS enable constraint PATHFK;
alter table ARRAY_REPORTER_CH enable constraint ARCHFK1;
alter table ARRAY_REPORTER_CH enable constraint ARCHFK2;
alter table ARRAY_REPORTER_CH enable constraint ARCHFK3;
alter table ARRAY_REPORTER_CH enable constraint ARREPCHFK5;
alter table ARRAY_REPORTER_CH enable constraint ARREPCHSNPFK;
alter table ARRAY_REPORTER enable constraint ARRREPMAFK;

EXIT;
