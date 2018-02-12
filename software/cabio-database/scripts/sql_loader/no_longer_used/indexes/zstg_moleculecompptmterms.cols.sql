/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_MOLERMS_MODIFICATI on ZSTG_MOLECULECOMPPTMTERMS(MODIFICATION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLERMS_AA on ZSTG_MOLECULECOMPPTMTERMS(AA) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLERMS_POSITION on ZSTG_MOLECULECOMPPTMTERMS(POSITION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLERMS_PROTEIN on ZSTG_MOLECULECOMPPTMTERMS(PROTEIN) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLERMS_MOLECULE_I on ZSTG_MOLECULECOMPPTMTERMS(MOLECULE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLERMS_SOURCE_ID on ZSTG_MOLECULECOMPPTMTERMS(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLERMS_INTERACTIO on ZSTG_MOLECULECOMPPTMTERMS(INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;