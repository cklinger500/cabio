/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table AR_UNIGENE_ID disable constraint SYS_C004304;
alter table AR_UNIGENE_ID disable constraint SYS_C004305;
alter table AR_UNIGENE_ID disable constraint SYS_C004306;

alter table AR_UNIGENE_ID disable primary key;

--EXIT;
