/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table PID_PHYSICAL_ENTITY_NAME disable constraint SYS_C0016531;
alter table PID_PHYSICAL_ENTITY_NAME disable constraint SYS_C0016532;
alter table PID_PHYSICAL_ENTITY_ACCESSION disable constraint SYS_C0016529;
alter table PID_PHYSICAL_ENTITY_ACCESSION disable constraint SYS_C0016530;
alter table PID_PATHWAY_INTERACTION disable constraint SYS_C0016528;
alter table PID_PARTICIPANT disable constraint SYS_C0016524;
alter table PID_PARTICIPANT disable constraint SYS_C0016525;
alter table PID_PARTICIPANT disable constraint SYS_C0016526;
alter table PID_INTERACTION_EVIDENCE disable constraint PIDINEVFK1;
alter table PID_INTERACTION_EVIDENCE disable constraint PIDINEVFK2;
alter table PID_ENTITY_SEQUENCE disable constraint SYS_C0016517;
alter table PID_ENTITY_SEQUENCE disable constraint SYS_C0016518;
alter table PID_ENTITY_PROTEIN disable constraint SYS_C0016515;
alter table PID_ENTITY_PROTEIN disable constraint SYS_C0016516;
alter table PID_ENTITY_AGENT disable constraint SYS_C0016513;
alter table PID_ENTITY_AGENT disable constraint SYS_C0016514;
alter table LOCATION_CH disable constraint LCHARRREPFK;
alter table LOCATION_CH disable constraint LCHCHROMOSOMEFK;
alter table LOCATION_CH disable constraint LCHGENEFK;
alter table LOCATION_CH disable constraint LCHSNPFK;
alter table LOCATION_CH disable constraint LCHCYTOFK;
alter table LOCATION_CH disable constraint LCHMRKFK;
alter table LOCATION_CH disable constraint LCHENDCYTOFK;
alter table LOCATION_CH disable constraint LCHARRREPIDFK;
alter table LOCATION_CH disable constraint LCHNASIDFK;
alter table LOCATION_CH disable constraint LCHSNPIDFK;
alter table LOCATION_CH disable constraint LCHXSCRIPTIDFK;
alter table LOCATION_CH disable constraint LCHCYTOREPFK;
alter table TRANSCRIPT_GENE disable constraint TGFK1;
alter table TRANSCRIPT_GENE disable constraint TGFK2;
alter table TRANSCRIPT_ARRAY_REPORTER disable constraint TARFK;
alter table TARGET_AGENT disable constraint TAFK1;
alter table SNP_REPORTER disable constraint SYS_C0016564;
alter table RELATIVE_LOCATION_CH disable constraint RLOCFK1;
alter table RELATIVE_LOCATION_CH disable constraint SYS_C0016563;
alter table PROTEIN_TAXON disable constraint PT_FK1;
alter table PROTEIN_TAXON disable constraint PTFK1;
alter table PROTEIN_SEQUENCE disable constraint PSFK;
alter table PROTEIN_SECONDARY_ACCESSION disable constraint PSAFK;
alter table PROTEIN_PROTEIN_ALIAS disable constraint PPAFK1;
alter table PROTEIN_KEYWORDS disable constraint PKFK;
alter table PROTEIN_ALIAS disable constraint PAFK;
alter table PHYSICAL_LOCATION disable constraint PL_G;
alter table PHYSICAL_LOCATION disable constraint PK_NAS;
alter table PHYSICAL_LOCATION disable constraint PL_CHR;
alter table PHYSICAL_LOCATION disable constraint PLXSCRPT;
alter table PHYSICAL_LOCATION disable constraint PLMID;
alter table PHYSICAL_LOCATION disable constraint SYS_C0016561;
alter table PHYSICAL_LOCATION disable constraint SYS_C0016562;
alter table ARRAY_REPORTER_NEW disable constraint ARREPEXONIDFK;
alter table MARKER_MARKER_REL_LOCATION disable constraint MMRL;
alter table MARKER_MARKER_REL_LOCATION disable constraint MMRLFK2;
alter table MARKER_MARKER_ALIAS disable constraint MMAFK1;
alter table MARKER_MARKER_ALIAS disable constraint MMAFK2;
alter table MARKER disable constraint MTFK;
alter table LOCATION_TV disable constraint LT_CHR;
alter table LOCATION_TV disable constraint LTV_GENE;
alter table LOCATION_TV disable constraint LT_NAS;
alter table LOCATION_TV disable constraint LOCTVMKFK;
alter table LOCATION_TV disable constraint LCHXSCRIPTID;
alter table LOCATION_TV disable constraint LCHEXREPFK;
alter table LOCATION_TV disable constraint LTVSNPFK;
alter table LIBRARY_HISTOPATHOLOGY disable constraint LHFK2;
alter table HOMOLOGOUS_ASSOCIATION disable constraint HA_FK1;
alter table HOMOLOGOUS_ASSOCIATION disable constraint HA_FK2;
alter table GENE_TV disable constraint GENE_CHR;
alter table GENE_TV disable constraint GENE_TAX;
alter table GENE_TARGET disable constraint GTFK1;
alter table GENE_TARGET disable constraint GTFK2;
alter table GENE_RELATIVE_LOCATION disable constraint GRLFK2;
alter table GENE_RELATIVE_LOCATION disable constraint SYS_C0016538;
alter table GENE_PROTEIN_TV disable constraint GPTVFK1;
alter table GENE_PROTEIN_TV disable constraint GPTVFK2;
alter table GENE_NUCLEIC_ACID_SEQUENCE disable constraint GNAS;
alter table GENE_MARKER disable constraint GMFK1;
alter table GENE_HISTOPATHOLOGY disable constraint SYS_C0016560;
alter table GENE_GENEALIAS disable constraint SYS_C0016567;
alter table GENE_FUNCTION_ASSOCIATION disable constraint GFAFK1;
alter table GENE_FUNCTION_ASSOCIATION disable constraint GFAFK2;
alter table GENE_FUNCTION_ASSOCIATION disable constraint GFAFK4;
alter table GENE_FUNCTION_ASSOCIATION disable constraint GFAEVFK;
alter table GENERIC_REPORTER disable constraint GRFK;
alter table GENERIC_ARRAY_SNP_REPORTER disable constraint GASRFK1;
alter table GENERIC_ARRAY_SNP_REPORTER disable constraint GASRFK2;
alter table GENERIC_ARRAY_GENERIC_REPORTER disable constraint GRFK1;
alter table GENERIC_ARRAY_GENERIC_REPORTER disable constraint GRGPFK;
alter table EXPR_REPORTER_PROTEIN_DOMAIN disable constraint EXPREPPDFK1;
alter table EXPR_REPORTER_PROTEIN_DOMAIN disable constraint EXPREPDFK2;
alter table EXPRESSION_REPORTER disable constraint EXPRREPFK1;
alter table EXPRESSION_REPORTER disable constraint EXPRREPFK2;
alter table EXPRESSION_REPORTER disable constraint EXPREPNASFK;
alter table EXON_REPORTER_GENE disable constraint EXREPFK;
alter table EXON_REPORTER_GENE disable constraint EXPRREPGENEFK2;
alter table EXON_REPORTER disable constraint EXREPFK1;
alter table EXON_REPORTER disable constraint EXREPFK2;
alter table EXON disable constraint EXFK;
alter table DATABASE_CROSS_REFERENCE disable constraint DBGENEFK;
alter table DATABASE_CROSS_REFERENCE disable constraint DBCROSSREFFK3;
alter table DATABASE_CROSS_REFERENCE disable constraint DBCROSSREFFK4;
alter table DATABASE_CROSS_REFERENCE disable constraint SYS_C0017733;
alter table CYTOGENIC_LOCATION_CYTOBAND disable constraint CYTOCBANDFK;
alter table CYTOGENIC_LOCATION_CYTOBAND disable constraint CCBANDGENEFK;
alter table CYTOGENIC_LOCATION_CYTOBAND disable constraint CCBANDNASFK;
alter table CYTOGENIC_LOCATION_CYTOBAND disable constraint SYS_C0017732;
alter table CYTOBAND disable constraint CYTOFK;
alter table CYTOBAND disable constraint SYS_C0016565;
alter table CLONE_TV disable constraint CLONTVFK;
alter table CLONE_TAXON disable constraint CT_TAX;
alter table CLONE_RELATIVE_LOCATION disable constraint CRLFK;
alter table CLONE_RELATIVE_LOCATION disable constraint CLRFK2;
alter table CHROMOSOME disable constraint CHTAX;
alter table CGAP_TISSUE_SELECTION disable constraint CGTFK;
alter table CGAP_GENE_ALIAS disable constraint CGFK;
alter table BIO_PATHWAYS_TV disable constraint BPTV;
alter table BIO_PATHWAYS disable constraint PATHFK;
alter table ARRAY_REPORTER_CH disable constraint ARCHFK1;
alter table ARRAY_REPORTER_CH disable constraint ARCHFK2;
alter table ARRAY_REPORTER_CH disable constraint ARCHFK3;
alter table ARRAY_REPORTER_CH disable constraint ARREPCHFK5;
alter table ARRAY_REPORTER_CH disable constraint ARREPCHSNPFK;
alter table ARRAY_REPORTER disable constraint ARRREPMAFK;

EXIT;
