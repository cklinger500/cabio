/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

CREATE OR REPLACE PROCEDURE CYTO_L_CYTOBAND31_01_LD
IS
   CURSOR cyto_cur
   IS
      (SELECT distinct A.ID SNP_ID, E.ID START_CYTOBAND_LOC_ID, a.chromosome_ID chromosome_ID
	FROM   SNP_TV A, ZSTG_SNP_AFFY C, CYTOBAND E
	WHERE  A.DB_SNP_ID = C.DBSNP_RS_ID
	AND  C.chromosome||c.cytoband = E.NAME);

    V_MAXROW NUMBER :=0;
	aID number:=0;

BEGIN

	EXECUTE IMMEDIATE('TRUNCATE TABLE CYTOGENIC_LOCATION_CYTOBAND REUSE STORAGE');

	SELECT MAX(ID) INTO V_MAXROW FROM PHYSICAL_LOCATION;

   	FOR erec IN cyto_cur LOOP

      aID := aID + 1;

      INSERT INTO CYTOGENIC_LOCATION_CYTOBAND (
		CYTOGENIC_LOCATION_ID,
		SNP_ID,
		START_CYTOBAND_LOC_ID,
		chromosome_ID)
	      VALUES (aID + V_MAXROW,
		erec.SNP_ID,
		erec.START_CYTOBAND_LOC_ID,
		erec.chromosome_ID);

      IF MOD (aID, 500) = 0
      THEN
         COMMIT;
      END IF;
   	END LOOP;

   	COMMIT;
END; 
/

