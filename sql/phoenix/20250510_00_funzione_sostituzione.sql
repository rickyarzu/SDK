SET TERM ^ ;

-- Prima funzione: con chiave di tipo INTEGER
CREATE OR ALTER FUNCTION FN_SOSTITUISCI_TAG (
    NOME_TABELLA VARCHAR(63),
    CHIAVE_INT BIGINT,
    CAMPO_TESTO VARCHAR(63)
)
RETURNS VARCHAR(4000)
AS
BEGIN
    RETURN (SELECT FN_SOSTITUISCI_TAG_IMPL(:NOME_TABELLA, CAST(:CHIAVE_INT AS VARCHAR(20)), :CAMPO_TESTO) FROM RDB$DATABASE);
END^

-- Seconda funzione: con chiave di tipo VARCHAR/CHAR (per GUID o altre stringhe)
CREATE OR ALTER FUNCTION FN_SOSTITUISCI_TAG (
    NOME_TABELLA VARCHAR(63),
    CHIAVE_STR VARCHAR(100),
    CAMPO_TESTO VARCHAR(63)
)
RETURNS VARCHAR(4000)
AS
BEGIN
    RETURN (SELECT FN_SOSTITUISCI_TAG_IMPL(:NOME_TABELLA, :CHIAVE_STR, :CAMPO_TESTO) FROM RDB$DATABASE);
END^

-- Funzione di implementazione che fa il lavoro effettivo
CREATE OR ALTER FUNCTION FN_SOSTITUISCI_TAG_IMPL (
    NOME_TABELLA VARCHAR(63),
    VALORE_CHIAVE VARCHAR(100),
    CAMPO_TESTO VARCHAR(63)
)
RETURNS VARCHAR(4000)
AS
DECLARE VARIABLE TESTO_ORIGINALE VARCHAR(4000);
DECLARE VARIABLE TESTO_ELABORATO VARCHAR(4000);
DECLARE VARIABLE NOME_CAMPO_CHIAVE VARCHAR(63);
DECLARE VARIABLE CHIAVE_E_STRINGA INTEGER;
DECLARE VARIABLE SQL_DYNAMIC VARCHAR(1000);
DECLARE VARIABLE NOME_CAMPO VARCHAR(63);
DECLARE VARIABLE VALORE_CAMPO VARCHAR(500);
DECLARE VARIABLE TAG_CORRENTE VARCHAR(100);
BEGIN
    -- Trova il nome del campo chiave primaria
    SELECT FIRST 1 TRIM(I.RDB$FIELD_NAME)
    FROM RDB$RELATION_CONSTRAINTS RC
    JOIN RDB$INDEX_SEGMENTS I ON RC.RDB$INDEX_NAME = I.RDB$INDEX_NAME
    WHERE RC.RDB$RELATION_NAME = UPPER(:NOME_TABELLA)
    AND RC.RDB$CONSTRAINT_TYPE = 'PRIMARY KEY'
    INTO :NOME_CAMPO_CHIAVE;
    
    -- Se non è stata trovata una chiave primaria, usa 'ID' come default
    IF (NOME_CAMPO_CHIAVE IS NULL) THEN
        NOME_CAMPO_CHIAVE = 'ID';
    
    -- Determina se la chiave è una stringa o un numero
    SELECT CASE
           WHEN F.RDB$FIELD_TYPE IN (37, 14, 40) THEN 1  -- VARCHAR, CHAR, CSTRING
           ELSE 0
           END
    FROM RDB$RELATION_FIELDS RF
    JOIN RDB$FIELDS F ON RF.RDB$FIELD_SOURCE = F.RDB$FIELD_NAME
    WHERE RF.RDB$RELATION_NAME = UPPER(:NOME_TABELLA)
    AND RF.RDB$FIELD_NAME = :NOME_CAMPO_CHIAVE
    INTO :CHIAVE_E_STRINGA;
    
    -- Ottieni il testo originale con i tag
    IF (CHIAVE_E_STRINGA = 1) THEN
        SQL_DYNAMIC = 'SELECT ' || CAMPO_TESTO || ' FROM ' || NOME_TABELLA || 
                     ' WHERE ' || NOME_CAMPO_CHIAVE || ' = ''' || VALORE_CHIAVE || '''';
    ELSE
        SQL_DYNAMIC = 'SELECT ' || CAMPO_TESTO || ' FROM ' || NOME_TABELLA || 
                     ' WHERE ' || NOME_CAMPO_CHIAVE || ' = ' || VALORE_CHIAVE;
    
    EXECUTE STATEMENT SQL_DYNAMIC INTO :TESTO_ORIGINALE;
    
    -- Se il testo è NULL, restituisce NULL
    IF (TESTO_ORIGINALE IS NULL) THEN
        RETURN NULL;
    
    -- Inizializza il risultato con il testo originale
    TESTO_ELABORATO = TESTO_ORIGINALE;
    
    -- Cicla attraverso tutti i campi della tabella
    FOR SELECT TRIM(R.RDB$FIELD_NAME)
        FROM RDB$RELATION_FIELDS R
        WHERE R.RDB$RELATION_NAME = UPPER(:NOME_TABELLA)
        INTO :NOME_CAMPO
    DO
    BEGIN
        -- Costruisci il tag da cercare
        TAG_CORRENTE = '$$' || NOME_CAMPO || '$$';
        
        -- Controlla se il tag è presente nel testo
        IF (POSITION(:TAG_CORRENTE IN :TESTO_ELABORATO) > 0) THEN
        BEGIN
            -- Costruisci la query dinamica per ottenere il valore del campo
            IF (CHIAVE_E_STRINGA = 1) THEN
                SQL_DYNAMIC = 'SELECT CAST(' || NOME_CAMPO || ' AS VARCHAR(500)) FROM ' || NOME_TABELLA || 
                              ' WHERE ' || NOME_CAMPO_CHIAVE || ' = ''' || VALORE_CHIAVE || '''';
            ELSE
                SQL_DYNAMIC = 'SELECT CAST(' || NOME_CAMPO || ' AS VARCHAR(500)) FROM ' || NOME_TABELLA || 
                              ' WHERE ' || NOME_CAMPO_CHIAVE || ' = ' || VALORE_CHIAVE;
            
            -- Esegui la query per ottenere il valore del campo
            EXECUTE STATEMENT SQL_DYNAMIC INTO :VALORE_CAMPO;
            
            -- Se il valore è NULL, usa una stringa vuota
            IF (VALORE_CAMPO IS NULL) THEN
                VALORE_CAMPO = '';
                
            -- Sostituisci il tag con il valore del campo
            TESTO_ELABORATO = REPLACE(TESTO_ELABORATO, TAG_CORRENTE, VALORE_CAMPO);
        END
    END
    
    RETURN TESTO_ELABORATO;
END^

COMMIT^

SET TERM ; ^
