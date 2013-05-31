/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_MOLLIES_MEMBER_MOL on ZSTG_MOLECULEFAMILIES(MEMBER_MOLECULE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLLIES_FAMILY_MOL on ZSTG_MOLECULEFAMILIES(FAMILY_MOLECULE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLLIES_MTYPE on ZSTG_MOLECULEFAMILIES(MTYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLLIES_MOLECULE_I on ZSTG_MOLECULEFAMILIES(MOLECULE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLLIES_SOURCE_ID on ZSTG_MOLECULEFAMILIES(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
