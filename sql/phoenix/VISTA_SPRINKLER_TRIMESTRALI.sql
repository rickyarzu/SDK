CREATE VIEW VISTA_SPRINKLER_TRIMESTRALI AS
SELECT * FROM
(
SELECT
distinct C.visita_fatturazione_ordinaria AS VFO,  C.visita_fatturazione_ordinaria + 3  AS VISITA, 'T' AS CADENZA, 1 AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
     join sprinkler_clienti g on g.cliente = F.cliente AND G.filiale = F.chiave
where c.disdettato = 'F' and C.visita_fatturazione_ordinaria <=9
UNION ALL
SELECT
distinct C.visita_fatturazione_ordinaria AS VFO, C.visita_fatturazione_ordinaria -3  AS VISITA, 'T' AS CADENZA, 1 AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
     join sprinkler_clienti g on g.cliente = F.cliente AND G.filiale = F.chiave
where c.disdettato = 'F'  AND C.visita_fatturazione_ordinaria > 3
UNION ALL
SELECT
distinct C.visita_fatturazione_ordinaria AS VFO,  C.visita_fatturazione_ordinaria + 9  AS VISITA, 'T' AS CADENZA, 1 AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
     join sprinkler_clienti g on g.cliente = F.cliente AND G.filiale = F.chiave
where c.disdettato = 'F' and C.visita_fatturazione_ordinaria <=3
UNION ALL
SELECT
distinct C.visita_fatturazione_ordinaria AS VFO,  C.visita_fatturazione_ordinaria -9  AS VISITA, 'T' AS CADENZA, 1 AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
     join sprinkler_clienti g on g.cliente = F.cliente AND G.filiale = F.chiave
where c.disdettato = 'F' and C.visita_fatturazione_ordinaria >9 AND C.visita_fatturazione_ordinaria > 3
)
ORDER BY VFO, CHIAVE, VISITA