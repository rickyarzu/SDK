------------------- Fatturazione e Generazione Gruppi --------------------------

--- La Generazione avviente per mese/Filiale -----------------------------------

/*
Abbiamo la query delle Visiste Gruppi che nasce dalla Union di 3 Viste

Mensili, Trimestrali Ecc ecc...

*/

select NOME_AMMINISTRATORE, AMMINISTRATORE, CLIENTE, VFO, VISITA, CADENZA, NUMERO_VISITA, RAGIONE_SOCIALE, NOME,
       INDIRIZZO, COMUNE, CAP, PROVINCIA, CHIAVE
from VISTA_GRUPPI_TRIMESTRALI  VGT WHERE VGT.visita = 5

-- VADO TANK CLEANING SRL -- 1611712
select CHIAVE, ID_FATTURA, ANNO_FATTURA, ID_CLIENTE, INDIRIZZO_CLIENTE, PROVINCIA_CLIENTE, CAP_CLIENTE, DATA_FATTURA,
       PARTITA_IVA, TITOLO_CLIENTE, COD_FISCALE, PROVINCIA_DESTINAZIONE, CAP_DESTINAZIONE, DESTINAZIONE,
       INDIRIZZO_DESTINAZIONE, DATA_ORDINE, COND_PAGAMENTO, GENERAZIONE_AUTOMATICA, ABI, CAB, ESENTE_IVA,
       NOTE_IN_FATTURA, RITENUTA, ID_AMMINISTRATORE, RIC_PRESENTATA, SOSPESO, INVIO_EMAIL, DA_ESPORTARE_SUL_WEB,
       FATTURA_ELETTRONICA, BODY_FATTURA_ELETTRONICA, CAUSALE, COD_ENTE_FATTURA_ELETTRONICA, IVA_SUGGERITA
From FATTURE F WHERE F.id_cliente = 1611712

--- Vado a Verificare la Fattura di Vado Tanke Cleaning

-- 28/04/2025 -- 2254778 -- Non inviatain forma Elettronica ---  Generazione  202505

-- Vedo le differenti righe fattura ----

select FATTURA, ORDINAMENTO, IMPORTO, QUANTITA, IVA, UNITA_DI_MISURA, CODICE_A_BARRE, IMPORTO_IVATO, SCONTO, PRODOTTO,
       CODICE, DESCRIZIONE, VOCE_VUOTA, JGUID
from VOCI_FATTURE VF where VF.fattura = 2254778

-- Riga Vuota in Posizione 0.
-- Controllo trimestrale gruppi pressurizzazione impianto Gruppo Pressurizzazione visita di Maggio 2025

-- ORDINAMENTO = 1
-- IMPORTO = 20000 (200 x 100)
-- QUANTITA = 100 (1 x 100)
-- IVA (0 = Reverse Charge Vedere Tariffario).
-- UNITA_DI_MISURA = Nr.
-- CODICE_A_BARRE = ''
-- IMPORTO_IVATO 'F' (Vedi Reverse Charge).
-- SCONTO = 0 PRODOTTO, CODICE (Niulli)  DESCRIZIONE Vedi Sopr

select CHIAVE, VISITA_FATTURAZIONE_ORDINARIA VFA, IVA, PARTITA_IVA PARTIVA, CODICE_FISCALE CF, NATURA_IVA NATIVA, FATTURA_ANTICIPATA FATTANT, ESENTE_IVA, C.note_in_fattura,
       GRUPPO_PRESS_VISIBILE, GRUPPO_TIPO_VISITE, GRUPPO_PREZZO_VISITA_SEMESTRALE, GRUPPO_PREZZO_VISITA_TRIMEST, GRUPPO_PREZZO_VISITA_MENSILE,
       --ESTINTORI_VISIBILI,
       --SPRINKLER_VISIBILI, SPRINKLER_TIPO_VISITE, PREZZO_ORDINARIE_SPRINKLER, PREZZO_SEMESTRALE_SPRINKLER,
       --RIL_FUMO_VISIBILI, PREZZO_ORDINARIE_FUMI,
       --LUCI_VISIBILI, PREZZO_ORDINARIE_LUCI,
       --PORTE_VISIBILI, PREZZO_ORDINARIE_PORTE,
       --IMPIANTO_IDRANTI_VISIBILE, PREZZO_ORDINARIE_IDRANTI, PREZZO_COLLAUDI_IDRANTI, COSTO_SOSTITUZIONE_VALVOLA,
       --IMPIANTI_ELETTRICI_VISIBILI,
       COND_PAGAMENTO, ISTAT,  RAGIONE_SOCIALE,
       DISDETTATO, MANUALE, DATA_CONTRATTO, NON_CONFERMATO, SOSPESO, DATA_DIFFERITA, SOSPENSIONE_TEMPORANEA, INIZIO_SOSP_TEMPORANEA, MOTIV_SOSP_TEMPORANEA,
       BANCA_APPOGGIO, ABI, CAB
from CLIENTI C WHERE C.chiave = 1611712

-- ESENTE IVA = T
-- NOTE: Reverse Charge: operazione non soggetta ad IVA ai sensi dell’art. 17, comma 5 del D.P.R. n. 633 del 1972
-- Quindi Se Esente IVA = 'T' applico Iva 0 e nelle note viene Riportarto il REverse Charge

SELECT
2254778                                 AS FATTURA, /*FATTURA_ID*/
ROW_NUMBER()  OVER (ORDER BY C.IVA) + 1 AS ORDINAMENTO, /*INC_POS*/
c.gruppo_prezzo_visita_trimest          AS IMPORTO,
100                                     AS QUANTITA,  /*DEFAULT? CHIEDERE*/
C.iva                                   AS IVA,
'Nr.'                                   AS UNITA_DI_MISURA, /*DEFAULT*/
''                                      AS CODICE_A_BARRE,
gruppo_prezzo_visita_trimest + (gruppo_prezzo_visita_trimest * C.IVA) AS IMPORTO_IVATO,
0                                       AS SCONTO,
''                                      AS PRODOTTO,
''                                      AS CODICE,
'Controllo trimestrale GPA impianto ' ||
'Gruppo Pressurizzazione visita di '  ||
M.nome_mese || ' ' || 2025 /*ANNO*/     AS DESCRIZIONE,
NULL                                    AS VOCE_VUOTA,
GEN_UUID()                              AS JGUID
from VISTA_GRUPPI_TRIMESTRALI  VGT
JOIN CLIENTI C ON C.chiave = VGT.cliente
JOIN mesi M ON VGT.visita = M.mese
WHERE VGT.visita = 5 AND VGT.cliente = 1611712 /*CLIENTE_ID*/

