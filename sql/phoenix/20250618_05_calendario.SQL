select STATINO, RISULTATO, wanumber FROM
(
    select CE.statino, S.wanumber,  E.ID, E.ETAG, E.SUMMARY, E.DESCRIPTION, E.STARTTIME, E.ENDTIME, CREATED, UPDATED, LOCATION, STATUS, VISIBILITY, RECURRENCE,
           RECURRINGID, "SEQUENCE", COLOR, CALENDARID, USEDEFAULTREMINDERS, SENDNOTIFICATIONS, ISALLDAY, ATTENDEES,
           REMINDERS, c.JGUID, e.jguid as GJGUID, BACKGROUNDCOLOR, FOREGROUNDCOLOR, SYNC,
           s.telefono as stelefono, s.cellulare as scellulare, c.telefono1 as ctel1, c.cellulare as ccell , c.telefono2 as ctel2,
           F.cellulare AS FCEL, F.telefono AS FTEL ,
    EXTRACTNUMBERS(
        CASE
            WHEN F.cellulare IS NOT NULL AND TRIM(F.cellulare) <> '' AND  TRIM(F.cellulare) NOT STARTING WITH '0' THEN F.cellulare
            WHEN S.cellulare IS NOT NULL AND TRIM(S.cellulare) <> '' AND  TRIM(S.cellulare) NOT STARTING WITH '0' THEN S.cellulare
            WHEN s.telefono IS NOT NULL AND  TRIM(s.telefono ) <> '' and  TRIM(s.telefono ) NOT STARTING WITH '0' THEN s.telefono
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
    WHERE
    S.wanumber IS NULL
) A
WHERE RISULTATO IS NOT NULL


SELECT * FROM STATINI S WHERE S.wanumber IS NOT NULL;

UPDATE STATINI SET WANUMBER = TRIM(WANUMBER);

SELECT * FROM google_events_colors;

SELECT * FROM STATINI WHERE WA IS NOT NULL;

DELETE FROM TEMP_EVENTI_STATINI;
INSERT INTO  TEMP_EVENTI_STATINI (EVENTO, STATINO)
SELECT MAX(E.CHIAVE), E.STATINO
 FROM CALENDARIO_EVENTI E WHERE E.statino IS NOT NULL GROUP BY E.statino;

 SELECT * FROM TEMP_EVENTI_STATINI

DELETE FROM NEW_TABLE;
INSERT INTO NEW_TABLE
SELECT E.STATINO FROM STATINI S
    JOIN TEMP_EVENTI_STATINI T ON T.statino = S.chiave
    JOIN CALENDARIO_EVENTI E ON E.STATINO = T.statino AND E.chiave = T.evento
    JOIN google_calendar_events G ON E.googleid = G.id
    WHERE NOT (G.color = 11 or G.COLOR = 6) AND (S.wa != 'T');
UPDATE STATINI SET WA = 'T' WHERE CHIAVE IN (SELECT STATINO FROM NEW_TABLE);

DELETE FROM NEW_TABLE;
INSERT INTO NEW_TABLE
    SELECT E.STATINO FROM STATINI S
    JOIN TEMP_EVENTI_STATINI T ON T.statino = S.chiave
    JOIN CALENDARIO_EVENTI E ON E.STATINO = T.statino AND E.chiave = T.evento
    JOIN google_calendar_events G ON E.googleid = G.id
    WHERE G.color = 6 AND S.wa != 'F';
UPDATE STATINI SET WA = 'F' WHERE CHIAVE IN (SELECT STATINO FROM NEW_TABLE) AND WA != 'F';



DELETE FROM NEW_TABLE;
INSERT INTO NEW_TABLE
    SELECT e.STATINO FROM STATINI S
        JOIN TEMP_EVENTI_STATINI T ON T.statino = S.chiave
        JOIN CALENDARIO_EVENTI E ON E.STATINO = T.statino AND E.chiave = T.evento
        JOIN google_calendar_events G ON E.googleid = G.id
        WHERE G.color = 11 AND S.wa IS NOT NULL;
UPDATE STATINI SET WA = NULL WHERE CHIAVE IN (SELECT STATINO FROM NEW_TABLE) AND WA IS NOT NULL;


SELECT T.* , calendario.gbackcolor
FROM  TECNICI T JOIN calendario on calendario.tecnico = t.chiave
where T.EMAIL IS NOT NULL 
AND T.ATTIVO = 'T'




SELECT DISTINCT G.COLOR, COUNT(1) FROM google_calendar_events G GROUP BY G.COLOR;

SELECT CHIAVE, S.ragione_sociale, WA FROM STATINI S WHERE ragione_sociale LIKE '%INCONTRO%' ORDER BY CHIAVE DESC






