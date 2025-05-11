------------------- Fatturazione e Generazione Estintori -----------------------

--- La Generazione avviente per semestre/Filiale -------------------------------
/*
.
Quello che è importante qui è avere a disposizione 2 variabili in base ai 2 parametri

P1) la filiale_id che viene passata dal Record 'Superiore' (la Filiale)
P2) Il cliente da cui prendere i Prezzi delle Luci applicati al Cliente.

a) il numero complessivo  di Estintori per applicare la tariffa 'giusta'
b) trovare il prezzo degli estintori da controllare
c) il prezzo ed il numero di estintori da

*/

--- partiamo da un esempio di fatturazione -------------------------------------

select distinct vf.descrizione
from voci_fatture vf join fatture f on vf.fattura = f.chiave
where lower(vf.descrizione) like '%estint%' and f.generazione_automatica = 202505
order by f.chiave, vf.ordinamento

-- Servizio manutenzione porte tagliafuoco come da contratto visita di Maggio 2025

select F.id_cliente, VF.fattura, VF.ordinamento ORD, VF.importo, VF.quantita QTA, VF.unita_di_misura UM, VF.descrizione
from voci_fatture vf join fatture f on vf.fattura = f.chiave
where (lower(vf.descrizione) like '%estint%' or (lower(vf.descrizione) like '%smal%')  ) -- and f.generazione_automatica = 202505
and f.chiave in (select distinct vcf.fattura  from voci_fatture vcf where lower(vcf.descrizione) like '%smal%')
order by f.generazione_automatica desc,  f.chiave, vf.ordinamento



-- fattura 2253950 --
-- Cliente Fattura: 2208919

select vf.ordinamento, vf.importo, vf.quantita, vf.iva, vf.unita_di_misura
 from voci_fatture vf where vf.fattura = 2253950 order by vf.ordinamento asc

-- Riga numero 2 porte Tagliafuoco


select  C.CHIAVE, c.porte_visibili VIS, PREZZO_ORDINARIE_PORTE  PREZZO,FC.chiave AS FILIALE, FC.nome, FM.stato, FM.dimensione, FM.ubicazione,
       C.VISITA_FATTURAZIONE_ORDINARIA VFA, C.NATURA_IVA NATIVA, IVA,  C.ESENTE_IVA, C.PARTITA_IVA PARTIVA, C.CODICE_FISCALE CF,  C.FATTURA_ANTICIPATA FATTANT, C.note_in_fattura
from CLIENTI C JOIN FATTURE F ON F.id_cliente = C.chiave join filiali_clienti fc on fc.cliente = C.chiave
JOIN porte_clienti FM ON FM.filiale = FC.chiave
WHERE F.chiave = 2253950  AND fm.stato = 'A'
-- questa query riporta 'MOLTE' porte da controllare ..........................


--Servizio manutenzione porte tagliafuoco come da contratto visita di Maggio 2025

select FATTURA, ORDINAMENTO, IMPORTO, QUANTITA, IVA, UNITA_DI_MISURA,  IMPORTO_IVATO, SCONTO,
-- PRODOTTO, CODICE, CODICE_A_BARRE,
        DESCRIZIONE
from VOCI_FATTURE VF where VF.fattura = 2253950 and codice = '' and vf.descrizione like '%stint%';
--AND VF.ordinamento = 2

SELECT L.* FROM fumo_clienti L JOIN FATTURE F ON F.id_cliente = L.cliente
WHERE F.chiave = 2253743 AND L.stato = 'A'

-- CLIENTE = 2061987 --- FILIALEì: 1708131

-- Riga Vuota in Posizione 0.
-- Servizio manutenzione rilevazione fumi come da contratto visita di Maggio 2025

-- ORDINAMENTO = 2
-- IMPORTO = 950 (9,50 x 100)
-- QUANTITA = 3100 (31 x 100)
-- IVA 22
-- UNITA_DI_MISURA = Nr.
-- CODICE_A_BARRE = ''
-- IMPORTO_IVATO 'T'
-- SCONTO = 0 PRODOTTO, CODICE (Niulli)  DESCRIZIONE Vedi Sopr

SELECT
2253550                                 AS FATTURA, /*FATTURA_ID*/
ROW_NUMBER()  OVER (ORDER BY C.IVA) + 1 AS ORDINAMENTO, /*INC_POS*/
c.prezzo_ordinarie_porte                AS IMPORTO,
L.NUMERO*100                            AS QUANTITA,  /*DEFAULT? CHIEDERE*/
C.iva                                   AS IVA,
'Nr.'                                   AS UNITA_DI_MISURA, /*DEFAULT*/
''                                      AS CODICE_A_BARRE,
'F'                                     AS IMPORTO_IVATO,
0                                       AS SCONTO,
''                                      AS PRODOTTO,
''                                      AS CODICE,
'Servizio manutenzione porte tagliafuoco come da contratto visita di ' ||
M.nome_mese || ' ' || 2025 /*ANNO*/     AS DESCRIZIONE,
NULL                                    AS VOCE_VUOTA,
GEN_UUID()                              AS JGUID,
1708131                                 AS ID_FILIALE
FROM (SELECT L.cliente, COUNT(1) AS NUMERO FROM porte_clienti L WHERE L.filiale = 1708131 /*FILIALE_ID*/ AND L.stato =  'A' GROUP BY L.cliente) L
JOIN CLIENTI C ON C.chiave = L.cliente
JOIN mesi M ON M.mese = 5 /*MESE DA PARAMETRO*/

SELECT L.cliente, COUNT(1) AS NUMERO FROM porte_clienti L WHERE L.filiale = 1708131 /*FILIALE_ID*/ AND L.stato =  'A' GROUP BY L.cliente