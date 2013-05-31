/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_SNPMINA_PHAST_CONS_lwr on ZSTG_SNP_ILLUMINA(lower(PHAST_CONSERVATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_ID_WITH_MO_lwr on ZSTG_SNP_ILLUMINA(lower(ID_WITH_MOUSE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_AMINO_ACID_lwr on ZSTG_SNP_ILLUMINA(lower(AMINO_ACID_CHANGE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_CODING_STA_lwr on ZSTG_SNP_ILLUMINA(lower(CODING_STATUS)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_LOCATION_R_lwr on ZSTG_SNP_ILLUMINA(lower(LOCATION_RELATIVE_TO_GENE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_LOCATION_lwr on ZSTG_SNP_ILLUMINA(lower(LOCATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_GENE_ACCES_lwr on ZSTG_SNP_ILLUMINA(lower(GENE_ACCESSION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_GENE_SYMBO_lwr on ZSTG_SNP_ILLUMINA(lower(GENE_SYMBOL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_GENOME_BUI_lwr on ZSTG_SNP_ILLUMINA(lower(GENOME_BUILD)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_COORDINATE_lwr on ZSTG_SNP_ILLUMINA(lower(COORDINATE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_CHROMOSOME_lwr on ZSTG_SNP_ILLUMINA(lower(CHROMOSOME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPMINA_DBSNP_RS_I_lwr on ZSTG_SNP_ILLUMINA(lower(DBSNP_RS_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
