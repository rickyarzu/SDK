------------------- Fatturazione e Generazione Fumi ----------------------------

--- La Generazione avviente per semestre/Filiale -----------------------------------
/*
.
Quello che è importante qui è avere a disposizione 2 variabili in base ai 2 parametri

P1) la filiale_id che viene passata dal Record 'Superiore' (la Filiale)
P2) Il cliente da cui prendere i Prezzi delle Luci applicati al Cliente.

a) il numero di Ril.Fumi da controllare ammmesso che questo abbia un senso
b) trovare il prezzo del controllo Fumi in base alla query dei clienti

*/

--- partiamo da un esempio di fatturazione -------------------------------------

select distinct vf.descrizione
from voci_fatture vf join fatture f on vf.fattura = f.chiave
where lower(vf.descrizione) like '%fumi%' and f.generazione_automatica = 202505

-- Servizio manutenzione rilevazione fumi come da contratto visita di Maggio 2025



select VF.fattura, VF.ordinamento ORD, VF.importo, VF.quantita QTA, VF.unita_di_misura UM, VF.descrizione
from voci_fatture vf join fatture f on vf.fattura = f.chiave
where lower(vf.descrizione) like '%fumi%' and f.generazione_automatica = 202505

-- fattura 2253550 -- non so come mai ma rispetto alle Lucin è presente una riga differente per ogni controllo forse legata all'Ubicazione? Indago

select * from voci_fatture vf where vf.fattura = 2253550 order by vf.ordinamento asc

-- scelgo quindi una riga filiale ma 'quale' filiale che non ne vedo ...?


select  C.CHIAVE,RIL_FUMO_VISIBILI VIS, PREZZO_ORDINARIE_FUMI PREZZO,FC.chiave AS FILIALE, FC.nome, FM.stato, FM.descrizione, FM.ubicazione,
       C.VISITA_FATTURAZIONE_ORDINARIA VFA, C.NATURA_IVA NATIVA, IVA,  C.ESENTE_IVA, C.PARTITA_IVA PARTIVA, C.CODICE_FISCALE CF,  C.FATTURA_ANTICIPATA FATTANT, C.note_in_fattura
from CLIENTI C JOIN FATTURE F ON F.id_cliente = C.chiave join filiali_clienti fc on fc.cliente = C.chiave
JOIN fumo_clienti FM ON FM.filiale = FC.chiave
WHERE F.chiave = 2253550



--Servizio manutenzione luci emergenza come da contratto visita di Maggio 2025

select FATTURA, ORDINAMENTO, IMPORTO, QUANTITA, IVA, UNITA_DI_MISURA, CODICE_A_BARRE, IMPORTO_IVATO, SCONTO, PRODOTTO,
       CODICE, DESCRIZIONE, VOCE_VUOTA, JGUID
from VOCI_FATTURE VF where VF.fattura = 2253550 and lower(vf.descrizione) like '%fumi%'
--AND VF.ordinamento = 2

SELECT L.* FROM fumo_clienti L JOIN FATTURE F ON F.id_cliente = L.cliente
WHERE F.chiave = 2253550 AND L.stato = 'A'

-- CLIENTE = 2061987 --- FILIALEì: 2062045

-- Riga Vuota in Posizione 0.
-- Servizio manutenzione rilevazione fumi come da contratto visita di Maggio 2025

-- ORDINAMENTO = 2
-- IMPORTO = 15000 (150 x 100)
-- QUANTITA = 100 (1 x 100)
-- IVA 22
-- UNITA_DI_MISURA = Nr.
-- CODICE_A_BARRE = ''
-- IMPORTO_IVATO 'T'
-- SCONTO = 0 PRODOTTO, CODICE (Niulli)  DESCRIZIONE Vedi Sopr

SELECT
2253550                                 AS FATTURA, /*FATTURA_ID*/
ROW_NUMBER()  OVER (ORDER BY C.IVA) + 1 AS ORDINAMENTO, /*INC_POS*/
c.PREZZO_ORDINARIE_FUMI                 AS IMPORTO,
L.NUMERO*100                            AS QUANTITA,  /*DEFAULT? CHIEDERE*/
C.iva                                   AS IVA,
'Nr.'                                   AS UNITA_DI_MISURA, /*DEFAULT*/
''                                      AS CODICE_A_BARRE,
'F'                                     AS IMPORTO_IVATO,
0                                       AS SCONTO,
''                                      AS PRODOTTO,
''                                      AS CODICE,
'Servizio manutenzione rilevazione fumi come da contratto visita di ' ||
M.nome_mese || ' ' || 2025 /*ANNO*/     AS DESCRIZIONE,
NULL                                    AS VOCE_VUOTA,
GEN_UUID()                              AS JGUID,
2062045                                 AS ID_FILIALE
FROM (SELECT L.cliente, COUNT(1) AS NUMERO FROM fumo_clienti L WHERE L.filiale = 2062045 /*FILIALE_ID*/ AND L.stato =  'A' GROUP BY L.cliente) L
JOIN CLIENTI C ON C.chiave = L.cliente
JOIN mesi M ON M.mese = 5 /*MESE DA PARAMETRO*/

SELECT L.cliente, COUNT(1) AS NUMERO FROM fumo_clienti L WHERE L.filiale = 2062045 /*FILIALE_ID*/ AND L.stato =  'A' GROUP BY L.cliente