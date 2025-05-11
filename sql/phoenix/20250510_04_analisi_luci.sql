------------------- Fatturazione e Generazione Luci ----------------------------

--- La Generazione avviente per semestre/Filiale -----------------------------------
/*
.
Quello che è importante qui è avere a disposizione 2 variabili in base ai 2 parametri

P1) la filiale_id che viene passata dal Record 'Superiore' (la Filiale)
P2) Il cliente da cui prendere i Prezzi delle Luci applicati al Cliente.

a) il numero di Luci da controllare ammmesso che questo abbia un senso
b) trovare il prezzo delle Luci in base alla query dei clienti

*/

--- partiamo da un esempio di fatturazione -------------------------------------

select distinct vf.descrizione
from voci_fatture vf join fatture f on vf.fattura = f.chiave
where lower(vf.descrizione) like '%luci%' and f.generazione_automatica = 202505


select *
from voci_fatture vf join fatture f on vf.fattura = f.chiave
where lower(vf.descrizione) like '%luci%' and f.generazione_automatica = 202505


select C.CHIAVE, LUCI_VISIBILI, C.PREZZO_ORDINARIE_LUCI,
       C.VISITA_FATTURAZIONE_ORDINARIA VFA, C.NATURA_IVA NATIVA, IVA,  C.ESENTE_IVA, C.PARTITA_IVA PARTIVA, C.CODICE_FISCALE CF,  C.FATTURA_ANTICIPATA FATTANT, C.note_in_fattura
from CLIENTI C JOIN FATTURE F ON F.id_cliente = C.chiave WHERE F.chiave = 2253546

--Servizio manutenzione luci emergenza come da contratto visita di Maggio 2025

select FATTURA, ORDINAMENTO, IMPORTO, QUANTITA, IVA, UNITA_DI_MISURA, CODICE_A_BARRE, IMPORTO_IVATO, SCONTO, PRODOTTO,
       CODICE, DESCRIZIONE, VOCE_VUOTA, JGUID
from VOCI_FATTURE VF where VF.fattura = 2253546 AND VF.ordinamento = 2

SELECT L.* FROM luci_clienti L JOIN FATTURE F ON F.id_cliente = L.cliente
WHERE F.chiave = 2253546 AND L.stato = 'A'

-- CLIENTE = 1289515

-- Riga Vuota in Posizione 0.
-- Servizio manutenzione luci emergenza come da contratto visita di Maggio 2025

-- ORDINAMENTO = 2
-- IMPORTO = 650 (6,50 x 100)
-- QUANTITA = 800 (8 x 100)
-- IVA 22
-- UNITA_DI_MISURA = Nr.
-- CODICE_A_BARRE = ''
-- IMPORTO_IVATO 'F' (Vedi Reverse Charge).
-- SCONTO = 0 PRODOTTO, CODICE (Niulli)  DESCRIZIONE Vedi Sopr

SELECT
2253546                                 AS FATTURA, /*FATTURA_ID*/
ROW_NUMBER()  OVER (ORDER BY C.IVA) + 1 AS ORDINAMENTO, /*INC_POS*/
c.PREZZO_ORDINARIE_LUCI                 AS IMPORTO,
L.NUMERO*100                            AS QUANTITA,  /*DEFAULT? CHIEDERE*/
C.iva                                   AS IVA,
'Nr.'                                   AS UNITA_DI_MISURA, /*DEFAULT*/
''                                      AS CODICE_A_BARRE,
'F'                                     AS IMPORTO_IVATO,
0                                       AS SCONTO,
''                                      AS PRODOTTO,
''                                      AS CODICE,
'Servizio manutenzione luci emergenza come da contratto visita di ' ||
M.nome_mese || ' ' || 2025 /*ANNO*/     AS DESCRIZIONE,
NULL                                    AS VOCE_VUOTA,
GEN_UUID()                              AS JGUID
FROM (SELECT L.cliente, COUNT(1) AS NUMERO FROM luci_clienti L WHERE L.filiale = 1290051 /*FILIALE_ID*/ AND L.stato =  'A' GROUP BY L.cliente) L
JOIN CLIENTI C ON C.chiave = L.cliente
JOIN mesi M ON M.mese = 5 /*MESE DA PARAMETRO*/


SELECT L.cliente, COUNT(1) AS NUMERO FROM luci_clienti L WHERE L.filiale = 1290051 /*FILIALE_ID*/ AND L.stato =  'A' GROUP BY L.cliente