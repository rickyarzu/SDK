SET TERM ^ ;

create or alter procedure GENERAZIONE_RAPPORTINI (
    P_MESE smallint)
as
declare variable V_ANNO integer;
declare variable V_ANNOMESE integer;
declare variable S integer;
declare variable F integer;
declare variable V_ANNO_ATTUALE integer;
declare variable I integer;
declare variable V_MESE_ATTUALE integer;
declare variable V_ULTIMO date;
begin
    :I = 0;
    :v_anno_attuale = EXTRACT(YEAR FROM CURRENT_DATE);
    :v_mese_attuale = EXTRACT(MONTH FROM CURRENT_DATE);

    -- Impostare l'anno di ritorno uguale a quello corrente di default
    -- :v_ultimo = DATEADD(-1 DAY TO DATEADD(1 MONTH TO CAST('01.' || :v_mese || '.' || :v_anno AS DATE)));

   -- SELECT
   :v_ultimo = DATEADD(-1 DAY TO DATEADD(1 MONTH TO CAST('01.' || :P_MESE || '.' || :v_anno_attuale AS DATE)));
   --  FROM RDB$DATABASE;

  FOR
    SELECT DISTINCT CHIAVE, VISITA_FATTURAZIONE_ORDINARIA, PARTITA_IVA, CODICE_FISCALE, EMAIL, INDIRIZZO_FATTURAZIONE,
       PROVINCIA_FATTURAZIONE, CAP_FATTURAZIONE, INDIRIZZO_SPEDIZIONE, CAP_SPEDIZIONE, PROVINCIA_SPEDIZIONE, NOTE,
       PRESSO, TITOLO, PREZZO_ORDINARIE_SPRINKLER, PREZZO_ORDINARIE_FUMI, PREZZO_ORDINARIE_LUCI, PREZZO_ORDINARIE_PORTE,
       PREZZO_ORDINARIE_IDRANTI, PREZZO_COLLAUDI_IDRANTI, NOTE_NASCOSTE, AMMINISTRATORE, DESCRIZIONE_SCHEDA,
       COND_PAGAMENTO, ISTAT, ESENTE_IVA, NOTE_IN_FATTURA, RITENUTA, DISDETTATO, MANUALE, DATA_CONTRATTO,
       ORDINA_X_UBICAZIONE, NON_CONFERMATO, SOSPESO, DATA_DIFFERITA, DA_ESPORTARE_SUL_WEB, COSTO_SOSTITUZIONE_VALVOLA,
       RESPONSABILE, ESTINTORI_VISIBILI, SPRINKLER_VISIBILI, LUCI_VISIBILI, RIL_FUMO_VISIBILI, PORTE_VISIBILI,
       GRUPPO_PRESS_VISIBILE, IMPIANTO_IDRANTI_VISIBILE, GRUPPO_PREZZO_VISITA_SEMESTRALE, GRUPPO_PREZZO_VISITA_TRIMEST,
       GRUPPO_PREZZO_VISITA_MENSILE, GRUPPO_TIPO_VISITE, PREZZO_SEMESTRALE_SPRINKLER, SPRINKLER_TIPO_VISITE, IVA,
       FATTURA_ANTICIPATA, NATURA_IVA, RAGIONE_SOCIALE, COMUNE_FATTURAZIONE, COMUNE_SPEDIZIONE, TELEFONO1, CELLULARE,
       TELEFONO2, FAX, BANCA_APPOGGIO, ABI, CAB, NR_CIVICO, IMPIANTI_ELETTRICI_VISIBILI
       FROM CLIENTI C JOIN
        (
        SELECT s.cliente FROM VISTA_VISITE_SEMESTRALI S WHERE S.visita = :P_MESE
        UNION ALL
        SELECT t.cliente FROM VISTA_SPRINKLER_TRIMESTRALI T WHERE T.visita = :P_MESE
        UNION all 
        SELECT gv.cliente FROM VISTA_GRUPPI_TRIMESTRALI GV  WHERE GV.visita = :P_MESE AND gv.VISITA NOT IN (SELECT vs.visita FROM VISTA_SPRINKLER_TRIMESTRALI  VS WHERE VS.chiave = GV.chiave)
        UNION ALL
        SELECT m.cliente FROM VISTA_GRUPPI_MENSILI M WHERE M.visita = :P_MESE
        ) VV ON C.chiave = VV.cliente
        WHERE
        ((DATA_DIFFERITA IS NULL) OR (DATA_DIFFERITA <= :v_ultimo))
    ORDER BY c.ragione_sociale
  AS CURSOR CC
  DO
  BEGIN
    :I = I + 1;
    :F = gen_id(gen_chiavi, 1);
    :v_anno = :v_anno_attuale;
    if (:P_MESE = 1) then :v_anno = :v_anno_attuale + 1;
    V_ANNOMESE = :v_anno * 100 + :P_MESE;

    ------- GENERAZIONE FATTURA ------------------------------------------------
    -- GENERO SOLO LA 'TESTA' DELLA FATTURA SENZA LE RIGHE DELLA FATTURA -------
    -- LE RIGHE DELLA FATTURA LE INSERISCO IN UN SECONDO MOMENTO AL MOMENTO
    -- DI GENERARE I RAPPORTINI CHE INSERISCO NELLE FATTURA
    ----------------------------------------------------------------------------
    insert into FATTURE (CHIAVE, ID_FATTURA, ANNO_FATTURA, ID_CLIENTE, INDIRIZZO_CLIENTE, PROVINCIA_CLIENTE, CAP_CLIENTE,
                         DATA_FATTURA, PARTITA_IVA, TITOLO_CLIENTE, COD_FISCALE, PROVINCIA_DESTINAZIONE, CAP_DESTINAZIONE,
                         DESTINAZIONE, INDIRIZZO_DESTINAZIONE, DATA_ORDINE, COND_PAGAMENTO, GENERAZIONE_AUTOMATICA, ABI,
                         CAB, ESENTE_IVA, NOTE_IN_FATTURA, RITENUTA, ID_AMMINISTRATORE, RIC_PRESENTATA, SOSPESO,
                         INVIO_EMAIL, DA_ESPORTARE_SUL_WEB, FATTURA_ELETTRONICA, BODY_FATTURA_ELETTRONICA, CAUSALE,
                         COD_ENTE_FATTURA_ELETTRONICA, ESIGIBILITA_IVA, IVA_SUGGERITA, FATT_ELETT_FOR_UNIQUE_KEY,
                         DOC_CORR_DATA, DOC_CORR_VOCE_RIFERIMENTO, DOC_CORR_CIG, DOC_CORR_CUP, DOC_CORR_CONVENZIONE,
                         DOC_CORR_TIPO, DOC_CORR_ID_DOCUMENTO, NATURA_IVA, MOV_PRESENTAZIONE, GENERALITA_CLIENTE,
                         FATT_ELETT_INVIATA, COMUNE_CLIENTE, BANCA_APPOGGIO, COMUNE_DESTINAZIONE, RIF_VOSTRO_ORDINE,
                         NR_CIVICO)
    values (:F, --  :CHIAVE,
           NULL,  -- :ID_FATTURA,
           NULL,  --:ANNO_FATTURA,
           CC.CHIAVE, -- :ID_CLIENTE,
           CC.INDIRIZZO_FATTURAZIONE, --  :INDIRIZZO_CLIENTE,
           CC.PROVINCIA_FATTURAZIONE, --:PROVINCIA_CLIENTE,
           CC.CAP_FATTURAZIONE, -- :CAP_CLIENTE,
           CAST('25-03-2025' AS DATE), --  :DATA_FATTURA,
           CC.PARTITA_IVA,-- :PARTITA_IVA,
           CC.TITOLO, -- :TITOLO_CLIENTE,
           CC.CODICE_FISCALE, -- :COD_FISCALE,
           CC.PROVINCIA_SPEDIZIONE, -- :PROVINCIA_DESTINAZIONE,
           CC.CAP_SPEDIZIONE, -- :CAP_DESTINAZIONE,
           CC.PRESSO, --  :DESTINAZIONE,
           CC.INDIRIZZO_SPEDIZIONE, --:INDIRIZZO_DESTINAZIONE,
           NULL, -- :DATA_ORDINE,
           CC.COND_PAGAMENTO, --:COND_PAGAMENTO,
           :V_ANNOMESE, -- :GENERAZIONE_AUTOMATICA,
           CC.ABI, -- :ABI,
           CC.CAB, -- :CAB,
           CC.ESENTE_IVA, -- :ESENTE_IVA,
           CC.NOTE_IN_FATTURA, -- :NOTE_IN_FATTURA,
           CC.ritenuta, -- :RITENUTA,
           CC.amministratore, --:ID_AMMINISTRATORE,
           'F', -- :RIC_PRESENTATA,
           CC.SOSPESO, --:SOSPESO,
           'F', -- :INVIO_EMAIL,
           CC.DA_ESPORTARE_SUL_WEB, -- :DA_ESPORTARE_SUL_WEB,
           'T', --  :FATTURA_ELETTRONICA,
           NULL,  -- :BODY_FATTURA_ELETTRONICA,
           '', -- :CAUSALE,
           '', -- :COD_ENTE_FATTURA_ELETTRONICA,
           'I', -- :ESIGIBILITA_IVA, -- RICHIEDE ANALISI
           CC.iva, -- :IVA_SUGGERITA,
           null,  -- :FATT_ELETT_FOR_UNIQUE_KEY,
           NULL, --- :DOC_CORR_DATA,  -- RICHIEDE ANALISI
           '', -- :DOC_CORR_VOCE_RIFERIMENTO,
           '', -- :DOC_CORR_CIG,
           '', -- :DOC_CORR_CUP,
           '', -- :DOC_CORR_CONVENZIONE,
           '', --:DOC_CORR_TIPO,
           '', -- :DOC_CORR_ID_DOCUMENTO
           0,  --:NATURA_IVA,
           null,  --  :MOV_PRESENTAZIONE,
           CC.ragione_sociale, -- :GENERALITA_CLIENTE,
           'F', --:FATT_ELETT_INVIATA,
           CC.comune_fatturazione, -- :COMUNE_CLIENTE,
           CC.banca_appoggio, -- :BANCA_APPOGGIO,
           CC.comune_spedizione, --  :COMUNE_DESTINAZIONE,
           '', -- :RIF_VOSTRO_ORDINE,
           CC.NR_CIVICO -- :NR_CIVICO
           );




       FOR SELECT DISTINCT VV.NOME_AMMINISTRATORE, VV.AMMINISTRATORE, VV.VFO, VV.VISITA, VV.CADENZA, VV.NUMERO_VISITA, VV.RAGIONE_SOCIALE, FC.*
       FROM
          (
            SELECT s.* FROM VISTA_VISITE_SEMESTRALI S WHERE S.visita = :P_MESE and S.cliente = CC.CHIAVE
            UNION ALL
            SELECT t.* FROM VISTA_SPRINKLER_TRIMESTRALI T WHERE T.visita = :P_MESE and T.cliente = CC.CHIAVE
            UNION all 
            SELECT gv.* FROM VISTA_GRUPPI_TRIMESTRALI GV  WHERE GV.visita = :P_MESE AND gv.VISITA NOT IN (SELECT vs.visita FROM VISTA_SPRINKLER_TRIMESTRALI  VS WHERE VS.chiave = GV.chiave)
            and GV.cliente = CC.CHIAVE
            UNION ALL
            SELECT m.* FROM VISTA_GRUPPI_MENSILI M WHERE M.visita = :P_MESE and m.cliente = CC.CHIAVE
          ) VV
          JOIN FILIALI_CLIENTI FC ON VV.CHIAVE = FC.CHIAVE
          WHERE FC.CLIENTE = CC.CHIAVE
          AS CURSOR CF
          DO
          BEGIN
                :S = gen_id(gen_chiavi, 1);

                --- GENERAZIONE DEGLI 'STATINI' --------------------------------------
                -- PER OGNI FATTURA HO UNO O PIù STATINI OGNI STATINO DEVE          --
                -- GENERARE UNA RIGA NELLA FATTURA CHE RIFERISCE LO STATINO         --
                -- OGNI STATINO QUINDI GENERA UN INSIEME DI RIGHE DI INTERVENTI     --
                -- IN BASE AGLI INTERVENTI GENERATI NEGLI STATINI SI GENERANO       --
                -- LE RIGHE CONSUNTIVE NELLE FATTURE IN BASE AGLI STESSI INTERVENTI --
                ----------------------------------------------------------------------
                insert into STATINI (CHIAVE, CLIENTE, FILIALE, TITOLO, RAGIONE_SOCIALE, INDIRIZZO, COMUNE, PROVINCIA, CAP, TELEFONO,
                                     CELLULARE, NOTE, ORARIO_APERTURA_DAL1, ORARIO_APERTURA_DAL2, ORARIO_APERTURA_AL1,
                                     ORARIO_APERTURA_AL2, CHIUSURA, FATTURA, DATA_INTERVENTO, GENERAZIONE_AUTOMATICA,
                                     TECNICO_INTERVENTO, SCANSIONE, REGISTRO, NOTE_PER_IL_TECNICO, SOSPESO, DA_ESPORTARE_SUL_WEB,
                                     RESPONSABILE, ESPORTATO_SU_MOBILE, NOTE_DAL_TECNICO, JSON_DA_MOBILE, PDF_STATINO, REGISTRO_IS_PDF,
                                     VERBALE_PROVA_DINAMICA, VERBALE_MANICHETTE, PREVENTIVO, IGNORA_EVIDENZIAZIONE, ANNULLATO_DA_TABLET,
                                     MOBILEWARN_NUOVA_ATTREZZATURA, MOBILEWARN_ORDINARIA_RITIRATA, MOBILEWARN_N_ORDIN_CONTROLLATA,
                                     MOBILEWARN_SMALTIMENTO, STATO_LAVORAZIONE, DATA_CHIUSURA_DA_SERVER, CHIUSURA_EXT, CHIUSURA_STATINO,
                                     MOBILEWARN_NON_ESEGUITI, PRESA_IN_CARICO, FORNITURA, WANUMBER)
                values (
                   :S , --  :CHIAVE,
                   CF.CLIENTE, --:CLIENTE,
                   CF.CHIAVE, --:FILIALE,
                   CC.TITOLO, -- :TITOLO,
                   CC.RAGIONE_SOCIALE,-- :RAGIONE_SOCIALE
                   CF.INDIRIZZO, -- :INDIRIZZO,
                   CF.COMUNE, -- :COMUNE,
                   CF.PROVINCIA, -- :PROVINCIA,
                   CF.CAP,  -- :CAP,
                   CF.TELEFONO, -- :TELEFONO,  --
                   cc.CELLULARE, -- :CELLULARE, --  fare analisi perché il cellulare è del cliente non della filiale
                   CF.NOTE, -- :NOTE,
                   CF.ORARIO_APERTURA_DAL1, -- :ORARIO_APERTURA_DAL1,
                   CF.ORARIO_APERTURA_DAL2,-- :ORARIO_APERTURA_DAL2,
                   CF.ORARIO_APERTURA_AL1, --:ORARIO_APERTURA_AL1,
                   CF.ORARIO_APERTURA_AL2, --:ORARIO_APERTURA_AL2,
                   CF.CHIUSURA, -- :CHIUSURA, -- annotazioni dell'utente testualli
                   :F, --:FATTURA, -- generato dal generatore delle fatture quindi prima del commit
                   NULL, --:DATA_INTERVENTO, -- valorizata al momento dell'intervento (1° o 2° intervennto)? Richiede analisi
                   :V_ANNOMESE, -- :GENERAZIONE_AUTOMATICA,
                   NULL, -- :TECNICO_INTERVENTO, -- tecnico intervento verrà valorizzato dalla App al termine dell'intervento (1° o 2°)? Chiede analisi
                   null,  -- :SCANSIONE, LEGACY se compilato foglio a mano
                   NULL, -- :REGISTRO,  -- immagine? Richiede analisi - inserita dalla App
                   CF.NOTE, --  :NOTE_PER_IL_TECNICO,  -- Note inizialmente identiche alle Note -- richiede analisi
                   null,  -- :SOSPESO,  -- spesso null talvolta F -- richiede analisi
                   CC.DA_ESPORTARE_SUL_WEB, -- :DA_ESPORTARE_SUL_WEB,
                   CC.RESPONSABILE, -- :RESPONSABILE, -- TALVOLTA cambia rispetto al cliente modifica successiva?
                   'F', -- :ESPORTATO_SU_MOBILE, -- SUPPONGO F richiede analisi sul codice ad esempio
                   '', --:NOTE_DAL_TECNICO,
                   null, --  :JSON_DA_MOBILE
                   null, -- :PDF_STATINO
                   'F', -- :REGISTRO_IS_PDF
                   null,-- :VERBALE_PROVA_DINAMICA, --pdf generato dal tecnico quindi
                   null, --:VERBALE_MANICHETTE,
                   null, -- :PREVENTIVO,
                   'F', --- :IGNORA_EVIDENZIAZIONE, -- Talvolta ma molto raramente vale True ma cosa significa?
                   'F', --- :ANNULLATO_DA_TABLET,  -- input da Tablet da App va implementato nella App ........
                   'F', ---:MOBILEWARN_NUOVA_ATTREZZATURA,
                   'F', --- :MOBILEWARN_ORDINARIA_RITIRATA,
                   'F', --- :MOBILEWARN_N_ORDIN_CONTROLLATA,
                   'F', ---:MOBILEWARN_SMALTIMENTO,
                   null,  ---  :STATO_LAVORAZIONE, -- talvolta lo trovo in 'R' è un 'errore' o anticipa una casistica di 'Ritiro'? Verifica sul campo col modello
                   null,  ---:DATA_CHIUSURA_DA_SERVER,
                   null,  --- :CHIUSURA_EXT,
                   null,  --- :CHIUSURA_STATINO,
                   null,  --- :MOBILEWARN_NON_ESEGUITI,
                   null,  --- :PRESA_IN_CARICO,
                   -------
                   'F',   --- :FORNITURA
                   null   ---  :WANUMBER,  --- si potrà sistemare la facdenda un giorno?
                   );
    
          END
      END
end^

SET TERM ; ^

/* Following GRANT statements are generated automatically */

GRANT USAGE ON SEQUENCE GEN_CHIAVI TO PROCEDURE GENERAZIONE_RAPPORTINI;
GRANT SELECT ON CLIENTI TO PROCEDURE GENERAZIONE_RAPPORTINI;
GRANT SELECT ON VISTA_VISITE_SEMESTRALI TO PROCEDURE GENERAZIONE_RAPPORTINI;
GRANT SELECT ON VISTA_SPRINKLER_TRIMESTRALI TO PROCEDURE GENERAZIONE_RAPPORTINI;
GRANT SELECT ON VISTA_GRUPPI_TRIMESTRALI TO PROCEDURE GENERAZIONE_RAPPORTINI;
GRANT SELECT ON VISTA_GRUPPI_MENSILI TO PROCEDURE GENERAZIONE_RAPPORTINI;
GRANT INSERT ON FATTURE TO PROCEDURE GENERAZIONE_RAPPORTINI;
GRANT SELECT ON FILIALI_CLIENTI TO PROCEDURE GENERAZIONE_RAPPORTINI;
GRANT INSERT ON STATINI TO PROCEDURE GENERAZIONE_RAPPORTINI;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE GENERAZIONE_RAPPORTINI TO SYSDBA;