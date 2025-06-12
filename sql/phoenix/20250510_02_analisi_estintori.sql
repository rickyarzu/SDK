------------------- Fatturazione e Generazione Estintori -----------------------

--- La Generazione avviente per mese/Filiale -----------------------------------

/*
Abbiamo la query delle Visiste Gruppi che nasce dalla Union di 3 Viste

Mensili, Trimestrali Ecc ecc...

*/


-- VISTA_VOCI_FATTURA_ESTINTORI --------------------------------------------------------------------------------------------------------------------------------
CREATE VIEW VISTA_VOCI_FATTURE_ESTINTORI
AS
select  v.intervento,  V.PREZZO AS IMPORTO, V.QUANTITA, 22 AS IVA, 'Nr.' AS UNITA_DI_MISURA, 'F' AS IMPORTO_IVATO, 0 AS SCONTO,
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

select * from   VISTA_VOCI_FATTURE_ESTINTORI

select F.chiave, COUNT(1) AS NUMERO
from FATTURE F join voci_fatture VF ON VF.fattura = F.chiave
 where f.generazione_automatica = '202505'
  GROUP BY F.chiave ORDER BY COUNT(1) DESC
  --- 2253550

  SELECT * FROM voci_fatture VF WHERE VF.fattura = 2253550;  --- FURMI ---