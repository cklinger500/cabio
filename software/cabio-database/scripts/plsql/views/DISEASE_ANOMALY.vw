CREATE OR REPLACE FORCE VIEW CABIODEV.DISEASE_ANOMALY
(ANOMALY_ID, HISTOLOGY_CODE)
AS 
SELECT ANOMALY.ANOMALY_ID, CONTEXT.HISTOLOGY_CODE
FROM ANOMALY, CONTEXT
WHERE CONTEXT.CONTEXT_CODE = ANOMALY.CONTEXT_CODE;


