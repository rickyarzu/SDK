CREATE OR ALTER VIEW VISTA_GRUPPI_MENSILI(
    NOME_AMMINISTRATORE,
    AMMINISTRATORE,
    CLIENTE,
    VFO,
    VISITA,
    CADENZA,
    NUMERO_VISITA,
    RAGIONE_SOCIALE,
    NOME,
    INDIRIZZO,
    COMUNE,
    CAP,
    PROVINCIA,
    CHIAVE)
AS
SELECT
distinct C.visita_fatturazione_ordinaria AS VFO,  M.mese  AS VISITA, 'M' AS CADENZA,
CAST
(
CASE SIGN(M.mese - C.visita_fatturazione_ordinaria)
WHEN  0 THEN 1
WHEN  1 THEN M.mese - C.visita_fatturazione_ordinaria + 1
WHEN  -1 THEN 12 - (C.visita_fatturazione_ordinaria - M.mese) + 1
END
AS smallint
) AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM mesi M,  CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
     join gruppo_pressurizzazione_clienti  g on g.cliente = F.cliente AND G.filiale = F.chiave
where c.disdettato = 'F' AND C.gruppo_tipo_visite = 'M'
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_SPRINKLER_TRIMESTRALI  VT WHERE VT.chiave = F.chiave)
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_VISITE_SEMESTRALI VS WHERE VS.chiave = F.chiave)
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_GRUPPI_TRIMESTRALI VG WHERE VG.chiave = F.chiave)
;

DROP VIEW VISTA_GRUPPI_MENSILI;
CREATE OR ALTER VIEW VISTA_GRUPPI_MENSILI(
    NOME_AMMINISTRATORE,
    AMMINISTRATORE,
    CLIENTE,
    VFO,
    VISITA,
    CADENZA,
    NUMERO_VISITA,
    RAGIONE_SOCIALE,
    NOME,
    INDIRIZZO,
    COMUNE,
    CAP,
    PROVINCIA,
    CHIAVE)
AS
SELECT DISTINCT
F.nome_amministratore, F.amministratore, F.cliente,
F.visita_fatturazione_ordinaria AS VFO,  M.mese  AS VISITA, 'T' AS CADENZA,
CAST
(
CASE SIGN(M.mese - F.visita_fatturazione_ordinaria)
WHEN  0 THEN 1
WHEN  1 THEN M.mese - F.visita_fatturazione_ordinaria + 1
WHEN  -1 THEN 12 - (F.visita_fatturazione_ordinaria - M.mese) + 1
END
AS smallint
) AS NUMERO_VISITA,
F.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM mesi M, VISTA_FILIALI_CLIENTI_ATTIVI F
     join gruppo_pressurizzazione_clienti  g on g.cliente = F.cliente AND G.filiale = F.chiave
where F.gruppo_tipo_visite = 'M'
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_SPRINKLER_TRIMESTRALI  VT WHERE VT.chiave = F.chiave)
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_VISITE_SEMESTRALI VS WHERE VS.chiave = F.chiave)
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_GRUPPI_TRIMESTRALI VG WHERE VG.chiave = F.chiave)
;

select DISTINCT C.visita_fatturazione_ordinaria,  CAST( SIGN(6 -c.visita_fatturazione_ordinaria) AS SMALLINT) as segno, CAST (6 AS SMALLINT) AS MESE,
CAST
(
CASE SIGN(6 - C.visita_fatturazione_ordinaria)
WHEN  0 THEN 1
WHEN  1 THEN 6 - C.visita_fatturazione_ordinaria + 1
WHEN  -1 THEN 12 - (C.visita_fatturazione_ordinaria -6) + 1
END
AS smallint
) AS NUMERO_VISITA
FROM CLIENTI C
ORDER BY NUMERO_VISITA


SELECT
    CASE SIGN(c.visita_fatturazione_ordinaria -6)
        WHEN 1 THEN 1   -- quando a > b
        WHEN 0 THEN 2   -- quando a = b
        WHEN -1 THEN 3  -- quando a < b
    END AS risultato
FROM tua_tabella

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

