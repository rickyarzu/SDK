SELECT DISTINCT SPRINKLER_TIPO_VISITE,GRUPPO_TIPO_VISITE, COUNT(1)  FROM CLIENTI
GROUP BY SPRINKLER_TIPO_VISITE,GRUPPO_TIPO_VISITE

CREATE OR ALTER VIEW VISTA_FILIALI_CLIENTI_ATTIVI(
    NOME_AMMINISTRATORE,
    AMMINISTRATORE,
    VISITA_FATTURAZIONE_ORDINARIA,
    RAGIONE_SOCIALE,
    CLIENTE,
    CHIAVE,
    NOME,
    PROVINCIA,
    CAP,
    COMUNE,
    INDIRIZZO,
    TELEFONO,
    GRUPPO_TIPO_VISITE,
    SPRINKLER_TIPO_VISITE)
AS
select A.ragione_sociale AS nome_amministratore, c.amministratore, C.visita_fatturazione_ordinaria, C.ragione_sociale,
F.cliente, F.chiave, F.nome, F.provincia, F.cap, F.comune, F.indirizzo, F.telefono, c.gruppo_tipo_visite, C.sprinkler_tipo_visite
FROM CLIENTI C JOIN filiali_clienti F on f.cliente = c.chiave JOIN amministratori A on A.chiave = c.amministratore
WHERE
   F.escludi_da_generazione = 'F'
   AND (c.DISDETTATO = 'F')
   AND (c.SOSPENSIONE_TEMPORANEA <> 'T')
   AND (c.MANUALE = 'F')
   AND (c.NON_CONFERMATO = 'F')
;

--- vista trimestrale gruppi ----------------------------------------------------
SELECT DISTINCT
F.nome_amministratore, F.amministratore, F.cliente,
F.visita_fatturazione_ordinaria AS VFO,
m.mese,
MOD(m.mese - F.visita_fatturazione_ordinaria + 12, 12)
, 'T' AS CADENZA
,
    CASE 
        WHEN MOD(m.mese - F.visita_fatturazione_ordinaria + 12, 12) = 0 THEN 1
        WHEN MOD(m.mese - F.visita_fatturazione_ordinaria + 12, 12) = 3 THEN 2
        WHEN MOD(m.mese - F.visita_fatturazione_ordinaria + 12, 12) = 6 THEN 3
        WHEN MOD(m.mese - F.visita_fatturazione_ordinaria + 12, 12) = 9 THEN 4
        ELSE NULL
    END AS numero_visita,
F.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM VISTA_FILIALI_CLIENTI_ATTIVI F
     join gruppo_pressurizzazione_clienti  g on g.cliente = F.cliente AND G.filiale = F.chiave
     cross join mesi M
where
MOD(m.mese - F.visita_fatturazione_ordinaria, 3) = 0
AND F.gruppo_tipo_visite  IN ('T', 'M')
order by chiave, numero_visita asc