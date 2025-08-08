--SELECT * FROM FATTURE order by chiave desc
--order by chiave desc

--ALTER TABLE ACQUISTI ADD JGUID UUID
SELECT --, RDB$SYSTEM_FLAG
 'ALTER TABLE ' ||   a.RDB$RELATION_NAME
 || ' ADD JGUID UUID;'
FROM RDB$RELATIONS a
WHERE RDB$SYSTEM_FLAG <> 1
AND  a.RDB$RELATION_NAME NOT LIKE '%$%'
ORDER BY a.RDB$RELATION_NAME


SELECT --, RDB$SYSTEM_FLAG
 'ALTER TABLE ' ||   a.RDB$RELATION_NAME
 || ' DROP JGUID UUID;'
FROM RDB$RELATIONS a
WHERE RDB$SYSTEM_FLAG <> 1
AND  a.RDB$RELATION_NAME NOT LIKE '%$%'
ORDER BY a.RDB$RELATION_NAME


SELECT * FROM FATTURE;

select * from amministratori where ragione_sociale like 'GENOVA%HI%';
-- 209543 --

SELECT * FROM CLIENTI WHERE DESCRIZIONE_SCHEDA LIKE 'GENOVA%HI%';
-- 209544

SELECT CHIAVE FROM CLIENTI WHERE AMMINISTRATORE = 209543;

SELECT S.*
FROM  STATINI S
JOIN CLIENTI C ON S.CLIENTE = C.CHIAVE
WHERE C.amministratore = 209543 ORDER BY CHIAVE DESC;

         WHERE cliente  IN (SELECT CHIAVE FROM CLIENTI WHERE AMMINISTRATORE = 20954);

-- 209655 (Sede)+

select distinct attrezzatura  from  v_sintesi_attrezzature_clienti;

select chiave, statino, attrezzatura, tipo_attrezzatura, anomalia, tipo, data_controllo, data_consegna, periodi_non_ordinari, data_controllo_negato, jguid
from interventi_attrezzature;

select distinct tipo_attrezzatura, tipo from interventi_attrezzature;

select TIPO, MATRICOLA, ANNO_COSTRUZIONE, C.DESCRIZIONE_SCHEDA , F.nome
from PORTE_CLIENTI p JOIN CLIENTI C ON p.CLIENTE = C.CHIAVE
join filiali_clienti F on F.chiave = p.filiale

select * from interventi_statini_sintesi_view;

select chiave, cliente, ragione_sociale, filiale_nome, filiale_comune, attrezzatura, numero from  v_sintesi_attrezzature_clienti;

SELECT
    FK.RDB$CONSTRAINT_NAME AS FOREIGN_KEY_NAME,
    FK.RDB$RELATION_NAME AS TABLE_WITH_FOREIGN_KEY,
    RC.RDB$RELATION_NAME AS REFERENCED_TABLE_NAME
FROM
    RDB$RELATION_CONSTRAINTS FK
JOIN
    RDB$REF_CONSTRAINTS RC ON FK.RDB$CONSTRAINT_NAME = RC.RDB$CONSTRAINT_NAME
WHERE
    FK.RDB$CONSTRAINT_TYPE = 'FOREIGN KEY'
    AND RC.RDB$CONST_NAME_UQ = :TABLE_NAME;

SELECT * FROM  RDB$RELATION_CONSTRAINTS FK WHERE FK.RDB$CONSTRAINT_TYPE = 'FOREIGN KEY'; -- AND FK.RDB$RELATION_NAME =  'STATINI';

SELECT * FROM RDB$REF_CONSTRAINTS;

SELECT DISTINCT
          rc.RDB$CONSTRAINT_NAME AS "constraint_name",
          rc.RDB$RELATION_NAME AS "on table",
          d1.RDB$FIELD_NAME AS "on field",
          d2.RDB$DEPENDED_ON_NAME AS "references table",
          d2.RDB$FIELD_NAME AS "references field",
          refc.RDB$UPDATE_RULE AS "on update",
          refc.RDB$DELETE_RULE AS "on delete"
     FROM RDB$RELATION_CONSTRAINTS AS rc
         JOIN RDB$REF_CONSTRAINTS refc ON rc.RDB$CONSTRAINT_NAME = refc.RDB$CONSTRAINT_NAME
         JOIN RDB$DEPENDENCIES d1 ON d1.RDB$DEPENDED_ON_NAME = rc.RDB$RELATION_NAME
         JOIN RDB$DEPENDENCIES d2 ON d1.RDB$DEPENDENT_NAME = d2.RDB$DEPENDENT_NAME
    WHERE rc.RDB$CONSTRAINT_TYPE = 'FOREIGN KEY'
      --AND d1.RDB$DEPENDED_ON_NAME <> d2.RDB$DEPENDED_ON_NAME
      --AND d1.RDB$FIELD_NAME <> d2.RDB$FIELD_NAME
      AND d2.RDB$DEPENDED_ON_NAME = 'STATINI'  -- table name


SELECT DISTINCT  FK.RDB$RELATION_NAME, FK.RDB$CONSTRAINT_NAME, rc.RDB$CONST_NAME_UQ, D1.*, FK.*
   FROM         RDB$RELATION_CONSTRAINTS FK
   JOIN         RDB$REF_CONSTRAINTS RC ON FK.RDB$CONSTRAINT_NAME = RC.RDB$CONSTRAINT_NAME
  JOIN         RDB$DEPENDENCIES d1 ON d1.RDB$DEPENDED_ON_NAME = FK.RDB$RELATION_NAME
   WHERE    FK.RDB$CONSTRAINT_TYPE = 'FOREIGN KEY'
           AND LOWER(FK.RDB$RELATION_NAME) IN ('interventi_attrezzature', 'interventi_estintori', 'interventi_idranti', 'interventi_impianti_elettrici');



SELECT rc.RDB$CONSTRAINT_NAME,
          rc.RDB$RELATION_NAME AS table_name,
          s.RDB$FIELD_NAME AS field_name,
          rc.RDB$CONSTRAINT_NAME AS constraint_name,
          rc.RDB$CONSTRAINT_TYPE AS constraint_type,
          i.RDB$DESCRIPTION AS description,
          rc.RDB$DEFERRABLE AS is_deferrable,
          rc.RDB$INITIALLY_DEFERRED AS is_deferred,
          refc.RDB$UPDATE_RULE AS on_update,
          refc.RDB$DELETE_RULE AS on_delete,
          refc.RDB$MATCH_OPTION AS match_type,
          i2.RDB$RELATION_NAME AS references_table,
          s2.RDB$FIELD_NAME AS references_field,
          (s.RDB$FIELD_POSITION + 1) AS field_position
     FROM RDB$INDEX_SEGMENTS s
LEFT JOIN RDB$INDICES i ON i.RDB$INDEX_NAME = s.RDB$INDEX_NAME
LEFT JOIN RDB$RELATION_CONSTRAINTS rc ON rc.RDB$INDEX_NAME = s.RDB$INDEX_NAME
LEFT JOIN RDB$REF_CONSTRAINTS refc ON rc.RDB$CONSTRAINT_NAME = refc.RDB$CONSTRAINT_NAME
LEFT JOIN RDB$RELATION_CONSTRAINTS rc2 ON rc2.RDB$CONSTRAINT_NAME = refc.RDB$CONST_NAME_UQ
LEFT JOIN RDB$INDICES i2 ON i2.RDB$INDEX_NAME = rc2.RDB$INDEX_NAME
LEFT JOIN RDB$INDEX_SEGMENTS s2 ON i2.RDB$INDEX_NAME = s2.RDB$INDEX_NAME
    WHERE i2.RDB$RELATION_NAME='STATINI'       -- table name
      AND RC.RDB$CONSTRAINT_TYPE = 'FOREIGN KEY'
 ORDER BY s.RDB$FIELD_POSITION;

select COALESCE(TECNICO_INTERVENTO, RESPONSABILE) AS TECNICO, COUNT(1) AS NUMERO, T.descrizione
from rdb$database R, STATINI S JOIN tecnici T on T.chiave = s.tecnico_intervento
WHERE APPUNTAMENTO_DATA >= current_date - 30
GROUP BY  COALESCE(TECNICO_INTERVENTO, RESPONSABILE),  T.descrizione;

delete from CALENDARIO_EVENTI;

select * from statini where esportato_su_mobile = 'F' order by chiave desc;

INSERT INTO STATINI_202407_F  select CHIAVE FROM statini where esportato_su_mobile = 'F' order by chiave desc;

UPDATE STATINI SET esportato_su_mobile = 'T' where ESPORTATO_SU_MOBILE = 'F';

select   gen_id(gen_chiavi, 1)


update calendario_eventi e set e.calendario = e.tecnico where e.calendario is null;

select * from calendario;

select * from tecnici t where chiave = 1934697;

select * from calendario_eventi where tecnico = 1934697;

insert into CALENDARIO_EVENTI (CHIAVE, STATINO, TECNICO, DALLE_ORE, ALLE_ORE, NOTE, SUBJECT, JGUID, ICONA, TECNICO_SIGLA, CALENDARIO)
select
GEN_ID(GEN_CHIAVI, 1),
S.CHIAVE,
COALESCE(TECNICO_INTERVENTO, RESPONSABILE) AS TECNICO,
APPUNTAMENTO_DATA + APPUNTAMENTO_ORA AS APPUNTAMENTO_DATA_ORA,
dateadd (+1 hour to APPUNTAMENTO_DATA + APPUNTAMENTO_ORA),
COALESCE(NOTE_PER_IL_TECNICO, RAGIONE_SOCIALE),
RAGIONE_SOCIALE,
gen_uuid(),
0,
T.SIGLA,
COALESCE(TECNICO_INTERVENTO, RESPONSABILE) AS CALENDARIO
FROM STATINI S JOIN TECNICI T ON COALESCE(S.TECNICO_INTERVENTO, S.RESPONSABILE) = T.CHIAVE
WHERE APPUNTAMENTO_DATA IS NOT NULL AND APPUNTAMENTO_DATA >
AND NOT EXISTS (SELECT 1 FROM CALENDARIO_EVENTI WHERE STATINO = S.CHIAVE)
ORDER BY CHIAVE;



insert into CALENDARIO_EVENTI (CHIAVE, STATINO, TECNICO, DALLE_ORE, ALLE_ORE, NOTE, SUBJECT, JGUID, ICONA, TECNICO_SIGLA, CALENDARIO)
select
GEN_ID(GEN_CHIAVI, 1),
S.CHIAVE,
COALESCE(TECNICO_INTERVENTO, RESPONSABILE) AS TECNICO,
APPUNTAMENTO_DATA + APPUNTAMENTO_ORA AS APPUNTAMENTO_DATA_ORA,
dateadd (+1 hour to APPUNTAMENTO_DATA + APPUNTAMENTO_ORA),
COALESCE(NOTE_PER_IL_TECNICO, RAGIONE_SOCIALE),
RAGIONE_SOCIALE,
gen_uuid(),
0,
T.SIGLA,
COALESCE(TECNICO_INTERVENTO, RESPONSABILE) AS CALENDARIO
FROM STATINI S JOIN TECNICI T ON COALESCE(S.TECNICO_INTERVENTO, S.RESPONSABILE) = T.CHIAVE
WHERE APPUNTAMENTO_DATA IS NOT NULL  AND APPUNTAMENTO_DATA >= CURRENT_DATE
AND NOT EXISTS (SELECT 1 FROM CALENDARIO_EVENTI C WHERE C.STATINO = S.CHIAVE AND C.DALLE_ORE >= S.APPUNTAMENTO_DATA)
ORDER BY CHIAVE;

DELETE FROM CALENDARIO_EVENTI E WHERE E.googleid IS NULL AND DALLE_ORE >= CURRENT_DATE;



SELECT * FROM CALENDARIO_EVENTI order by chiave desc;

SELECT * FROM Gen_id(gen_chiavi, 1) ;

SELECT Gen_id(gen_chiavi, 1)  FROM RDB$DATABASE;


SELECT * FROM CALENDARIO_EVENTI  ORDER BY CHIAVE DESC;

select * from statini s where s.chiave = 2178229;


delete from calendario_eventi where chiave = 2171804;
update

select * from google_calendars;

select distinct TECNICO, COLORE, count(1) from calendario_eventi where colore is not null group by TECNICO, COLORE;

select * from calendario;

update calendario set defaultcolor = 4632063 where chiave = 1941647;
update calendario set defaultcolor = 15173193 where chiave = 1968180;
update calendario set defaultcolor = 9623106 where chiave = 2035681;
update calendario set defaultcolor = 6189740 where chiave = 2038419;
update calendario set defaultcolor = 4632063 where chiave = 2062810;

SELECT * FROM CALENDARIO_EVENTI WHERE STATINO = 2160017;  --2159530;

SELECT * FROM STATINI S WHERE GCAL = 'G'
AND NOT EXISTS (SELECT 1 FROM CALENDARIO_EVENTI E WHERE E.STATINO = S.CHIAVE)

update STATINI S set S.GCAL = NULL WHERE GCAL = 'G'
AND EXISTS (SELECT 1 FROM CALENDARIO_EVENTI E WHERE E.STATINO = S.CHIAVE AND GOOGLEID IS NULL)



SELECT * FROM CALENDARIO_EVENTI WHERE SUBJECT LIKE 'NON%SOLO%SPOSA%MANDATO'

select CHIAVE, CLIENTE, NOME, PROVINCIA, CAP, INDIRIZZO, TELEFONO, NOTE, ORARIO_APERTURA_DAL1, ORARIO_APERTURA_DAL2,
       ORARIO_APERTURA_AL1, ORARIO_APERTURA_AL2, CHIUSURA, CELLULARE, EMAIL, ESCLUDI_DA_GENERAZIONE, SEDE, ID,
       REF_TELEFONO, REF_CELLULARE, COMUNE, JGUID
from FILIALI_CLIENTI WHERE NOME LIKE '%NON%SOLO%SPOSA%';

SELECT * FROM STATINI WHERE RAGIONE_SOCIALE LIKE '%ROSIELLO%';

DELETE FROM CALENDARIO;

insert into CALENDARIO (CHIAVE, TECNICO, SUMMARY, DESCRIPTION, TECNICO_SIGLA, GOOGLE_SUMMARY)
SELECT DISTINCT T.CHIAVE, T.CHIAVE, null, DESCRIZIONE, T.SIGLA, EMAIL
     FROM tecnici T JOIN STATINI S ON COALESCE(S.TECNICO_INTERVENTO, S.RESPONSABILE) = T.CHIAVE
     WHERE APPUNTAMENTO_DATA >= current_date - 30
     AND NOT EXISTS (SELECT 1 FROM CALENDARIO C WHERE C.CHIAVE = T.CHIAVE);

SELECT * FROM statini WHERE CHIAVE = 2157340;

update STATINI SET jguid = gen_uuid();

select chiave, ragione_sociale, jguid from statini order by chiave desc;

COMMIT;

SELECT * FROM CALENDARIO;


select CHIAVE, CLIENTE, FILIALE, TITOLO, RAGIONE_SOCIALE, INDIRIZZO, COMUNE, PROVINCIA, CAP, TELEFONO, CELLULARE, NOTE,
                         ORARIO_APERTURA_DAL1, ORARIO_APERTURA_DAL2, ORARIO_APERTURA_AL1, ORARIO_APERTURA_AL2, CHIUSURA, FATTURA,
                         DATA_INTERVENTO, GENERAZIONE_AUTOMATICA, TECNICO_INTERVENTO, SCANSIONE, REGISTRO, NOTE_PER_IL_TECNICO, SOSPESO,
                         DA_ESPORTARE_SUL_WEB, RESPONSABILE, ESPORTATO_SU_MOBILE, NOTE_DAL_TECNICO, JSON_DA_MOBILE, PDF_STATINO,
                         REGISTRO_IS_PDF, VERBALE_PROVA_DINAMICA, VERBALE_MANICHETTE, PREVENTIVO, IGNORA_EVIDENZIAZIONE,
                         ANNULLATO_DA_TABLET, MOBILEWARN_NUOVA_ATTREZZATURA, MOBILEWARN_ORDINARIA_RITIRATA,
                         MOBILEWARN_N_ORDIN_CONTROLLATA, MOBILEWARN_SMALTIMENTO, STATO_LAVORAZIONE, DATA_CHIUSURA_DA_SERVER, CHIUSURA_EXT,
                         CHIUSURA_STATINO, MOBILEWARN_NON_ESEGUITI, PRESA_IN_CARICO, FORNITURA, APPUNTAMENTO_DATA, APPUNTAMENTO_ORA,
                         STATO, JGUID
                  from STATINI  ;


---------------------------------------------------------------------------------------------------------------------------------------------
-- Instruct flamerobin to use # as the terminator
SET TERM #;
EXECUTE BLOCK 
AS
DECLARE customerID INT = 1234;
BEGIN
  SELECT * FROM customers WHERE customerid = :customerID;
END#
-- Restore terminator to ;
SET TERM ;#

select * from tecnici;

update calendario c set c.googleid = (select ID from GOOGLE_CALENDARS GC WHERE GC.summary;

UPDATE CALENDARIO C SET c.googleid = GOOGLE_SUMMARY;

select ID, DESCRIPTION, LOCATION, SUMMARY, TIMEZONE, COLOR, BACK_COLOR, FORE_COLOR, ISPRIMARY, JGUID
from GOOGLE_CALENDARS where id not in (select GOOGLEID FROM  CALENDARIO);

select JGUID, ID, ETAG, SUMMARY, DESCRIPTION, STARTTIME, ENDTIME, CREATED, UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE,
       RECURRINGID, "SEQUENCE", COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFICATIONS, ISALLDAY, ATTENDEES,
       REMINDERS
from GOOGLE_CALENDAR_EVENTS e

select color, calendarid, count(1)  from GOOGLE_CALENDAR_EVENTS group by color, calendarid;

select CHIAVE, TECNICO, SUMMARY, DESCRIPTION, TECNICO_SIGLA, COLORE, JGUID, GOOGLE_JSON, GFORECOLOR, GBACKCOLOR,
       DEFAULTCOLOR, GOOGLEID, GOOGLE_SUMMARY
from CALENDARIO;

DELETE FROM  GOOGLE_CALENDARS;

UPDATE google_calendar_events E SET E.jguid = gen_uuid();

DELETE  from GOOGLE_CALENDAR_EVENTS;


select ID, DESCRIZIONE
from CALENDARIO_GRUPPI


UPDATE CALENDARIO SET GRUPPO_ID = 'T' WHERE GRUPPO_ID IS NULL;

insert into CALENDARIO (GOOGLEID,  DESCRIPTION,  COLORE, GBACKCOLOR,  GFORECOLOR, GRUPPO_ID)
select                  ID,        SUMMARY,      COLOR,  BACK_COLOR,  FORE_COLOR, 'A'
from GOOGLE_CALENDARS where id not in (select GOOGLEID FROM  CALENDARIO);

SELECT * FROM CALENDARIO


select ID, ETAG, SUMMARY, DESCRIPTION, STARTTIME, ENDTIME, CREATED, UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE,
       RECURRINGID, "SEQUENCE", COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFICATIONS, ISALLDAY, ATTENDEES,
       REMINDERS, JGUID, BACKGROUNDCOLOR, FOREGROUNDCOLOR, SYNC
from GOOGLE_CALENDAR_EVENTS

update GOOGLE_CALENDAR_EVENTS set sync = 'T' WHERE ID not like '{%';
update GOOGLE_CALENDAR_EVENTS set sync = 'T' WHERE sync is null;
update GOOGLE_CALENDAR_EVENTS set sync = 'F' WHERE sync IS NULL;
SELECT * FROM   GOOGLE_CALENDAR_EVENTS WHERE sync = 'F' or sync is null;


select  * from CALENDARIO_EVENTI;

select CHIAVE, TECNICO, SUMMARY, DESCRIPTION, TECNICO_SIGLA, COLORE, JGUID, GOOGLE_JSON, GFORECOLOR, GBACKCOLOR,
       DEFAULTCOLOR, GOOGLEID, GOOGLE_SUMMARY, GRUPPO_ID, "ACTIVE"
from CALENDARIO;

select ID, ETAG, SUMMARY, DESCRIPTION, STARTTIME, ENDTIME, CREATED, UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE,
       RECURRINGID, "SEQUENCE", COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFICATIONS, ISALLDAY, ATTENDEES,
       REMINDERS, JGUID, BACKGROUNDCOLOR, FOREGROUNDCOLOR, SYNC
from GOOGLE_CALENDAR_EVENTS;

UPDATE google_calendar_events E SET BACKGROUNDCOLOR = (SELECT C.BACK_COLOR FROM GOOGLE_COLORS C WHERE ID =  E.COLOR)
WHERE BACKGROUNDCOLOR IS NULL;


select ID, BACK_COLOR, FORE_COLOR from GOOGLE_COLORS;

select * from Calendario_eventi order by chiave desc;
select C.CHIAVE, C.tecnico_sigla, COLORE,  GFORECOLOR, GBACKCOLOR, C.GOOGLEID, G.color, G.back_color, G.fore_color
from CALENDARIO C JOIN google_calendars G ON C.googleid = G.id;

update CALENDARIO C SET COLORE = (SELECT G.COLOR FROM google_calendars G WHERE C.googleid = G.id) WHERE COLORE IS NULL;
update CALENDARIO C set GBACKCOLOR = (select BACK_COLOR FROM google_colors G WHERE G.id = C.colore) WHERE C.colore IS NOT NULL AND GBACKCOLOR IS NULL;
UPDATE CALENDARIO C SET GFORECOLOR = 0 WHERE GFORECOLOR IS NULL;
UPDATE calendario_eventi F SET F.colore = (SELECT C.gbackcolor FROM CALENDARIO C WHERE C.chiave = F.calendario);-- WHERE F.colore IS NULL;

SELECT * FROM calendario_eventi ORDER BY CHIAVE DESC;



SELECT DISTINCT C.chiave, C.descrizione_scheda
FROM FILIALI_CLIENTI F 
JOIN CLIENTI C ON  F.CLIENTE = C.CHIAVE
JOIN STATINI S ON F.chiave = S.filiale
WHERE S.STATO > -1 AND S.STATO < 9
UNION
SELECT 
0 , '   n.d.    ' FROM  RDB$DATABASE;

SELECT * FROM STATINI S WHERE S.cap LIKE '.%';




delete from GOOGLE_COLORS;


select distinct C.chiave, E.COLORE, COUNT(1)
FROM CALENDARIO C JOIN CALENDARIO_EVENTI E ON E.calendario = C.chiave GROUP BY C.chiave, E.COLORE




insert into CALENDARIO_EVENTI
             (CHIAVE,         STATINO,           TECNICO,          DALLE_ORE, ALLE_ORE, NOTE,        SUBJECT, JGUID,   TECNICO_SIGLA, CALENDARIO)
select
GEN_ID(GEN_CHIAVI, 1),
S.CHIAVE,
COALESCE(TECNICO_INTERVENTO, RESPONSABILE) AS TECNICO,
APPUNTAMENTO_DATA + APPUNTAMENTO_ORA AS APPUNTAMENTO_DATA_ORA,
dateadd (+1 hour to APPUNTAMENTO_DATA + APPUNTAMENTO_ORA),
COALESCE(NOTE_PER_IL_TECNICO, RAGIONE_SOCIALE),
RAGIONE_SOCIALE,
gen_uuid(),
0,
T.SIGLA,
COALESCE(TECNICO_INTERVENTO, RESPONSABILE) AS CALENDARIO
FROM STATINI S JOIN TECNICI T ON COALESCE(S.TECNICO_INTERVENTO, S.RESPONSABILE) = T.CHIAVE
WHERE APPUNTAMENTO_DATA IS NOT NULL
AND NOT EXISTS (SELECT 1 FROM CALENDARIO_EVENTI WHERE STATINO = S.CHIAVE)
ORDER BY CHIAVE;

insert into CALENDARIO_EVENTI
       (CHIAVE,               DALLE_ORE, ALLE_ORE, NOTE,        SUBJECT, JGUID,   TECNICO_SIGLA,           CALENDARIO,  GOOGLEID, COLORE, TECNICO)
SELECT GEN_ID(GEN_CHIAVI, 1), e.STARTTIME, e.ENDTIME , e.DESCRIPTION, e.SUMMARY, e.JGUID, c.TECNICO_SIGLA, c.chiave ,   e.id    , E.backgroundcolor , TECNICO
FROM
CALENDARIO C  JOIN GOOGLE_CALENDAR_EVENTS E ON C.GOOGLEID = E.calendarid
where
NOT EXISTS (SELECT 1 FROM CALENDARIO_EVENTI CE WHERE CE.googleid = E.ID) and C.tecnico IS NOT NULL AND e.starttime > CURRENT_DATE
ORDER BY STARTTIME;

select distinct S.T FROM STATINI S;
SELECT T.sigla FROM TECNICI T;

SELECT E.statino, E.chiave, g.starttime, g.endtime,  G.summary,
        CAST(starttime AS DATE) AS data_appuntamento,
        CAST(starttime AS TIME) AS ora_appuntamento
    FROM calendario_eventi E  JOIN google_calendar_events g on e.googleid = g.id
    JOIN STATINI S ON E.statino = S.chiave
    WHERE
    (G.starttime <> E.dalle_ore or E.alle_ore <> G.endtime or G.summary <> E.subject);


SELECT E.statino, E.chiave, g.starttime,  E.dalle_ore , g.endtime, E.alle_ore, G.summary
    FROM calendario_eventi E  JOIN google_calendar_events g on e.googleid = g.id
    WHERE
    E.STATINO IS NULL
    AND
    (G.starttime <> E.dalle_ore or E.alle_ore <> G.endtime or G.summary <> E.subject);

    SELECT  E.chiave, g.starttime, g.endtime,  G.summary
    FROM calendario_eventi E  JOIN google_calendar_events g on e.googleid = g.id
    WHERE
    E.STATINO IS NULL
    AND
    (G.starttime <> E.dalle_ore or E.alle_ore <> G.endtime or G.summary <> E.subject);


    SELECT E.statino, E.chiave, g.starttime, g.endtime,  G.summary,
        CAST(starttime AS DATE) AS data_appuntamento,
        CAST(starttime AS TIME) AS ora_appuntamento
    FROM calendario_eventi E  JOIN google_calendar_events g on e.googleid = g.id
    JOIN STATINI S ON E.statino = S.chiave
    WHERE E.googleid IS NOT NULL;

execute procedure GOOGLE_SYNC_PRC;

select starttime, E.dalle_ore, UPDATED, endtime, E.alle_ore, SUMMARY, E.subject , g.id
FROM calendario_eventi E  JOIN google_calendar_events g on e.googleid = g.id
where summary like '%SPRINKLER%'
AND
E.statino IS NULL
ORDER BY SUMMARY
--AND
--(G.starttime <> E.dalle_ore or E.alle_ore <> G.endtime or G.summary <> E.subject);

delete from calendario_eventi where googleid = 'b9r085ckr6bu9utegbfbbge758_20240930T100000Z';
delete from google_calendar_events where id = 'b9r085ckr6bu9utegbfbbge758_20240930T100000Z';


-- TEST 2177682 --
-- STATO PASSATO DA 0 AD UNO --
-- TECNICO DANIEL ROSSI ---
-- vERIFICA CAMPO qryTecniciCalendarDEFAULTCOLOR.AsInteger--
-- tabGoogleEventsID.AsString  '{F3C93E19-8124-4D74-95BA-9FE0E5E119F7}' --
-- Luogo => Indirizzo completo per 'Google' del luogo da Visitare o giusto il nome del Comune o il cap? --

SELECT * FROM calendario_eventi  ce  ORDER BY DALLE_ORE DESC;
UPDATE calendario_eventi SET TECNICO = CALENDARIO WHERE TECNICO IS NULL AND CALENDARIO NOT IN (2176020, 2176021, 2176024);

SELECT * FROM calendario_eventi  ce where ce.subject like '%COPA%' ORDER BY CHIAVE DESC;
SELECT * FROM google_calendar_events E WHERE E.summary LIKE '%SIRENELLA%';

SELECT * FROM google_calendars g where g.id = 'tecnici10.assoantincendio@gmail.com';

SELECT DISTINCT Sync, count(1) FROM google_calendar_events group by Sync ;
UPDATE google_calendar_events SET Sync = 'T' WHERE  Sync IS NULL;

select * from google_calendar_events g where ID = '6016p53669hl71lb7rss6vjf9t';
--g.summary like '%MINOLITI%';

SELECT DISTINCT Visibility, Status, Recurrence, RecurringID, Visibility, Color FROM  google_calendar_events;

select * from Calendario_Eventi where
 CAST(DALLE_ORE AS DATE) = '2024-10-03'
 AND TECNICO = 1941647;

SELECT * FROM CALENDARIO_EVENTI WHERE JGUID IS NULL;

select * from google_calendar_events where
 CAST(starttime AS DATE) = '2024-10-03'
 AND
 CALENDARID = 'tecnici10.assoantincendio@gmail.com';
 --AND TECNICO = 1941647;


SELECT *  FROM GOOGLE_CALENDAR_TEMP T;

DELETE FROM CALENDARIO_EVENTI E WHERE E.googleid IN
(
SELECT id FROM google_calendar_events G WHERE NOT EXISTS (SELECT 1 FROM GOOGLE_CALENDAR_TEMP T WHERE T.ID = G.ID)
  AND G.starttime >= CURRENT_DATE - 7
  )
AND STATINO IS NULL;

SELECT * FROM CALENDARIO_EVENTI E WHERE E.googleid IN
(
SELECT id FROM google_calendar_events G WHERE NOT EXISTS (SELECT 1 FROM GOOGLE_CALENDAR_TEMP T WHERE T.ID = G.ID)
  AND G.starttime >= CURRENT_DATE - 7
  )
AND STATINO IS NOT NULL;

SELECT * FROM CALENDARIO_EVENTI WHERE SUBJECT LIKE '%RISTORANTE%CA%DE%';

SELECT * FROM STATINI S WHERE EXISTS
(
SELECT 1 FROM CALENDARIO_EVENTI E WHERE E.googleid IN
(
SELECT id FROM google_calendar_events G WHERE NOT EXISTS (SELECT 1 FROM GOOGLE_CALENDAR_TEMP T WHERE T.ID = G.ID)
  AND G.starttime >= CURRENT_DATE - 7
  )
and E.STATINO = S.CHIAVE
)

DELETE FROM CALENDARIO_EVENTI E WHERE E.googleid IN
(
SELECT id FROM google_calendar_events G WHERE NOT EXISTS (SELECT 1 FROM GOOGLE_CALENDAR_TEMP T WHERE T.ID = G.ID)
  AND G.starttime >= CURRENT_DATE - 7
  )
AND STATINO IS NULL;

DELETE FROM CALENDARIO_EVENTI E WHERE E.googleid IN
(
SELECT id FROM google_calendar_events G WHERE NOT EXISTS (SELECT 1 FROM GOOGLE_CALENDAR_TEMP T WHERE T.ID = G.ID)
  AND G.starttime >= CURRENT_DATE - 7
  )
AND STATINO IS NOT NULL;

DELETE FROM  CALENDARIO_EVENTI WHERE (GOOGLEID IS NULL or (GOOGLEID = ''))  AND STATINO IS NOT NULL AND DALLE_ORE  >= CURRENT_DATE - 7;

DELETE FROM google_calendar_events G WHERE NOT EXISTS (SELECT 1 FROM GOOGLE_CALENDAR_TEMP T WHERE T.ID = G.ID)
  AND G.starttime >= CURRENT_DATE - 7;

insert into GOOGLE_CALENDAR_EVENTS  (ID, ETAG, SUMMARY, DESCRIPTION, STARTTIME, ENDTIME, CREATED, UPDATED, LOCATION,
                                    STATUS, VISIBILITY, RECURRENCE, RECURRINGID, "SEQUENCE", COLOR, CALENDARID,
                                    USEDEFAULTREMINDERS, SENDNOTIFICATIONS, ISALLDAY, ATTENDEES, REMINDERS, JGUID,
                                    BACKGROUNDCOLOR, FOREGROUNDCOLOR, SYNC)
select ID, ETAG, SUMMARY, DESCRIPTION, STARTTIME, ENDTIME, CREATED, UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE,
       RECURRINGID, "SEQUENCE", COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFICATIONS, ISALLDAY, ATTENDEES,
       REMINDERS, JGUID, BACKGROUNDCOLOR, FOREGROUNDCOLOR, SYNC
from GOOGLE_CALENDAR_TEMP T WHERE NOT EXISTS (SELECT 1 FROM GOOGLE_CALENDAR_EVENTS E WHERE E.ID = T.id);

DELETE FROM GOOGLE_CALENDAR_TEMP;


SELECT * FROM GOOGLE_CALENDAR_TEMP WHERE UPPER(SUMMARY) LIKE '%RICCARDO%';
execute procedure GOOGLE_SYNC_PRC;

DELETE from GOOGLE_CALENDAR_TEMP ;

select * from GOOGLE_CALENDAR_TEMP T WHERE T.calendarid = 'tecnici08.assoantincendio@gmail.com';

--------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM GOOGLE_CALENDARS;

select * from google_calendar_events g where jguid is null;


select * from google_calendar_events_del ;

SELECT * FROM CALENDARIO_EVENTI_DEL;

DELETE FROM  calendario_eventi  d where d.subject = '%';

delete from calendario_eventi_del d where d.subject = 'Test Riccardo 3';


SELECT * FROM STATINI S WHERE S.stato = 1 AND S.appuntamento_data <  CURRENT_DATE;

SELECT * FROM CALENDARIO_EVENTI WHERE UPPER(SUBJECT) LIKE '%CASALE%M%';

SELECT * FROM calendario_eventi E WHERE E.googleid  IS NULL  ORDER BY CHIAVE DESC;

SELECT * FROM GOOGLE_CALENDAR_EVENTS WHERE ID = '5sjcl2jsql6vtq5hb4qrussq5o';
select * from GOOGLE_CALENDAR_TEMP T WHERE ID = '5sjcl2jsql6vtq5hb4qrussq5o';
SELECT * FROM calendario_eventi E WHERE E.googleid = '5sjcl2jsql6vtq5hb4qrussq5o';


---------------------------------------------------------------------------------------------------------------------------------------------
-- Instruct flamerobin to use # as the terminator
SET TERM #;
EXECUTE BLOCK 

declare variable v_tecnico integer;
declare variable v_chiave integer;

FOR
SELECT e.chiave, T.chiave AS TECNICOG
FROM calendario_eventi E JOIN GOOGLE_CALENDAR_EVENTS G ON E.googleid = G.id
 JOIN TECNICI T ON T.email = G.calendarid
-- JOIN TECNICI T1 ON T1.chiave = E.chiave
 WHERE E.tecnico != T.chiave
 INTO v_chiave, v_tecnico
 DO
 BEGIN


 END
 ED



SET TERM ;#



SELECT * FROM TECNICI WHERE EMAIL = 'tecnici07.assoantincendio@gmail.com';
execute procedure GOOGLE_SYNC_PRC;

SELECT * FROM

SELECT * FROM STATINI WHERE CHIAVE = 2196403;

SELECT
update statini set  appuntamento_data = NULL, appuntamento_ORA = NULL, STATO = STATO -1
---CHIAVE, RAGIONE_SOCIALE, generazione_automatica, appuntamento_data  FROM STATINI s
WHERE CHIAVE IN
(
SELECT
   CHIAVE
   -- generazione_automatica,
   -- stato,
   -- CAST(SUBSTRING(generazione_automatica FROM 5 FOR 2) AS INTEGER) AS mese_calcolato,  -- Estrae il mese
   -- CAST(SUBSTRING(generazione_automatica FROM 1 FOR 4) AS INTEGER) AS anno_calcolato,  -- Estrae l'anno
   -- CAST(DATEADD(-1 DAY TO DATEADD(1 MONTH TO CAST(SUBSTRING(generazione_automatica FROM 1 FOR 4) || '-' || SUBSTRING(generazione_automatica FROM 5 FOR 2) || '-01' AS DATE))) AS DATE) AS data_fine_mese_calcolato,  -- Calcola l'ultimo giorno del mese
FROM STATINI S
WHERE S.stato IN (1,6) AND GENERAZIONE_AUTOMATICA IS NOT NULL
AND S.appuntamento_data <  CURRENT_DATE
AND
DATEDIFF(DAY, CURRENT_DATE, CAST(DATEADD(-1 DAY TO DATEADD(1 MONTH TO CAST(SUBSTRING(generazione_automatica FROM 1 FOR 4)
          || '-' || SUBSTRING(generazione_automatica FROM 5 FOR 2) || '-01' AS DATE))) AS DATE)) < -1
)

SELECT t.id,  t.starttime, t.endtime,  t.summary FROM google_calendar_events t WHERE UPPER(SUMMARY) LIKE '%ELAH%';


SELECT  t.id,  t.starttime, t.endtime,  t.summary, g.id,  g.starttime, g.endtime,  g.summary
    FROM GOOGLE_CALENDAR_TEMP t  JOIN google_calendar_events g on t.id = g.id
    WHERE
    t.etag <> g.etag
    or
    (G.starttime <> t.starttime or t.endtime <> G.endtime or t.summary <> g.summary);


EXECUTE PROCEDURE GOOGLE_SYNC_PRC;

SELECT * FROM CALENDARIO_EVENTI WHERE SUBJECT LIKE '%CARREA%';


UPDATE STATINI S SET S.gcal = NULL WHERE NOT EXISTS (SELECT 1 FROM   CALENDARIO_EVENTI E WHERE E.statino = S.chiave) AND S.gcal IS NOT NULL;

SELECT * FROM google_calendar_events E WHERE uuid_to_char(E.jguid) = '3F2163B9-83EF-40E2-91BB-93AC4E9BE9A5';
SELECT * FROM google_calendar_events E order by Created desc;

SELECT * FROM calendario_eventi E WHERE uuid_to_char(E.jguid) = '3F2163B9-83EF-40E2-91BB-93AC4E9BE9A5';
DELETE FROM google_calendar_events E WHERE uuid_to_char(E.jguid) = '14124171-C157-407C-ABCC-C6090027626B';
DELETE FROM calendario_eventi E WHERE uuid_to_char(E.jguid) = '14124171-C157-407C-ABCC-C6090027626B';
select * FROM statini where chiave = 2178401;
SELECT * FROM calendario_eventi E WHERE GOOGLEID IS NULL;

     UPDATE STATINI SET
               STATO = 5,
               APPUNTAMENTO_DATA = CASE
                    WHEN APPUNTAMENTO_DATA < CURRENT_DATE THEN NULL
                    ELSE APPUNTAMENTO_DATA
                 END,
               APPUNTAMENTO_ORA = CASE
                    WHEN APPUNTAMENTO_DATA < CURRENT_DATE THEN NULL
                    ELSE APPUNTAMENTO_ORA
                END
        WHERE STATO_LAVORAZIONE = 'P' AND STATO < 5;

SELECT E.statino, E.chiave,  g.id, g.starttime, g.endtime, e.dalle_ore, e.alle_ore, G.summary, E.subject, S.appuntamento_data, S.appuntamento_ora ,
    CAST(  starttime AS DATE) AS data_appuntamento,
    CAST(  starttime AS TIME) AS ora_appuntamento
FROM calendario_eventi E  JOIN google_calendar_events g on e.googleid = g.id
JOIN STATINI S ON E.statino = S.chiave
WHERE E.googleid IS NOT NULL
AND
(G.starttime <> E.dalle_ore or E.alle_ore <> G.endtime or G.summary <> E.subject);



   -- 1EDBC4F5-8F58-41F4-815D-41B535E283C4
-- COLORE ROSSO = 23 ---
-- SYNC IMPOSTARE AD 'F' --
-- DEFAULTREMINDERS - SENDNOTIFICATIONS - IS ALL DAY -- TUTTI AD 'F'
-- statino = 2179382


select CE.statino,  E.ID, E.ETAG, E.SUMMARY, E.DESCRIPTION, E.STARTTIME, E.ENDTIME, CREATED, UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE,
       RECURRINGID, "SEQUENCE", COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFICATIONS, ISALLDAY, ATTENDEES,
       REMINDERS, c.JGUID, e.jguid as GJGUID, BACKGROUNDCOLOR, FOREGROUNDCOLOR, SYNC,
       s.telefono as stelefono, s.cellulare as scellulare, c.telefono1 as ctel1, c.cellulare as ccell , c.telefono2 as ctel2,
       F.cellulare AS FCEL, F.telefono AS FTEL ,
EXTRACTNUMBERS(
    CASE 
        WHEN S.cellulare IS NOT NULL AND TRIM(S.cellulare) <> '' AND  TRIM(S.cellulare) NOT STARTING WITH '0' THEN S.cellulare
        WHEN s.telefono IS NOT NULL AND  TRIM(s.telefono ) <> '' and  TRIM(s.telefono ) NOT STARTING WITH '0' THEN s.telefono
        WHEN F.cellulare IS NOT NULL AND TRIM(F.cellulare) <> '' AND  TRIM(F.cellulare) NOT STARTING WITH '0' THEN F.cellulare
        WHEN F.telefono IS NOT NULL AND  TRIM(F.telefono ) <> '' and  TRIM(F.telefono ) NOT STARTING WITH '0' THEN F.telefono
        WHEN c.cellulare IS NOT NULL AND TRIM(c.cellulare) <> '' and  TRIM(c.cellulare) NOT STARTING WITH '0'  THEN c.cellulare
        WHEN c.telefono1 IS NOT NULL AND TRIM(c.telefono1) <> '' AND  TRIM(c.telefono1) NOT STARTING WITH '0' THEN  c.telefono1
        WHEN c.telefono2 IS NOT NULL AND TRIM(c.telefono2) <> '' AND  TRIM(c.telefono2) NOT STARTING WITH '0' THEN  c.telefono2
      --  WHEN c.telefono3 IS NOT NULL AND TRIM(c.telefono3) <> '' AND  TRIM(c.telefono3) NOT STARTING WITH '0' THEN  c.telefono2
        ELSE NULL
    END
)
    AS risultato
from GOOGLE_CALENDAR_EVENTS e inner join  calendario_eventi CE  on E.id = CE.googleid
INNER JOIN STATINI S ON S.chiave = CE.statino
INNER JOIN CLIENTI C ON S.cliente = C.chiave  INNER JOIN  filiali_clienti F ON S.filiale = F.chiave


SELECT CE.statino, CE.subject, GET_WA_NUMBER(CE.statino) AS WA_NUMBER
FROM CALENDARIO_EVENTI CE WHERE CE.statino IS NOT NULL

select * from statini



select   s.telefono as stelefono, s.cellulare as scellulare, c.telefono1 as ctel1, c.cellulare as ccell , c.telefono2 as ctel2,
F.cellulare AS FCEL, F.telefono AS FTEL ,
EXTRACTNUMBERS(
    CASE 
        WHEN S.cellulare IS NOT NULL AND TRIM(S.cellulare) <> '' AND  TRIM(S.cellulare) NOT STARTING WITH '0' THEN S.cellulare
        WHEN s.telefono IS NOT NULL AND  TRIM(s.telefono ) <> '' and  TRIM(s.telefono ) NOT STARTING WITH '0' THEN s.telefono
        WHEN F.cellulare IS NOT NULL AND TRIM(F.cellulare) <> '' AND  TRIM(F.cellulare) NOT STARTING WITH '0' THEN F.cellulare
        WHEN F.telefono IS NOT NULL AND  TRIM(F.telefono ) <> '' and  TRIM(F.telefono ) NOT STARTING WITH '0' THEN F.telefono
        WHEN c.cellulare IS NOT NULL AND TRIM(c.cellulare) <> '' and  TRIM(c.cellulare) NOT STARTING WITH '0'  THEN c.cellulare
        WHEN c.telefono1 IS NOT NULL AND TRIM(c.telefono1) <> '' AND  TRIM(c.telefono1) NOT STARTING WITH '0' THEN  c.telefono1
        WHEN c.telefono2 IS NOT NULL AND TRIM(c.telefono2) <> '' AND  TRIM(c.telefono2) NOT STARTING WITH '0' THEN  c.telefono2
      --  WHEN c.telefono3 IS NOT NULL AND TRIM(c.telefono3) <> '' AND  TRIM(c.telefono3) NOT STARTING WITH '0' THEN  c.telefono2
        ELSE NULL
    END
)
    AS risultato
from statini S INNER JOIN CLIENTI C ON S.cliente = C.chiave  INNER JOIN  filiali_clienti F ON S.filiale = F.chiave;


select E.ID, E.ETAG, E.SUMMARY, E.DESCRIPTION, E.STARTTIME, E.ENDTIME, CREATED, UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE,
       RECURRINGID, "SEQUENCE", COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFICATIONS, ISALLDAY, ATTENDEES,
       REMINDERS, c.JGUID, e.jguid as GJGUID, BACKGROUNDCOLOR, FOREGROUNDCOLOR, SYNC,
       s.telefono as stelefono, s.cellulare as scellulare, c.telefono1 as ctel1, c.cellulare as ccell , c.telefono2 as ctel2,
       F.cellulare AS FCEL, F.telefono AS FTEL ,
EXTRACTNUMBERS(
    CASE 
        WHEN S.cellulare IS NOT NULL AND TRIM(S.cellulare) <> '' AND  TRIM(S.cellulare) NOT STARTING WITH '0' THEN S.cellulare
        WHEN s.telefono IS NOT NULL AND  TRIM(s.telefono ) <> '' and  TRIM(s.telefono ) NOT STARTING WITH '0' THEN s.telefono
        WHEN F.cellulare IS NOT NULL AND TRIM(F.cellulare) <> '' AND  TRIM(F.cellulare) NOT STARTING WITH '0' THEN F.cellulare
        WHEN F.telefono IS NOT NULL AND  TRIM(F.telefono ) <> '' and  TRIM(F.telefono ) NOT STARTING WITH '0' THEN F.telefono
        WHEN c.cellulare IS NOT NULL AND TRIM(c.cellulare) <> '' and  TRIM(c.cellulare) NOT STARTING WITH '0'  THEN c.cellulare
        WHEN c.telefono1 IS NOT NULL AND TRIM(c.telefono1) <> '' AND  TRIM(c.telefono1) NOT STARTING WITH '0' THEN  c.telefono1
        WHEN c.telefono2 IS NOT NULL AND TRIM(c.telefono2) <> '' AND  TRIM(c.telefono2) NOT STARTING WITH '0' THEN  c.telefono2
      --  WHEN c.telefono3 IS NOT NULL AND TRIM(c.telefono3) <> '' AND  TRIM(c.telefono3) NOT STARTING WITH '0' THEN  c.telefono2
        ELSE NULL
    END
)
    AS risultato
from GOOGLE_CALENDAR_EVENTS e inner join  calendario_eventi CE  on E.id = CE.googleid
INNER JOIN STATINI S ON S.chiave = CE.statino
INNER JOIN CLIENTI C ON S.cliente = C.chiave  INNER JOIN  filiali_clienti F ON S.filiale = F.chiave



    update statini st set st.wanumber =
    (
    select numero from
    (
    select s.chiave,
    EXTRACTNUMBERS(
        CASE 
            WHEN S.cellulare IS NOT NULL AND TRIM(S.cellulare) <> '' AND  TRIM(S.cellulare) NOT STARTING WITH '0' THEN S.cellulare
            WHEN s.telefono IS NOT NULL AND  TRIM(s.telefono ) <> '' and  TRIM(s.telefono ) NOT STARTING WITH '0' THEN s.telefono
            WHEN F.cellulare IS NOT NULL AND TRIM(F.cellulare) <> '' AND  TRIM(F.cellulare) NOT STARTING WITH '0' THEN F.cellulare
            WHEN F.telefono IS NOT NULL AND  TRIM(F.telefono ) <> '' and  TRIM(F.telefono ) NOT STARTING WITH '0' THEN F.telefono
            WHEN c.cellulare IS NOT NULL AND TRIM(c.cellulare) <> '' and  TRIM(c.cellulare) NOT STARTING WITH '0'  THEN c.cellulare
            WHEN c.telefono1 IS NOT NULL AND TRIM(c.telefono1) <> '' AND  TRIM(c.telefono1) NOT STARTING WITH '0' THEN  c.telefono1
            WHEN c.telefono2 IS NOT NULL AND TRIM(c.telefono2) <> '' AND  TRIM(c.telefono2) NOT STARTING WITH '0' THEN  c.telefono2
          --  WHEN c.telefono3 IS NOT NULL AND TRIM(c.telefono3) <> '' AND  TRIM(c.telefono3) NOT STARTING WITH '0' THEN  c.telefono2
            ELSE NULL
        END
        ) as numero
    from statini S INNER JOIN CLIENTI C ON S.cliente = C.chiave  INNER JOIN  filiali_clienti F ON S.filiale = F.chiave
    ) sf
      where sf.chiave = st.chiave and CHARACTER_LENGTH(sf.numero) <= 20
    )
    where st.wanumber is null;


select * from
(
select
EXTRACTNUMBERS(
    CASE 
        WHEN S.cellulare IS NOT NULL AND TRIM(S.cellulare) <> '' AND  TRIM(S.cellulare) NOT STARTING WITH '0' THEN S.cellulare
        WHEN s.telefono IS NOT NULL AND  TRIM(s.telefono ) <> '' and  TRIM(s.telefono ) NOT STARTING WITH '0' THEN s.telefono
        WHEN F.cellulare IS NOT NULL AND TRIM(F.cellulare) <> '' AND  TRIM(F.cellulare) NOT STARTING WITH '0' THEN F.cellulare
        WHEN F.telefono IS NOT NULL AND  TRIM(F.telefono ) <> '' and  TRIM(F.telefono ) NOT STARTING WITH '0' THEN F.telefono
        WHEN c.cellulare IS NOT NULL AND TRIM(c.cellulare) <> '' and  TRIM(c.cellulare) NOT STARTING WITH '0'  THEN c.cellulare
        WHEN c.telefono1 IS NOT NULL AND TRIM(c.telefono1) <> '' AND  TRIM(c.telefono1) NOT STARTING WITH '0' THEN  c.telefono1
        WHEN c.telefono2 IS NOT NULL AND TRIM(c.telefono2) <> '' AND  TRIM(c.telefono2) NOT STARTING WITH '0' THEN  c.telefono2
      --  WHEN c.telefono3 IS NOT NULL AND TRIM(c.telefono3) <> '' AND  TRIM(c.telefono3) NOT STARTING WITH '0' THEN  c.telefono2
        ELSE NULL
    END
    ) as numero
from statini S INNER JOIN CLIENTI C ON S.cliente = C.chiave  INNER JOIN  filiali_clienti F ON S.filiale = F.chiave
) sf
where CHARACTER_LENGTH(numero) > 20


select S.wanumber, S.wa, E.tecnico_sigla, E.jguid, E.dalle_ore, E.alle_ore, E.subject
FROM CALENDARIO_EVENTI E JOIN STATINI S ON E.statino = S.chiave
WHERE S.wa IS NULL or (S.wa = 'F')
ORDER BY S.chiave DESC

select * from STATINI S where s.data_intervento is null




CREATE OR ALTER VIEW VISTA_GRUPPI_MENSILI(
    VFO,
    VISITA,
    CADENZA,
    NUMERO_VISITA,
    RAGIONE_SOCIALE,
    NOME,
    INDIRIZZO,
    COMUNE,
    CAP,
    PROVINCIA,
    CHIAVE)
AS
SELECT
distinct C.visita_fatturazione_ordinaria AS VFO,  M.mese  AS VISITA, 'M' AS CADENZA,
CAST
(
CASE SIGN(M.mese - C.visita_fatturazione_ordinaria)
WHEN  0 THEN 1
WHEN  1 THEN M.mese - C.visita_fatturazione_ordinaria + 1
WHEN  -1 THEN 12 - (C.visita_fatturazione_ordinaria - M.mese) + 1
END
AS smallint
) AS NUMERO_VISITA,
C.ragione_sociale, F.nome, F.indirizzo,  F.comune, F.cap, F.provincia, F.chiave
FROM mesi M,  CLIENTI C JOIN filiali_clienti F ON F.cliente = C.chiave
     join gruppo_pressurizzazione_clienti  g on g.cliente = F.cliente AND G.filiale = F.chiave
where c.disdettato = 'F' AND C.gruppo_tipo_visite = 'M'
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_SPRINKLER_TRIMESTRALI  VT WHERE VT.chiave = F.chiave)
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_VISITE_SEMESTRALI VS WHERE VS.chiave = F.chiave)
AND  M.MESE NOT IN (SELECT VISITA FROM VISTA_GRUPPI_TRIMESTRALI VG WHERE VG.chiave = F.chiave)
;
