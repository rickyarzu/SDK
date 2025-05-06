/* *****************************************************************************/

/* *****************************************************************************/
/* ***     Following SET SQL DIALECT is just for the Database Comparer      ****/
/* *****************************************************************************/
SET SQL DIALECT 3;



 


/* View: VISTA_VOCI_FATTURE_ESTINTORI */
CREATE OR ALTER VIEW VISTA_VOCI_FATTURE_ESTINTORI(
    INTERVENTO,
    IMPORTO,
    QUANTITA,
    IVA,
    UNITA_DI_MISURA,
    IMPORTO_IVATO,
    SCONTO,
    DESCRIZIONE,
    CLIENTE,
    FILIALE,
    MESE,
    NOME_MESE,
    ANNO,
    TIPO_ESTINTORE,
    CAUSALE,
    IMPORTO_TOTALE)
AS
/* *************************************ANNOTAZIONI ************************************* ***/
/* *** LA QUANTITA' viene moltiplicate per 100 per compatibilità con il software Phoenix  ***/
/* ************************************************************************************** ***/
select  v.intervento,  V.PREZZO AS IMPORTO, V.QUANTITA * 100 AS QUANTITA, 22 AS IVA, 'Nr.' AS UNITA_DI_MISURA, 'F' AS IMPORTO_IVATO, 0 AS SCONTO,
   --  Agosto 2016
   CASE V.intervento
    WHEN 'O' THEN 'Servizio manutenzione estintori come da contratto visita di ' || M.nome_mese || ' ' || V.ANNO
    WHEN 'R' THEN 'Revisione a norma UNI 9994 come da contratto estintore ' || c.descrizione ||  ' visita di ' || M.nome_mese || ' ' || V.ANNO
    WHEN 'C' THEN 'Collaudo UNI 9994 come da contratto estintore ' || c.descrizione ||  ' visita di ' || M.nome_mese || ' ' || V.ANNO
    WHEN '-' THEN 'Smaltimento estintore ' || c.descrizione ||  ' visita di ' || M.nome_mese || ' ' || V.ANNO
    WHEN 'S' THEN 'Sostituzione estintore ' || c.descrizione ||  ' visita di ' || M.nome_mese || ' ' || V.ANNO
    ELSE NULL
    END
    AS DESCRIZIONE,
    V.CLIENTE, V.FILIALE, V.MESE, M.nome_mese, V.ANNO, V.TIPO_ESTINTORE,  V.CAUSALE, V.IMPORTO AS IMPORTO_TOTALE
from VISTA_INTERVENTI_ESTINTORI V JOIN mesi M ON M.mese = V.mese left OUTER  JOIN cat_estintori C ON C.chiave = V.tipo_estintore
;




/* *****************************************************************************/
/* ***                              Privileges                              ****/
/* *****************************************************************************/