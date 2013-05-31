/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_GENCGID_ROLE_ID_lwr on ZSTG_GENE_DISEASE_EVID_CGID(lower(ROLE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
