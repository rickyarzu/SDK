SET TERM ^;
    declare variable V_CHIAVE VARCHAR;
    declare variable V_BACK INT;
    declare variable V_FRONT INT;

BEGIN
    FOR
        SELECT C.back_color, C.fore_color, T.id
        INTO :V_BACK, :V_FRONT, :V_CHIAVE
        FROM
        google_events_colors C JOIN  google_calendar_temp T ON C.id = T.color
        JOIN google_calendar_events E ON E.id = T.id
        WHERE C.id = 6
        DO
        BEGIN
            UPDATE google_calendar_events E SET E.color = 6, E.backgroundcolor = :V_BACK
            WHERE E.id = :V_CHIAVE;
        END;


END;



SET TERM ;^