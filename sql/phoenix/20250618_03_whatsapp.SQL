        SELECT E.chiave, T.chiave AS TECNICO
        FROM CALENDARIO_EVENTI E JOIN GOOGLE_CALENDAR_EVENTS G ON E.googleid = G.id
              JOIN TECNICI T ON T.email = G.calendarid
              WHERE E.tecnico != T.chiave;

execute procedure GOOGLE_SYNC_PRC;

SELECT E.chiave, E.dalle_ore, E.subject, E.tecnico, T.email, T.sigla, G.calendarid, G.id
FROM CALENDARIO_EVENTI E JOIN TECNICI T ON E.tecnico = T.chiave
     JOIN GOOGLE_CALENDAR_EVENTS G ON E.googleid = G.id
WHERE E.subject LIKE '%COMMISSA%'
ORDER BY E.dalle_ore DESC

execute procedure UPDATE_TECNICI;

select C.summary, C.alias, C.back_color, T.color,
    CASE
        WHEN t.color = 0 THEN c.back_color  -- Se campo1 è 0, prendi il valore di campo2 da tabella2
        ELSE COL.back_color  -- Altrimenti prendi il valore di campo3 da tabella3
    END AS background_color,   -- Alias per il campo calcolato
T.*
FROM
google_calendar_temp t JOIN google_calendars C ON T.calendarid = C.id
JOIN tecnici N ON N.email = C.id
LEFT JOIN google_events_colors col on t.color = col.id
order by t.UPDATED DESC;

SELECT * FROM google_calendar_events E order by e.UPDATED DESC;

SELECT * FROM google_calendar_events E WHERE uuid_to_char(E.jguid)  = '32D401B5-E3F5-423E-9CD8-4298AA1E9B75';   --
--E.id = 'seeuq0010ci16scb5mkrgcmb5s';

SELECT * FROM google_calendar_temp T JOIN google_calendars C ON T.calendarid = C.ID
order by T.UPDATED DESC;

-- E0CE1B02-4EDB-4288-93AE-DE520FEF0F5D

SELECT  G.id, uuid_to_char(G.jguid)
FROM google_calendar_events G JOIN calendario_eventi E ON G.jguid = E.jguid WHERE E.googleid IS NULL;

WHERE T.id = '1a38rutvdivahpq9o6qoafbb7g';

SELECT * FROM calendario_eventi e where e.googleid  IS NULL ORDER BY CHIAVE DESC;

SELECT CHIAVE, G.id, G.created  FROM CALENDARIO_EVENTI E JOIN google_calendar_events G ON E.jguid = G.jguid AND E.googleid IS NULL;

SELECT * FROM calendario_eventi E WHERE E.dalle_ore >= CURRENT_DATE AND E.googleid IS NULL;

select E.colore, G.color, G.summary
    FROM calendario_eventi E  JOIN google_calendar_events g on e.googleid = g.id
    where e.subject like '%PEDULLA%';

SELECT * FROM calendario_eventi e where  subject like '%OASI%' ORDER BY CHIAVE DESC;    -- e.tecnico = 2038419 and
SELECT * FROM calendario_eventi e where  subject like '%AUTOFF%' ORDER BY CHIAVE DESC;    -- e.tecnico = 2038419 and
SELECT * FROM calendario C WHERE C.chiave = 1941647;

select s.ragione_sociale, s.indirizzo  from statini s    where s.wanumber = '3429420366';

select m.*, s.ragione_sociale, s.indirizzo, s.appuntamento_data
 from whatsapp_messages m inner join statini s on s.wanumber = m.wanumber
 where
 s.appuntamento_data >= current_date;


SELECT S.ragione_sociale, S.stato
, COUNT(1) AS EVENTI, MAX(E.dalle_ore) AS DATA_EVENTO, MAX (E.subject) AS SUBJECT
FROM STATINI S JOIN calendario_eventi E ON E.statino = S.chiave
where  S.stato IN (0,5)
GROUP BY S.ragione_sociale, S.stato, s.appuntamento_data, s.appuntamento_ora
HAVING MAX(E.dalle_ore)  >= CURRENT_DATE;

    SELECT S.chiave, S.stato,
    cast (E.dalle_ore as date)  campo_data,
    cast(E.dalle_ore as time)  campo_ora
    FROM STATINI S INNER JOIN CALENDARIO_EVENTI E ON S.chiave = E.statino
    WHERE S.appuntamento_data IS NULL AND E.dalle_ore >= CURRENT_DATE;


     SELECT E.statino, E.chiave, g.starttime, E.dalle_ore, g.endtime, E.alle_ore, G.summary, E.subject,
        g.endtime - E.alle_ore AS DELTA,
        CAST(starttime AS DATE) AS data_appuntamento,
        CAST(starttime AS TIME) AS ora_appuntamento
    FROM calendario_eventi E  JOIN google_calendar_events g on e.googleid = g.id
    JOIN STATINI S ON E.statino = S.chiave
    WHERE E.googleid IS NOT NULL
    AND
    (ABS(G.starttime - E.dalle_ore) > .021 or ABS( E.alle_ore - G.endtime) > .021 or G.summary <> E.subject)
    AND
    G.starttime >= CURRENT_DATE;



WHERE NOT EXISTS (SELECT 1 FROM CALENDARIO_EVENTI E where E.statino = S.chiave) AND

SELECT * FROM CALENDARIO_EVENTI  ORDER BY CHIAVE DESC;           -- WHERE GOOGLEID IS NULL
SELECT * FROM google_calendar_events E WHERE E.summary LIKE '%4%BLUE%';

select * from statini s where s.appuntamento_data > current_date and not exists
(select 1 from calendario_eventi e where e.statino = s.chiave)



SELECT * FROM CALENDARIO_EVENTI E where googleid is null ORDER BY CHIAVE DESC;
SELECT * FROM CALENDARIO_EVENTI E where statino is null ORDER BY CHIAVE DESC;

SELECT S.chiave, S.stato,
cast (E.dalle_ore as date)  campo_data,
cast(E.dalle_ore as time)  campo_ora
--TIMESTAMPADD (appuntamento_ora to appuntamento_data) AS data_ora
--S.appuntamento_data + S.appuntamento_ora as data_ora
FROM STATINI S INNER JOIN CALENDARIO_EVENTI E ON S.chiave = E.statino
WHERE S.appuntamento_data IS NULL AND E.dalle_ore >= CURRENT_DATE;

UPDATE STATINI S SET STATO = STATO + 1 WHERE S.appuntamento_data >= CURRENT_DATE AND S.stato IN (0,5);



SELECT * FROM google_calendar_events E ORDER BY CREATED DESC ;


SELECT S.chiave, S.ragione_sociale, S.indirizzo, T.DATA_EVENTO, S.appuntamento_data  FROM STATINI S JOIN
( SELECT E.statino, MAX(E.dalle_ore) AS DATA_EVENTO FROM calendario_eventi E GROUP BY E.STATINO ) T  ON T.STATINO = S.CHIAVE
WHERE
T.DATA_EVENTO < S.appuntamento_data AND T.DATA_EVENTO < CURRENT_DATE;


SELECT * FROM CALENDARIO_EVENTI E WHERE E.googleid IS NULL ORDER BY E.dalle_ore DESC;
SELECT * FROM google_calendar_events G WHERE G.summary LIKE '%MORTARA%';  /* CB7F6E51-28EE-409B-A90F-4809FDE62906  CB7F6E51-28EE-409B-A90F-4809FDE62906*/
SELECT * FROM CALENDARIO_EVENTI E WHERE E.googleid IS NULL ORDER BY E.dalle_ore DESC;

SELECT * FROM STATINI S WHERE S.appuntamento_data IS NOT NULL AND NOT EXISTS (SELECT 1 FROM CALENDARIO_EVENTI E WHERE E.statino = S.chiave)
--AND  S.appuntamento_data >= CURRENT_DATE;

SELECT * FROM CALENDARIO_EVENTI E WHERE E.dalle_ore = E.alle_ore;

update  CALENDARIO_EVENTI E  set alle_ore = DATEADD(30 MINUTE TO alle_ore) WHERE E.dalle_ore = E.alle_ore;


SELECT * FROM TECNICI T WHERE T.chiave = 1941647;

SELECT * FROM STATINI S WHERE WA_SENT IS NOT NULL AND EXISTS (SELECT 1 FROM CALENDARIO_EVENTI E WHERE E.STATINO = S.CHIAVE AND E.wa_sent IS NULL)

update calendario_eventi e set e.googleid = null where e.googleid = uuid_to_char(e.jguid);


SELECT * FROM STATINI S WHERE S.chiave IN (SELECT STATINO FROM calendario_eventi e where e.googleid = '1a38rutvdivahpq9o6qoafbb7g');

SELECT E.subject, E.colore, E.wa_sent FROM CALENDARIO_EVENTI E WHERE TECNICO = 2038419 AND  e.googleid = '1a38rutvdivahpq9o6qoafbb7g';

        SELECT c.back_color, T.id
        FROM
        google_calendars C JOIN  google_calendar_temp T ON C.id = T.calendarid
          JOIN calendario_eventi e on e.googleid = T.id
        WHERE t.color = 0
        and (e.wa_sent != 'T' or (E.wa_sent IS NULL))
        order by t.UPDATED DESC;

        SELECT  E. FROM google_calendar_events E WHERE E.id = '1a38rutvdivahpq9o6qoafbb7g';




SELECT ct.id, ct.calendarid
 FROM google_calendar_temp ct JOIN GOOGLE_CALENDAR_EVENTS G ON ct.id = G.id ;

 SELECT * FROM google_calendar_temp t order by t.created desc;

--    tabella3 t3 ON t1.campo1 = t3.chiave3  -- Join esterno con tabella3 su campo1 = chiave3


--------- SCRIPT --------------------------------------------------------



--------------------------------------------------------------------------


