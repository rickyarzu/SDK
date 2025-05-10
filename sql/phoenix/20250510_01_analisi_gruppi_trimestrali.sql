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

select FATTURA, ORDINAMENTO, IMPORTO, QUANTITA, IVA, UNITA_DI_MISURA, CODICE_A_BARRE, IMPORTO_IVATO, SCONTO, PRODOTTO, CODICE, DESCRIZIONE
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
-- SCONTO = 0 PRODOTTO, CODICE (Niulli)  DESCRIZIONE Vedi Sopra

