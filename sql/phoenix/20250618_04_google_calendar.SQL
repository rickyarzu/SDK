SELECT E.summary, E.starttime, E.calendarid  FROM
google_calendar_events E WHERE NOT exists
(SELECT 1 FROM calendario_eventi C WHERE C.googleid = E.id)
AND
E.calendarid NOT LIKE '%@group.calendar.google.com%'
AND
E.calendarid NOT IN ('assoantincendiolaboratorio@gmail.com', 'gorlachristian@gmail.com')
AND
SUMMARY NOT LIKE '%WA%'
ORDER BY E.starttime DESC