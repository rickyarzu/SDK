CREATE or UPDATE  VIEW VISTA_VISITE_SEMESTRALI AS
SELECT A.* FROM
(
SELECT
C.visita_fatturazione_ordinaria AS VISITA, 'S' AS CADENZA, 1 AS NUMERO_VISITA,
C.ragione_sociale, F.nome,  F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
WHERE C.visita_fatturazione_ordinaria <= 6 AND C.disdettato = 'F'
union
SELECT
C.visita_fatturazione_ordinaria - 6  AS VISITA, 'S' AS CADENZA, 1 AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
WHERE C.visita_fatturazione_ordinaria > 6 AND C.disdettato = 'F'
UNION
SELECT
C.visita_fatturazione_ordinaria + 6 AS VISITA, 'S' AS CADENZA, 2 AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
WHERE C.visita_fatturazione_ordinaria <= 6 AND C.disdettato = 'F'
union
SELECT
C.visita_fatturazione_ordinaria AS VISITA, 'S' AS CADENZA, 2 AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
WHERE C.visita_fatturazione_ordinaria > 6 AND C.disdettato = 'F'
) A
ORDER BY VISITA;