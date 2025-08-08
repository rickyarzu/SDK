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

select CHIAVE, STATINO, ESTINTORE, TIPO, DESCRIZIONE_ALTERNATIVA, RESET_DATA_COLLAUDO, RESET_DATA_REVISIONE, ANOMALIA,
       DATA_CONTROLLO, DATA_RITIRO, DATA_SMALTIMENTO, DATA_RESTITUZIONE, DATA_CONSEGNA, DATA_CONTROLLO_NEGATO
from INTERVENTI_ESTINTORI


select MAG.CHIAVE, MAG.STATINO, MAG.ESTINTORE, MAG.TIPO, MAG.DESCRIZIONE_ALTERNATIVA, MAG.RESET_DATA_COLLAUDO,
       MAG.RESET_DATA_REVISIONE, MAG.ANOMALIA, MAG.DATA_CONTROLLO, MAG.DATA_RITIRO, MAG.DATA_SMALTIMENTO,
       MAG.DATA_RESTITUZIONE, MAG.DATA_CONSEGNA, MAG.DATA_CONTROLLO_NEGATO
from INTERVENTI_ESTINTORI_MAGGIO MAG