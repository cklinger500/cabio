/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_CLOLONE_LIBRARY_ID on ZSTG_CLONE(LIBRARY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_CLOLONE_RELATIVE_T on ZSTG_CLONE(RELATIVE_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_CLOLONE_UNIGENE_LI on ZSTG_CLONE(UNIGENE_LIBRARY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_CLOLONE_CLONE_NAME on ZSTG_CLONE(CLONE_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_CLOLONE_CLONE_ID on ZSTG_CLONE(CLONE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_CLOLONE_TAXON_ID on ZSTG_CLONE(TAXON_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
