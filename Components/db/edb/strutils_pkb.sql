CREATE OR REPLACE PACKAGE BODY strutils IS

-- costanti per le funzioni GetUniversalStr
c_MAX_FORMAT_PRECISION CONSTANT PLS_INTEGER := 38;
c_MAX_FORMAT_DECIMAL_DIGITS CONSTANT PLS_INTEGER := 15; 
c_MAX_FORMAT_INTEGER_DIGITS CONSTANT PLS_INTEGER := c_MAX_FORMAT_PRECISION - c_MAX_FORMAT_DECIMAL_DIGITS; 
c_DATE_FORMAT CONSTANT VARCHAR2(50) := 'YYYY-MM-DD';
c_DATETIME_FORMAT_SEPARATOR  VARCHAR2(10) := ' ';
c_TIME_FORMAT CONSTANT VARCHAR2(50) := 'HH24:MI:SS';
c_DATETIME_FORMAT CONSTANT VARCHAR2(50) := c_DATE_FORMAT||c_DATETIME_FORMAT_SEPARATOR||c_TIME_FORMAT;
c_MILLISEC_FORMAT CONSTANT VARCHAR2(50) := 'FF6';
c_TIMESTAMP_FORMAT CONSTANT VARCHAR2(50) := c_DATETIME_FORMAT||'.'||c_MILLISEC_FORMAT;
c_BOOLEAN_FALSE CONSTANT VARCHAR2(50) := 'FALSE';
c_BOOLEAN_TRUE  CONSTANT VARCHAR2(50) := 'TRUE';

PROCEDURE SwapStr(p_S1 IN OUT NOCOPY VARCHAR2, p_S2 IN OUT NOCOPY VARCHAR2)
AS
  v_Appo VARCHAR2(32767);
BEGIN
  v_Appo := p_S1;
  p_S1 := p_S2;
  p_S2 := v_Appo;
END;

FUNCTION Copy(
--<HL>Ritorna la porzione di una stringa a partire dalla posizione specificata e per un numero di caratteri specificato.</HL>
--<DESC>
-- Ritorna la porzione della stringa p_S a partire dalla posizione specificata in p_StartIndex e per il numero di caratteri specificati in p_Count.
-- Se p_S è NULL ritorna NULL.
-- Se p_StartIndex è NULL o <= 0 viene considerato come 1.
-- Se p_Count è NULL o <= 0 ritorna NULL.
--</DESC>
--<PARAM>
  p_S            VARCHAR2,
  p_StartIndex   PLS_INTEGER,
  p_Count        PLS_INTEGER
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_S            VARCHAR2(32767);
  v_StartIndex   PLS_INTEGER;
  v_Count        PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_S          := COALESCE( p_S, '' );
  v_StartIndex := COALESCE( p_StartIndex, 0 );
  v_Count      := COALESCE( p_Count, 0 );

  -- verifica i parametri
  if v_S IS NULL then
    RETURN NULL;
  end if;

  if v_StartIndex <= 0 then
    v_StartIndex := 1;
  end if;

  if v_Count <= 0 then
    RETURN NULL;
  end if;

  RETURN SUBSTR( v_S, v_StartIndex, v_Count );
END;



FUNCTION CopyByIndexes(
--<HL>Ritorna la porzione di una stringa a partire dalla posizione iniziale e finale specificate.</HL>
--<DESC>
-- Ritorna la porzione della stringa p_S a partire dalla posizione specificata in p_StartIndex fino alla posizione specificata in p_EndIndex compresa.
-- Se p_S è NULL ritorna NULL.
-- Se p_StartIndex è NULL o <= 0 viene considerato come 1.
-- Se p_EndIndex è NULL o <= 0 viene ritornato NULL.
-- Se p_StartIndex supera p_EndIndex o la lunghezza della stringa, viene ritornato NULL.
-- Se p_EndIndex supera la lunghezza della stringa, viene ritornata la stringa a partire da p_StartIndex fino alla fine della stringa.
--</DESC>
--<PARAM>
  p_S            VARCHAR2,
  p_StartIndex   PLS_INTEGER,
  p_EndIndex     PLS_INTEGER
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_S            VARCHAR2(32767);
  v_StartIndex   PLS_INTEGER;
  v_EndIndex     PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_S          := COALESCE( p_S, '' );
  v_StartIndex := COALESCE( p_StartIndex, 0 );
  v_EndIndex   := COALESCE( p_EndIndex, 0 );

  -- verifica i parametri
  if v_S IS NULL then
    RETURN NULL;
  end if;

  if v_StartIndex <= 0 then
    v_StartIndex := 1;
  end if;

  if v_EndIndex <= 0 then
    RETURN NULL;
  end if;

  if v_StartIndex > v_EndIndex or v_StartIndex > Len(v_S) then
    RETURN NULL;
  end if;

  if v_EndIndex > Len(v_S) then
    RETURN CopyToEnd(v_S,v_StartIndex);
  end if;

  RETURN SUBSTR( v_S, v_StartIndex, v_EndIndex-v_StartIndex+1 );
END;



FUNCTION CopyToEnd(
--<HL>Ritorna la porzione di una stringa a partire dalla posizione specificata.</HL>
--<DESC>
-- Ritorna la porzione della stringa p_S a partire dalla posizione specificata in p_StartIndex fino alla fine della stringa.
-- Se p_S è NULL ritorna NULL.
-- Se p_StartIndex è NULL o <= 0 viene considerato come 1.
-- Se p_StartIndex supera la lunghezza della stringa, viene ritornato NULL.
--</DESC>
--<PARAM>
  p_S            VARCHAR2,
  p_StartIndex   PLS_INTEGER
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_S            VARCHAR2(32767);
  v_StartIndex   PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_S          := COALESCE( p_S, '' );
  v_StartIndex := COALESCE( p_StartIndex, 0 );

  -- verifica i parametri
  if v_S IS NULL then
    RETURN NULL;
  end if;

  if v_StartIndex <= 0 then
    v_StartIndex := 1;
  end if;

  RETURN SUBSTR( v_S, v_StartIndex, Len(v_S) );
END;

-- Ritorna il separatore decimale usato nella lingua p_Language.
-- Se p_Language non è riconosciuto tra le lingue gestite, ritorna il separatore inglese.
FUNCTION DecimalSeparatorOfLanguage( p_Language VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  CASE p_Language
    WHEN LsMultiLanguage.c_LINGUA_ITALIANA_ID   THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_ITA;
    WHEN LsMultiLanguage.c_LINGUA_INGLESE_ID    THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG;
    WHEN LsMultiLanguage.c_LINGUA_TEDESCA_ID    THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_DEU;
    WHEN LsMultiLanguage.c_LINGUA_SPAGNOLA_ID   THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_ESP;
    WHEN LsMultiLanguage.c_LINGUA_FRANCESE_ID   THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_FRA;
    WHEN LsMultiLanguage.c_LINGUA_PORTOGHESE_ID THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_PTG;
    WHEN LsMultiLanguage.c_LINGUA_RUSSA_ID      THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_RUS;
    WHEN LsMultiLanguage.c_LINGUA_ROMENA_ID     THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_ROM;
    WHEN LsMultiLanguage.c_LINGUA_UCRAINA_ID    THEN RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_UKR;
    ELSE RETURN LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG; -- ritorna il separatore inglese
  END CASE;
END;

FUNCTION DecimalSeparator
--<HL>Ritorna il separatore decimale usato nella lingua corrente.</HL>
--<DESC>
-- Ritorna il separatore decimale usato nella lingua corrente.
--</DESC>
RETURN VARCHAR2
AS
BEGIN
  RETURN DecimalSeparatorOfLanguage( LsMultiLanguage.GetLinguaCorrente );
END;

-- Ritorna il separatore delle migliaia usato nella lingua p_Language.
-- Se p_Language non è riconosciuto tra le lingue gestite, ritorna il separatore vuoto.
FUNCTION ThousandSeparatorOfLanguage( p_Language VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  CASE p_Language
    WHEN LsMultiLanguage.c_LINGUA_ITALIANA_ID   then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_ITA;
    WHEN LsMultiLanguage.c_LINGUA_INGLESE_ID    then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_ENG;
    WHEN LsMultiLanguage.c_LINGUA_TEDESCA_ID    then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_DEU;
    WHEN LsMultiLanguage.c_LINGUA_SPAGNOLA_ID   then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_ESP;
    WHEN LsMultiLanguage.c_LINGUA_FRANCESE_ID   then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_FRA;
    WHEN LsMultiLanguage.c_LINGUA_PORTOGHESE_ID then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_PTG;
    WHEN LsMultiLanguage.c_LINGUA_RUSSA_ID      then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_RUS;
    WHEN LsMultiLanguage.c_LINGUA_ROMENA_ID     then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_ROM;
    WHEN LsMultiLanguage.c_LINGUA_UCRAINA_ID    then RETURN LsMultiLanguage.c_SEPARATORE_MIGLIAIA_UKR;
    ELSE RETURN ''; -- ritorna il separatore vuoto
  END CASE;
END;

FUNCTION ThousandSeparator
--<HL>Ritorna il separatore delle migliaia usato nella lingua corrente.</HL>
--<DESC>
-- Ritorna il separatore delle migliaia usato nella lingua corrente.
--</DESC>
RETURN VARCHAR2
AS
BEGIN
  RETURN ThousandSeparatorOfLanguage( LsMultiLanguage.GetLinguaCorrente );
END;


FUNCTION GetStringPart (
  -- Data la stringa P_string, ritorna la P_count parte il cui separatore interno è P_separator
  -- Esempio GetStringPart('AAAAA;BBBBBB;C;D;EEE;FFF',3,';') --> ritorna 'C'
  -- Esempio GetStringPart('AAAAA;BBBBBB;C/D;EEE;FFF',2,'/') --> ritorna 'D;EEE;FFF''
  -- Esempio GetStringPart('AAAAA;BBBBBB;C/D;EEE;FFF',3,';') --> ritorna 'C/D';
  --
  -- Esempio GetStringPart('table_name.column_name',1,'.') --> ritorna 'table_name''
  -- Esempio GetStringPart('table_name.column_name',2,'.') --> ritorna 'column_name''
  --
  -- %param   P_STRING    Stringa Da Analizzare
  -- %param   P_COUNT     Numero colonna contenuta in P_STRING da ritornare
  -- %param   P_SEPARATOR Separatore di Colonna
  P_string    VARCHAR2,
  P_count     NUMBER,
  P_separator VARCHAR2)
  -- %return  Ritorna  la colonna indicata
  RETURN VARCHAR2 IS
  v_start  NUMBER;
  v_end  NUMBER;
BEGIN

  IF P_count = 1 THEN
    v_start := 1;
  ELSE
    v_start := strutils.LsINSTR(P_String, P_separator, 1, P_count -1)+1;
    IF v_start = 1 THEN
      RETURN NULL;
    END IF;
  END IF;
  v_end   := strutils.LsINSTR(P_String, P_separator, 1, P_count)-1;
  IF v_end = -1 THEN
    v_end := strutils.Len(P_string);
  END IF;
  --
  RETURN LTRIM(RTRIM(SUBSTR(P_string, v_start, v_end-v_start+1)));
EXCEPTION
  WHEN OTHERS THEN
    RETURN NULL;
END;

FUNCTION CountSubstrings(
p_Separator VARCHAR2,
p_S         VARCHAR2
) RETURN PLS_INTEGER AS

  v_i PLS_INTEGER;
  v_k PLS_INTEGER;
  v_T VARCHAR2(32767);
BEGIN
  v_T := COALESCE(p_S, '');
  v_i := 0;
  v_k := Pos(p_Separator, v_T);
  WHILE v_k > 0 LOOP
    v_T := Copy( v_T, v_k+1, strutils.Len(v_T));
    v_k := Pos(p_Separator, v_T);
    v_i := v_i + 1;
  END LOOP;

  RETURN v_i;

END;

FUNCTION CountSubstringsCLOB(
p_Separator VARCHAR2,
p_S         CLOB
) RETURN PLS_INTEGER AS

  v_i PLS_INTEGER;
  v_k PLS_INTEGER;
  v_T CLOB;
BEGIN
  v_T := COALESCE(p_S, '');
  v_i := 0;
  v_k := CASE WHEN INSTR(v_T,p_Separator) <= 0 THEN 1 ELSE INSTR(v_T,p_Separator) END;
  WHILE v_k > 0 LOOP
    v_T := SUBSTR( v_T, v_k+1, COALESCE(LENGTH(v_T),0));
    v_k := INSTR(v_T,p_Separator);
    v_i := v_i + 1;
  END LOOP;

  RETURN v_i;

END;

FUNCTION IsAlpha(
--<HL>Ritorna TRUE se il carattere specificato è una lettera da 'A' a 'Z' o da 'a' a 'z'.</HL>
--<DESC>
-- Ritorna TRUE se p_C è una lettera da 'A' a 'Z' o da 'a' a 'z'.
-- Ritorna FALSE negli altri casi (anche quando p_C è NULL).
--</DESC>
--<PARAM>
  p_C VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
BEGIN
    IF p_C IS NULL THEN
      RETURN FALSE;
    END IF;

    IF UPPER(p_C) >= 'A' AND UPPER(p_C) <= 'Z' THEN
      RETURN TRUE;
    ELSE
      RETURN FALSE;
    END IF;
END;

FUNCTION IsRegExpLike(
--<HL>Ritorna TRUE se la stringa soddisfa l'espressione regolare</HL>
--<DESC>
-- Ritorna TRUE se p_Str è una stringa che soddisfa l'espressione regolare p_RegExp.
-- Ritorna FALSE negli altri casi (anche quando p_Str è NULL).
-- es:  IsRegExpLike(str,'^[[:alpha:] '']*$') ritorna TRUE se str contiene solo Lettere (maiuscole/minuscole anche accentate), spazi e apici singoli (no numeri, punti, asterischi ecc.)
--</DESC>
--<PARAM>
  p_Str VARCHAR2,
  p_RegExp VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
BEGIN
    IF p_Str IS NULL THEN
      RETURN FALSE;
    END IF;

    IF REGEXP_LIKE(p_Str,p_RegExp) THEN
      RETURN TRUE;
    ELSE
      RETURN FALSE;
    END IF;
END;

FUNCTION IsDigit(
--<HL>Ritorna TRUE se il carattere specificato è una cifra da '0' a '9'.</HL>
--<DESC>
-- Ritorna TRUE se p_Ch è una cifra da '0' a '9'.
-- Ritorna FALSE negli altri casi (anche quando p_Ch è NULL).
--</DESC>
--<PARAM>
  p_Ch VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
BEGIN
    IF p_Ch IS NULL THEN
      RETURN FALSE;
    END IF;

    IF p_Ch IN ('0','1','2','3','4','5','6','7','8','9') THEN
      RETURN TRUE;
    ELSE
      RETURN FALSE;
    END IF;
END;

FUNCTION IsStringOfDigitSQL(
p_Str VARCHAR2
) RETURN NUMBER
AS
BEGIN
  RETURN BOOLEANTOSTR(IsStringOfDigit(p_Str));
END;

FUNCTION IsStringOfDigit(
--<HL>Ritorna TRUE se una stringa è composta da sole cifre da '0' a '9'.</HL>
--<DESC>
-- Ritorna TRUE se p_Str è composta da sole cifre da '0' a '9'.
--</DESC>
--<PARAM>
  p_Str VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
    -- variabili
    v_Str VARCHAR2(32767);
    v_Len PLS_INTEGER;
    v_I PLS_INTEGER;
    v_SubStr VARCHAR2(1);
BEGIN
    -- elimina i valori NULL dai parametri
    v_Str := COALESCE( p_Str, '' );

    v_I := 1;
    v_Len := Len(v_Str);
    WHILE v_I <= v_Len
    LOOP
        v_SubStr := SUBSTR(v_Str, v_I, 1);
        IF NOT IsDigit( v_SubStr ) THEN
            RETURN FALSE;
        END IF;
        v_I := v_I + 1;
    END LOOP;

    RETURN TRUE;
END;

FUNCTION IsEmpty(
--<HL>Ritorna TRUE se la stringa specificata è NULL o vuota.</HL>
--<DESC>
-- Ritorna TRUE se la stringa specificata è NULL o vuota.
--</DESC>
--<PARAM>
  p_S VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
BEGIN
  RETURN p_S IS NULL;
END;

FUNCTION IsEqual(
--<HL>Ritorna TRUE se 2 stringhe sono uguali.</HL>
--<DESC>
-- Ritorna TRUE se p_S1 e p_S2 sono uguali.
-- Se p_S1 e p_S2 sono NULL, ritorna TRUE. Se uno solo tra p_S1 e p_S2 è NULL, ritorna FALSE.
--</DESC>
--<PARAM>
  p_S1 VARCHAR2,
  p_S2 VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
BEGIN
  if p_S1 IS NULL and p_S2 IS NULL then -- p_S1 e p_S2 sono uguali (entrambi NULL)
     RETURN TRUE;
  end if;

  if p_S1 IS NULL or p_S2 IS NULL then -- p_S1 e p_S2 sono diversi (uno solo è NULL)
     RETURN FALSE;
  end if;

  RETURN p_S1 = p_S2;
END;

FUNCTION IsUguali(
--<HL>Ritorna 1 se 2 stringhe sono uguali, 0 altrimenti.</HL>
--<DESC>
-- Ritorna 1 se p_S1 e p_S2 sono uguali, 0 altrimenti.
-- Se p_S1 e p_S2 sono NULL, ritorna 1. Se uno solo tra p_S1 e p_S2 è NULL, ritorna 0.
-- NOTA: funziona come IsEqual, solo che ritorna 1 o 0 al posto di TRUE o FALSE.
--</DESC>
--<PARAM>
  p_S1 VARCHAR2,
  p_S2 VARCHAR2
--</PARAM>
) RETURN NUMBER
AS
BEGIN
  RETURN LsSQL.BooleanToNumber( IsEqual(p_S1,p_S2) );
END;

FUNCTION IsDifferent(
--<HL>Ritorna TRUE se 2 stringhe sono diverse.</HL>
--<DESC>
-- Ritorna TRUE se p_S1 e p_S2 sono diverse.
-- Se p_S1 e p_S2 sono NULL, ritorna FALSE. Se uno solo tra p_S1 e p_S2 è NULL, ritorna TRUE.
--</DESC>
--<PARAM>
  p_S1 VARCHAR2,
  p_S2 VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
BEGIN
  if p_S1 IS NULL and p_S2 IS NULL then -- p_S1 e p_S2 sono uguali (entrambi NULL)
     RETURN FALSE;
  end if;

  if p_S1 IS NULL or p_S2 IS NULL then -- p_S1 e p_S2 sono diversi (uno solo è NULL)
     RETURN TRUE;
  end if;

  RETURN p_S1 <> p_S2;
END;

FUNCTION IsDifferenti(
--<HL>Ritorna 1 se 2 stringhe sono diverse.</HL>
--<DESC>
-- Ritorna 1 se p_S1 e p_S2 sono diverse.
-- Se p_S1 e p_S2 sono NULL, ritorna 0. Se uno solo tra p_S1 e p_S2 è NULL, ritorna 1.
-- NOTA: funziona come IsDifferent, solo che ritorna 1 o 0 al posto di TRUE o FALSE.
--</DESC>
--<PARAM>
  p_S1 VARCHAR2,
  p_S2 VARCHAR2
--</PARAM>
) RETURN NUMBER
AS
BEGIN
  RETURN LsSQL.BooleanToNumber( IsDifferent(p_S1,p_S2) );
END;

FUNCTION LeftString(
--<HL>Ritorna la parte sinistra di una stringa.</HL>
--<DESC>
-- Ritorna la parte sinistra della stringa p_S.
-- Se la stringa p_S è NULL, ritorna NULL.
--</DESC>
--<PARAM>
  p_S             VARCHAR2,
  p_NumCaratteri  PLS_INTEGER
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_S            VARCHAR2(32767);
  v_NumCaratteri PLS_INTEGER;
  v_Len PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_S            := COALESCE( p_S, '' );
  v_NumCaratteri := COALESCE( p_NumCaratteri, 0 );

  -- verifica i parametri
  IF v_S IS NULL THEN -- la stringa sorgente è NULL
    RETURN NULL;
  END IF;

  IF v_NumCaratteri <= 0 THEN -- non deve prendere alcun carattere
    RETURN '';
  END IF;

  v_Len := Len(v_S);

  IF v_NumCaratteri >= v_Len THEN -- deve prendere tutti caratteri
    RETURN v_S;
  END IF;

  RETURN SUBSTR( v_S, 1, v_NumCaratteri ); -- ritorna la parte sinistra della stringa
END;

FUNCTION RightString(
--<HL>Ritorna la parte destra di una stringa.</HL>
--<DESC>
-- Ritorna la parte destra della stringa p_S.
-- Se la stringa p_S è NULL, ritorna NULL.
--</DESC>
--<PARAM>
  p_S             VARCHAR2,
  p_NumCaratteri  PLS_INTEGER
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_S            VARCHAR2(32767);
  v_NumCaratteri PLS_INTEGER;
  v_Len PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_S            := COALESCE( p_S, '' );
  v_NumCaratteri := COALESCE( p_NumCaratteri, 0 );

  -- verifica i parametri
  IF v_S IS NULL THEN -- la stringa sorgente è NULL
    RETURN NULL;
  END IF;

  IF v_NumCaratteri <= 0 THEN -- non deve prendere alcun carattere
    RETURN '';
  END IF;

  v_Len := Len(v_S);

  IF v_NumCaratteri >= v_Len THEN -- deve prendere tutti caratteri
    RETURN v_S;
  END IF;

  RETURN SUBSTR( v_S, v_Len-v_NumCaratteri+1, v_NumCaratteri ); -- ritorna la parte destra della stringa
END;

FUNCTION Len(
--<HL>Ritorna la lunghezza della stringa specificata.</HL>
--<DESC>
-- Ritorna la lunghezza di p_S.
-- Se p_S è NULL o la stringa vuota, ritorna 0.
--</DESC>
--<PARAM>
  p_S VARCHAR2
--</PARAM>
) RETURN PLS_INTEGER
AS
BEGIN
  IF p_S IS NULL THEN
    RETURN 0;
  ELSE
    RETURN LENGTH(p_S);
  END IF;
END;

FUNCTION LetteraToNumero(
--<HL>Ritorna un numero da 1 a 26 corrispondente alla lettera sepcificata.</HL>
--<DESC>
-- Ritorna un numero da 1 a 26 corrispondente a p_Lettera.
-- Ritorna 0 se p_Lettera non è compresa tra 'A'..'Z' o 'a'..'z'
--</DESC>
--<PARAM>
  p_Lettera VARCHAR2
--</PARAM>
) RETURN PLS_INTEGER
AS
    -- variabili
    v_Lettera VARCHAR2(1);
BEGIN
    -- elimina i valori NULL dai parametri
    v_Lettera := COALESCE( p_Lettera, '' );

    -- verifica i parametri
    if v_Lettera IS NULL then
      RETURN 0;
    end if;

    v_Lettera := UPPER(v_Lettera);

    IF v_Lettera >= 'A' AND v_Lettera <= 'Z' THEN
      RETURN ASCII(v_Lettera) - ASCII('A') + 1;
    END IF;

    RETURN 0;
END;

FUNCTION NumeroToLettera(
--<HL>Ritorna la lettera da 'A' a 'Z' corrispondente ad un numero da 1 a 26.</HL>
--<DESC>
-- Ritorna la lettera da 'A' a 'Z' corrispondente a p_Numero.
-- Ritorna il carattere globals.c_PUNTO_DI_DOMANDA se p_Numero non è compreso tra 1 e 26.
--</DESC>
--<PARAM>
  p_Numero PLS_INTEGER
--</PARAM>
) RETURN VARCHAR2
AS
    -- variabili
    v_Numero PLS_INTEGER;
BEGIN
    -- elimina i valori NULL dai parametri
    v_Numero := COALESCE( p_Numero, 0 );

    IF (v_Numero >= 1) and (v_Numero <= 26) THEN
      RETURN CHR( ASCII('A')+(v_Numero-1) );
    END IF;

    RETURN globals.c_PUNTO_DI_DOMANDA;
END;

FUNCTION PAD(
--<HL>Funzione di utilità per le stringhe.</HL>
--<DESC>
-- Ritorna una stringa aggiungendo tanti caratteri p_STRCHAR a sinistra o a destra della stringa v_STR,
-- fino a raggiungere la dimensione corretta.
--</DESC>
--<PARAM>
  p_STR     VARCHAR2,    -- Stringa originaria
  p_STRCHAR VARCHAR2,    -- Carattere o Stringa da aggiungere
  p_SIZE    PLS_INTEGER, -- Dimensione della Stringa che deve essere ritornata
  p_RIGHT   BOOLEAN := TRUE -- se è TRUE indica di inserire i caratteri a destra, se è FALSE a sinistra.
--</PARAM>
) RETURN VARCHAR2
AS
    -- variabili
    v_STR     VARCHAR2(32767);
    v_STRCHAR VARCHAR2(100);
    v_SIZE    PLS_INTEGER;
    v_RIGHT   BOOLEAN;
    v_DIFF    PLS_INTEGER;
BEGIN
    -- elimina i valori NULL dai parametri
    v_STR     := COALESCE( p_STR, '' );
    v_STRCHAR := COALESCE( p_STRCHAR, '' );
    v_SIZE    := COALESCE( p_SIZE, 0 );
    v_RIGHT   := COALESCE( p_RIGHT, FALSE );

    v_STR := TRIM(v_STR);

    v_DIFF := v_SIZE - Len(v_STR);

    IF (v_DIFF > 0) THEN
        IF v_RIGHT THEN
            RETURN v_STR || REPLICATE(v_STRCHAR,v_DIFF);
        ELSE
            RETURN REPLICATE(v_STRCHAR,v_DIFF) || v_STR;
        END IF;
    ELSIF (v_DIFF < 0) THEN
        RETURN SUBSTR(v_STR,0,v_SIZE);
    ELSE
        RETURN v_STR;
    END IF;

END;

FUNCTION PAD_NUM(
--<HL>Funzione di utilità per le stringhe.</HL>
--<DESC>
-- Ritorna una stringa aggiungendo tanti caratteri p_STRCHAR a sinistra o a destra della stringa v_STR,
-- fino a raggiungere la dimensione corretta.
--</DESC>
--<PARAM>
  p_STR     VARCHAR2,    -- Stringa originaria
  p_STRCHAR VARCHAR2,    -- Carattere o Stringa da aggiungere
  p_SIZE    PLS_INTEGER, -- Dimensione della Stringa che deve essere ritornata
  p_RIGHT   NUMBER := 1  -- se è 1 indica di inserire i caratteri a destra, se è 0 a sinistra.
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_STR     VARCHAR2(32767);
BEGIN
  v_STR := PAD(p_STR,p_STRCHAR,p_SIZE,LsSql.NumberToBoolean(p_RIGHT));
  RETURN v_STR;

END;

FUNCTION PadL(
--<HL>Aggiunge a sinistra di una stringa il carattere (o i caratteri) specificati fino a raggiungere una certa lunghezza.</HL>
--<DESC>
-- Aggiunge a sinistra di p_InString il carattere (o i caratteri) di p_FChar fino a raggiungere la lunghezza p_Len.
-- Se p_InString è NULL ritorna NULL.
-- Se p_Len è NULL o <= 0 ritorna NULL.
-- Se p_FChar è NULL ritorna NULL.
--</DESC>
--<PARAM>
  p_InString VARCHAR2,
  p_Len      PLS_INTEGER,
  p_FChar    VARCHAR2
--</PARAM>
) RETURN VARCHAR2
AS
BEGIN
  -- verifica i parametri
  if p_InString IS NULL then
    RETURN NULL;
  end if;

  if p_Len IS NULL or p_Len <= 0 then
    RETURN NULL;
  end if;

  if p_FChar IS NULL then
    RETURN NULL;
  end if;

  RETURN REPLICATE( p_FChar, p_Len-Len(p_InString) ) || p_InString;
END;

FUNCTION PadR(
--<HL>Aggiunge a destra di una stringa il carattere (o i caratteri) specificati fino a raggiungere una certa lunghezza.</HL>
--<DESC>
-- Aggiunge a destra di p_InString il carattere (o i caratteri) di p_FChar fino a raggiungere la lunghezza p_Len.
-- Se p_InString è NULL ritorna NULL.
-- Se p_Len è NULL o <= 0 ritorna NULL.
-- Se p_FChar è NULL ritorna NULL.
--</DESC>
--<PARAM>
  p_InString VARCHAR2,
  p_Len      PLS_INTEGER,
  p_FChar    VARCHAR2
--</PARAM>
) RETURN VARCHAR2
AS
BEGIN
  -- verifica i parametri
  if p_InString IS NULL then
    RETURN NULL;
  end if;

  if p_Len IS NULL or p_Len <= 0 then
    RETURN NULL;
  end if;

  if p_FChar IS NULL then
    RETURN NULL;
  end if;

  RETURN p_InString || REPLICATE( p_FChar, p_Len-Len(p_InString) );
END;

FUNCTION Replicate(
--<HL>Ritorna una stringa replicando un certo numero di volte una stringa in input.</HL>
--<DESC>
-- Ritorna una stringa replicando p_Num volte la stringa p_Str.
-- Se p_Str è NULL, viene ritornato NULL.
-- Se p_Num è NULL o <= 0 viene ritornato NULL.
-- NOTA: funziona come la REPLICATE di Microsoft SQL Server 2000.
--</DESC>
--<PARAM>
  p_Str    VARCHAR2,    -- stringa da replicare
  p_Num    PLS_INTEGER  -- numero di volte per cui replicare la stringa p_Str
--</PARAM>
) RETURN VARCHAR2
AS
    -- variabili
    v_I      PLS_INTEGER;
    v_Result VARCHAR2(32767);
BEGIN
    -- verifica i parametri
    if p_Str IS NULL then
      RETURN NULL;
    end if;

    if p_Num IS NULL or p_Num <= 0 then
      RETURN NULL;
    end if;

    v_Result := '';

    FOR v_I IN 1..p_Num
    LOOP
      v_Result := v_Result||p_Str;
    END LOOP;

    RETURN v_Result;
END;

-- Ritorna una stringa di lunghezza p_Len che contiene p_InString eventualmente riempita a destra di p_FChar o troncata, ritornando in questo caso i primi p_Len caratteri di sinistra della stringa p_InString.
-- Se p_Len è NULL o <= 0, verrà ritornato NULL.
-- Se p_InString è NULL, verrà ritornata una stringa di p_Len p_FChar.
FUNCTION PadRFixed( p_InString VARCHAR2, p_Len PLS_INTEGER, p_FChar VARCHAR2 ) RETURN VARCHAR
AS
  -- variabili
  v_InString VARCHAR2(32767);
  v_Len      PLS_INTEGER;
  v_Result   VARCHAR2(32767);
BEGIN
  -- elimina i valori NULL dai parametri
  v_InString := COALESCE( p_InString, '' );
  v_Len      := COALESCE( p_Len, 0 );

  -- verifica i parametri
  if v_Len <= 0 then
    RETURN NULL;
  end if;

  if v_InString IS NULL then
    RETURN strutils.REPLICATE( p_FChar, v_Len );
  end if;

  if Len(v_InString) > v_Len then
    v_Result := LeftString( v_InString, v_Len );
  elsif Len(v_InString) < v_Len then
    v_Result := PadR( v_InString, v_Len, p_FChar );
  else
    v_Result := v_InString;
  end if;

  RETURN v_Result;
END;

-- Ritorna una stringa di lunghezza p_Len che contiene p_InString eventualmente riempita a sinistra di p_FChar o troncata, ritornando in questo caso gli ultimi p_Len caratteri della stringa p_InString.
-- Se p_Len è NULL o <= 0, verrà ritornato NULL.
-- Se p_InString è NULL, verrà ritornata una stringa di p_Len p_FChar.
FUNCTION PadLFixed( p_InString VARCHAR2, p_Len PLS_INTEGER, p_FChar VARCHAR2 ) RETURN VARCHAR
AS
  -- variabili
  v_InString VARCHAR2(32767);
  v_Len PLS_INTEGER;
  v_Result   VARCHAR2(32767);
BEGIN
  -- elimina i valori NULL dai parametri
  v_InString := COALESCE( p_InString, '' );
  v_Len := COALESCE( p_Len, 0 );

  -- verifica i parametri
  if v_Len <= 0 then
    RETURN NULL;
  end if;

  if v_InString IS NULL then
    RETURN strutils.REPLICATE( p_FChar, v_Len );
  end if;

  if Len(v_InString) > v_Len then
    v_Result := RightString( v_InString, v_Len );
  elsif Len(v_InString) < v_Len then
    v_Result := PadL( v_InString, v_Len, p_FChar );
  else
    v_Result := v_InString;
  end if;

  RETURN v_Result;
END;

FUNCTION SameText(
--<HL>Ritorna TRUE se 2 stringhe sono uguali, ignorando la differenza tra lettere maiuscole e minuscole.</HL>
--<DESC>
-- Ritorna TRUE se p_S1 e p_S2 sono uguali, ignorando la differenza tra lettere maiuscole e minuscole.
-- Se p_S1 e p_S2 sono NULL, ritorna TRUE. Se uno solo tra p_S1 e p_S2 è NULL, ritorna FALSE.
--</DESC>
--<PARAM>
  p_S1 VARCHAR2,
  p_S2 VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
BEGIN
  if p_S1 IS NULL and p_S2 IS NULL then -- p_S1 e p_S2 sono uguali (entrambi NULL)
     RETURN TRUE;
  end if;

  if p_S1 IS NULL or p_S2 IS NULL then -- p_S1 e p_S2 sono diversi (uno solo è NULL)
     RETURN FALSE;
  end if;

  RETURN UPPER(p_S1) = UPPER(p_S2);
END;

FUNCTION STR(
--<HL>Ritorna un valore FLOAT formattato (in formato inglese senza separatori delle migliaia).</HL>
--<DESC>
-- Ritorna p_Valore formattato secondo i parametri (in formato inglese senza però i separatori delle migliaia).
-- p_Lunghezza indica la lunghezza totale della stringa risultato, compresi il separatore decimale, il segno, le cifre e gli spazi. Il valore predefinito è 10.
-- La lunghezza specificata in p_Lunghezza deve essere maggiore o uguale alla parte intera di p_Valore più il segno, se negativo;
-- se tale lunghezza non è sufficiente, viene ritornata una stringa di '*' lunga p_Lunghezza.
-- p_CifreDecimali indica il numero di cifre a destra del separatore decimale riportate nella stringa risultato.
-- NOTA: funziona come la STR di Microsoft SQL Server 2000.
--</DESC>
--<PARAM>
  p_Valore             FLOAT,
  p_Lunghezza          PLS_INTEGER := 10,
  p_CifreDecimali      PLS_INTEGER := 0
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_Valore             FLOAT;
  v_Lunghezza          PLS_INTEGER;
  v_CifreDecimali      PLS_INTEGER;
  v_ValoreIntero       PLS_INTEGER;
  v_ValoreStr VARCHAR2(10);
  v_Result VARCHAR2(32767);
BEGIN
  -- elimina i valori NULL dai parametri
  v_Valore             := COALESCE( p_Valore, 0 );
  v_Lunghezza          := COALESCE( p_Lunghezza, 0 );
  v_CifreDecimali      := COALESCE( p_CifreDecimali, 0 );

  -- verifica i parametri
  if v_Lunghezza < 0 then
    RETURN NULL;
  end if;

  if v_Lunghezza > 8000 then
    RETURN NULL;
  end if;

  if v_CifreDecimali < 0 then
    RETURN NULL;
  end if;

  if v_CifreDecimali > 15 then
    v_CifreDecimali := 15;
  end if;

  v_Valore := LsNumeric.ARROTONDA( v_Valore, v_CifreDecimali );

  v_ValoreIntero := LsNumeric.LsRound( v_Valore );

  -- verifica se la parte intera del valore più l'eventuale segno negativo entra nella stringa risultato
  v_ValoreStr := strutils.IntToStr(v_ValoreIntero);
  if strutils.Len(v_ValoreStr) > v_Lunghezza then
    -- ritorna un numero di '*' pari alla lunghezza desiderata del campo
    RETURN REPLICATE( '*', v_Lunghezza );
  end if;

  LOOP
    v_Result := Format_Decimal( v_Valore, v_CifreDecimali, TRUE/*arrotonda*/, FALSE/*senza separatore delle migliaia*/, TRUE/*formato inglese*/, TRUE/*aggiunge gli 0 decimali*/ );

    -- verifica se v_Result entra nella stringa risultato
    if strutils.Len(v_Result) <= v_Lunghezza then
      exit; -- esce dal LOOP
    end if;

    if v_CifreDecimali = 0 then
      exit; -- esce dal LOOP
    end if;

    v_CifreDecimali := v_CifreDecimali - 1;
  END LOOP;

  -- riempie di spazi a sinistra il risultato
  v_Result := PadL( v_Result, v_Lunghezza, globals.c_SPAZIO );

  RETURN v_Result;
END;

-- Ritorna TRUE se nella stringa p_Str sono presenti solo cifre numeriche (da 0 a 9).
-- NOTA: ritorna TRUE se p_Str è NULL.
FUNCTION VerificaStrSoloDigit(
  p_Str VARCHAR2
)RETURN BOOLEAN
AS
  v_I PLS_INTEGER;
  v_CHAR VARCHAR2(1);
begin
  v_I := 1;
  WHILE v_I <= Len(p_Str)
  LOOP
      v_CHAR := SUBSTR(p_Str, v_I, 1);
      IF NOT IsDigit(v_CHAR) THEN
          RETURN FALSE;
      END IF;
      v_I := v_I + 1;
  END LOOP;

  -- i caratteri di p_Str sono tutte cifre
  RETURN TRUE;
END;


FUNCTION VerificaStrSoloChar(
  --Controlla se nella stringa sono presenti solo caratteri alfabetici
  p_Str VARCHAR2
)RETURN BOOLEAN
AS
    v_Str VARCHAR2(32767);
    v_I PLS_INTEGER;
    v_CHAR VARCHAR2(1);
begin
  -- elimina i valori NULL dai parametri
  v_Str := COALESCE( p_Str, '' );

  v_I := 1;
  WHILE v_I <= Len(v_Str)
  LOOP
      v_CHAR := SUBSTR(v_Str, v_I, 1);
      IF NOT IsAlpha(v_CHAR) THEN
          RETURN FALSE;
      END IF;
      v_I := v_I + 1;
  END LOOP;

  -- i caratteri di v_Str sono tutti cifre o lettere
  RETURN TRUE;
END;


FUNCTION StrSoloDigitAndChar(
--<HL>Controlla se la stringa è composta da soli numeri e lettere.</HL>
--<DESC>
-- Controlla se la stringa in ingresso è composta da soli numeri e lettere e ne ritorna il valore TRUE se tale condizione è rispettata; FALSE altrimenti.
--</DESC>
--<PARAM>
  p_Str VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
    -- variabili
    v_Str VARCHAR2(32767);
    v_I PLS_INTEGER;
    v_CHAR VARCHAR2(1);
BEGIN
    -- elimina i valori NULL dai parametri
    v_Str := COALESCE( p_Str, '' );

    v_I := 1;
    WHILE v_I <= Len(v_Str)
    LOOP
        v_CHAR := SUBSTR(v_Str, v_I, 1);
        IF NOT IsDigit(v_CHAR) AND NOT IsAlpha(v_CHAR) THEN
            RETURN FALSE;
        END IF;
        v_I := v_I + 1;
    END LOOP;

    -- i caratteri di v_Str sono tutti cifre o lettere
    RETURN TRUE;
END;

FUNCTION IntToStr(
--<HL>Ritorna la stringa corrispondente al numero specificato.</HL>
--<DESC>
-- Ritorna la stringa corrispondente a p_I.
-- Se p_I è NULL, ritorna NULL.
--</DESC>
--<PARAM>
  p_I PLS_INTEGER
--</PARAM>
) RETURN VARCHAR2
AS
BEGIN
    IF p_I IS NULL THEN
      RETURN NULL;
    END IF;

    RETURN CAST( p_I AS VARCHAR2 );
END;

FUNCTION StrToInt(
--<HL>Ritorna il numero contenuto nella stringa specificata.</HL>
--<DESC>
-- Ritorna il numero contenuto in p_S.
-- Se p_S è NULL o la stringa vuota, ritorna NULL.
-- Solleva un'eccezione se non riesce a convertire p_S in numero.
--</DESC>
--<PARAM>
  p_S VARCHAR2
--</PARAM>
) RETURN PLS_INTEGER
AS
BEGIN
    -- verifica i parametri
    if p_S IS NULL then
      RETURN NULL;
    end if;

    RETURN CAST( p_S AS PLS_INTEGER );
END;

FUNCTION StrToIntDef(
--<HL>Ritorna il numero contenuto nella stringa specificata.</HL>
--<DESC>
-- Ritorna il numero contenuto in p_S.
-- Se p_S è NULL o la stringa vuota, ritorna NULL.
-- Se non riesce a convertire p_S in numero, ritorna il valore p_DefaulValue.
--</DESC>
--<PARAM>
  p_S           VARCHAR2,
  p_DefaulValue PLS_INTEGER
--</PARAM>
) RETURN PLS_INTEGER
AS
BEGIN
    -- verifica i parametri
    if p_S IS NULL then
      RETURN NULL;
    end if;

    BEGIN
      RETURN CAST( p_S AS PLS_INTEGER );
    EXCEPTION
      WHEN OTHERS THEN
        RETURN p_DefaulValue;
    END;
END;

FUNCTION StrToIntDelphi(
--<HL>Ritorna il numero contenuto nella stringa specificata.</HL>
--<DESC>
-- Ritorna il numero contenuto in p_S.
-- Solleva un'eccezione se non riesce a convertire p_S in numero.
-- ATTENZIONE: se p_S è NULL (cioè la stringa vuota), solleva un'eccezione (come in Delphi).
--</DESC>
--<PARAM>
  p_S VARCHAR2
--</PARAM>
) RETURN PLS_INTEGER
AS
BEGIN
    -- verifica i parametri
    if p_S IS NULL then
      RAISE INVALID_NUMBER;
    end if;

    RETURN CAST( p_S AS PLS_INTEGER );
END;

FUNCTION StrToIntDefDelphi(
--<HL>Ritorna il numero contenuto nella stringa specificata.</HL>
--<DESC>
-- Ritorna il numero contenuto in p_S.
-- Se non riesce a convertire p_S in numero, ritorna il valore p_DefaulValue.
-- ATTENZIONE: se p_S è NULL (cioè la stringa vuota), ritorna p_DefaulValue (come in Delphi).
--</DESC>
--<PARAM>
  p_S           VARCHAR2,
  p_DefaulValue PLS_INTEGER
--</PARAM>
) RETURN PLS_INTEGER
AS
BEGIN
    -- verifica i parametri
    if p_S IS NULL then
      RETURN p_DefaulValue;
    end if;

    BEGIN
      RETURN CAST( p_S AS PLS_INTEGER );
    EXCEPTION
      WHEN OTHERS THEN
        RETURN p_DefaulValue;
    END;
END;

-- Ritorna TRUE se p_S contiene un numero intero valido ed assegna tale numero a p_Value.
-- Ritorna FALSE se p_S non contiene un numero intero valido.
FUNCTION TryStrToInt(
  p_S           VARCHAR2,
  p_Value       OUT NOCOPY PLS_INTEGER
) RETURN BOOLEAN
AS
BEGIN
    -- azzera i parametri di output
    p_Value := 0;

    -- se p_S è vuota, ritorna FALSE
    if p_S IS NULL then
      RETURN FALSE;
    end if;

    BEGIN
      -- tenta di convertire p_S in intero
      p_Value := CAST( p_S AS PLS_INTEGER );
      RETURN TRUE; -- la conversione ha avuto successo
    EXCEPTION
      WHEN OTHERS THEN
        RETURN FALSE; -- la conversione non ha avuto successo
    END;
END;


FUNCTION FORMAT_DECIMAL_BASE(
--<HL>Ritorna un valore FLOAT formattato.</HL>
--<DESC>
-- Ritorna p_Valore formattato secondo i parametri.
--</DESC>
--<PARAM>
  p_Valore                FLOAT,
  p_CifreDecimali         PLS_INTEGER,
  p_SeparatoreDecimale    VARCHAR2,
  p_SeparatoreMigliaia    VARCHAR2,
  p_Arrotonda             BOOLEAN := TRUE,
  p_ConSeparatoreMigliaia BOOLEAN := TRUE,
  p_AddDecimalZeros       BOOLEAN := FALSE
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_Valore                FLOAT;
  v_CifreDecimali         PLS_INTEGER;
  v_Arrotonda             BOOLEAN;
  v_ConSeparatoreMigliaia BOOLEAN;
  v_AddDecimalZeros       BOOLEAN;
  v_SeparatoreDecimale VARCHAR2(1);
  v_SeparatoreMigliaia VARCHAR2(1);
  v_Result             VARCHAR2(100);
  v_Segno              VARCHAR2(1);
  v_ParteIntera        FLOAT;
  v_ParteDecimale      FLOAT;
  v_ParteInteraStr     VARCHAR2(100);
  v_ParteInteraStrConSep VARCHAR2(100);
  v_ParteDecimaleStr   VARCHAR2(100);
  v_TreCifre           VARCHAR2(3);
  v_Len                PLS_INTEGER;
  v_Pos                PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_Valore                := COALESCE( p_Valore, 0 );
  v_CifreDecimali         := COALESCE( p_CifreDecimali, 0 );
  v_Arrotonda             := COALESCE( p_Arrotonda, FALSE );
  v_ConSeparatoreMigliaia := COALESCE( p_ConSeparatoreMigliaia, FALSE );
  v_AddDecimalZeros       := COALESCE( p_AddDecimalZeros, FALSE );

  -- This function is meant as an alternative to FORMAT_DECIMAL() meant to reduce
  -- the overhead introduced by the calls to functions 'DecimalSeparator' and
  -- 'DecimalSeparatorOfLanguage'. It's been mesured that using FORMAT_DECIMAL or
  -- any dependant function in a SQL SELECT projection in a batch process, produces
  -- hundreds on thousands or even million of accesses to tables SISESSION
  -- and TABOPER.
  -- For the above reason, decimal and thousand separators are expected as input
  -- values. Reading a default in case of NULL input is not permitted. 
  if p_SeparatoreDecimale is null then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'SeparatoreDecimale' );
  else
    v_SeparatoreDecimale := p_SeparatoreDecimale;
  end if;
  if p_SeparatoreMigliaia is null then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'SeparatoreMigliaia' );
  else
    v_SeparatoreMigliaia := p_SeparatoreMigliaia;
  end if;
  
  -- verifica i parametri
  if v_CifreDecimali < 0 then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'CifreDecimali' );
  end if;

  if v_CifreDecimali > 15 then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'CifreDecimali' );
  end if;

  if v_Arrotonda then
    v_Valore := LsNumeric.ARROTONDA( v_Valore, v_CifreDecimali );
  else -- non arrotonda il v_Valore, ma lo tronca
    v_Valore := LsNumeric.TRONCA( v_Valore, v_CifreDecimali );
  end if;

  -- calcola il segno
  if v_Valore < 0 then
    v_Segno := '-';
  else
    v_Segno := '';
  end if;

  -- elimina il segno
  v_Valore := ABS( v_Valore );

  -- calcola la parte intera
  v_ParteIntera := LsNumeric.LsInt( v_Valore );

  -- converte la parte intera senza separatori per le migliaia
  v_ParteInteraStr := CAST( v_ParteIntera AS VARCHAR2 );

  if v_ConSeparatoreMigliaia then
    if v_SeparatoreMigliaia IS NOT NULL then
      v_ParteInteraStrConSep := '';
      -- aggiunge i separatori per le migliaia
      LOOP
        -- preleva le 3 cifre piu' a destra dalla stringa sorgente
        v_TreCifre := RightString( v_ParteInteraStr, 3 );
        if v_TreCifre IS NULL then -- non ci sono piu' cifre
          exit; -- interrompe il LOOP
        else
          -- aggiunge a sinistra le 3 cifre
          if v_ParteInteraStrConSep IS NULL then
            v_ParteInteraStrConSep := v_TreCifre;
          else
            v_ParteInteraStrConSep := v_TreCifre || v_SeparatoreMigliaia || v_ParteInteraStrConSep;
          end if;
          -- elimina le 3 cifre piu' a destra dalla stringa sorgente
          v_Len := Len(v_ParteInteraStr) - 3;
          if v_Len < 0 then
            v_Len := 0;
          end if;
          v_ParteInteraStr := SUBSTR( v_ParteInteraStr, 1, v_Len );
        end if;
      END LOOP;
      -- assegna v_ParteInteraStr con i separatori per le migliaia
      v_ParteInteraStr := v_ParteInteraStrConSep;
    end if;
  end if;

  v_ParteDecimaleStr := '';

  -- calcola la parte decimale
  if v_CifreDecimali > 0 then
    v_ParteDecimale := LsNumeric.LsFrac( v_Valore );

    -- converte la parte decimale in una stringa nel formato .XXXXX
    if v_ParteDecimale = 0 then
      v_ParteDecimaleStr := '.0';
    else
      v_ParteDecimaleStr := CAST( v_ParteDecimale AS VARCHAR2 );
    end if;

    -- preleva le cifre decimali saltando il primo carattere perche' il numero e' formattato come .XXXXX
    v_ParteDecimaleStr := SUBSTR( v_ParteDecimaleStr, 2, v_CifreDecimali );

    if v_AddDecimalZeros then -- aggiunge gli zeri decimali a destra
      -- se la lunghezza dei decimali è minore delle cifre decimali volute, aggiunge gli 0 a destra
      if Len(v_ParteDecimaleStr) < v_CifreDecimali then
        v_ParteDecimaleStr := PadR( v_ParteDecimaleStr, v_CifreDecimali, '0' );
      end if;
    else -- elimina gli zeri decimali a destra
      -- calcola la posizione dell'ultima cifra non zero a destra delle cifre decimali
      v_Pos := Len(v_ParteDecimaleStr);
      LOOP
        if v_Pos <= 0 then
          EXIT; -- esce dal LOOP
        end if;

        -- se la cifra più a destra non è 0, esce dal LOOP
        if IsDifferent( SUBSTR( v_ParteDecimaleStr, v_Pos, 1 ), '0' ) then
          EXIT; -- esce dal LOOP
        end if;

        v_Pos := v_Pos - 1;
      END LOOP;

      if v_Pos = 0 then -- se le cifre decimali sono tutte 0
        v_ParteDecimaleStr := '';
      else
        v_ParteDecimaleStr := Copy( v_ParteDecimaleStr, 1, v_Pos );
      end if;
    end if;
  end if;

  -- costruisce il risultato
  v_Result := v_Segno || v_ParteInteraStr;

  -- aggiunge la parte decimale
  if v_CifreDecimali > 0 then
    if v_ParteDecimaleStr IS NOT NULL then
      v_Result := v_Result || v_SeparatoreDecimale || v_ParteDecimaleStr;
    end if;
  end if;

  RETURN v_Result;
END;


FUNCTION FORMAT_DECIMAL(
--<HL>Ritorna un valore FLOAT formattato.</HL>
--<DESC>
-- Ritorna p_Valore formattato secondo i parametri.
-- Se p_FormatoInglese è TRUE, il parametro p_Language viene ignorato e la formattazione è effettuata in inglese.
-- Se p_FormatoInglese è FALSE e p_Language non è specificato, la formattazione è effettuata nella lingua corrente.
-- Se p_FormatoInglese è FALSE e p_Language è specificato, la formattazione è effettuata nella lingua specificata.
--</DESC>
--<PARAM>
  p_Valore                FLOAT,
  p_CifreDecimali         PLS_INTEGER,
  p_Arrotonda             BOOLEAN := TRUE,
  p_ConSeparatoreMigliaia BOOLEAN := TRUE,
  p_FormatoInglese        BOOLEAN := FALSE,
  p_AddDecimalZeros       BOOLEAN := FALSE,
  p_Language              VARCHAR2 := NULL
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_Valore                FLOAT;
  v_CifreDecimali         PLS_INTEGER;
  v_Arrotonda             BOOLEAN;
  v_ConSeparatoreMigliaia BOOLEAN;
  v_FormatoInglese        BOOLEAN;
  v_AddDecimalZeros       BOOLEAN;
  v_Language              VARCHAR2(10);
  v_SeparatoreDecimale VARCHAR2(1);
  v_SeparatoreMigliaia VARCHAR2(1);
  v_Result             VARCHAR2(100);
  v_Segno              VARCHAR2(1);
  v_ParteIntera        FLOAT;
  v_ParteDecimale      FLOAT;
  v_ParteInteraStr     VARCHAR2(100);
  v_ParteInteraStrConSep VARCHAR2(100);
  v_ParteDecimaleStr   VARCHAR2(100);
  v_TreCifre           VARCHAR2(3);
  v_Len                PLS_INTEGER;
  v_Pos                PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_FormatoInglese        := COALESCE( p_FormatoInglese, FALSE );
  v_Language              := COALESCE( p_Language, '' );

  -- sceglie il separatore decimale e il separatore delle migliaia
  if v_FormatoInglese then
    -- usa i separatori inglesi
    v_SeparatoreDecimale := LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG;
    v_SeparatoreMigliaia := LsMultiLanguage.c_SEPARATORE_MIGLIAIA_ENG;
  else
    if v_Language IS NULL then
      -- legge i separatori relativi alla lingua corrente
      v_SeparatoreDecimale := DecimalSeparator;
      v_SeparatoreMigliaia := ThousandSeparator;
    else
      -- legge i separatori relativi alla lingua specificata
      v_SeparatoreDecimale := DecimalSeparatorOfLanguage( v_Language );
      v_SeparatoreMigliaia := ThousandSeparatorOfLanguage( v_Language );
    end if;
  end if;

  v_Result := FORMAT_DECIMAL_BASE(
      p_Valore, p_CifreDecimali, v_SeparatoreDecimale, v_SeparatoreMigliaia,
      p_Arrotonda, p_ConSeparatoreMigliaia, p_AddDecimalZeros
  );

  RETURN v_Result;
END;


FUNCTION FORMAT_DECIMAL_NUMBER(
--<HL>Come la FORMAT_DECIMAL, ma usa i parametri NUMBER invece di BOOLEAN</HL>
--<DESC>
-- Come la FORMAT_DECIMAL, ma usa i parametri NUMBER invece di BOOLEAN
--</DESC>
--<PARAM>
  p_Valore                FLOAT,
  p_CifreDecimali         PLS_INTEGER,
  p_Arrotonda_Num             NUMBER:= 1, -- Boolean
  p_ConSeparatoreMigliaia_Num NUMBER:= 1, -- Boolean
  p_FormatoInglese_Num        NUMBER:= 0, -- Boolean
  p_AddDecimalZeros_Num       NUMBER:= 0, -- Boolean
  p_Language                  VARCHAR2 := NULL
--</PARAM>
) RETURN VARCHAR2
AS
BEGIN
  RETURN FORMAT_DECIMAL( p_Valore, p_CifreDecimali, LsSql.NumberToBoolean(p_Arrotonda_Num), LsSql.NumberToBoolean(p_ConSeparatoreMigliaia_Num), LsSql.NumberToBoolean(p_FormatoInglese_Num), LsSql.NumberToBoolean(p_AddDecimalZeros_Num), p_Language );
END;


FUNCTION FORMAT_MONEY(
--<HL>Ritorna un valore NUMBER(18,4) formattato.</HL>
--<DESC>
-- Ritorna p_Valore formattato secondo i parametri.
-- Se p_FormatoInglese è TRUE, il parametro p_Language viene ignorato e la formattazione è effettuata in inglese.
-- Se p_FormatoInglese è FALSE e p_Language non è specificato, la formattazione è effettuata nella lingua corrente.
-- Se p_FormatoInglese è FALSE e p_Language è specificato, la formattazione è effettuata nella lingua specificata.
--</DESC>
--<PARAM>
  p_Valore                NUMBER,
  p_CifreDecimali         PLS_INTEGER,
  p_Arrotonda             BOOLEAN := TRUE,
  p_ConSeparatoreMigliaia BOOLEAN := TRUE,
  p_FormatoInglese        BOOLEAN := FALSE,
  p_AddDecimalZeros       BOOLEAN := FALSE,
  p_Language              VARCHAR2 := NULL
--</PARAM>
) RETURN VARCHAR2
AS
  -- variabili
  v_Valore                NUMBER(18,4);
  v_CifreDecimali         PLS_INTEGER;
  v_Arrotonda             BOOLEAN;
  v_ConSeparatoreMigliaia BOOLEAN;
  v_FormatoInglese        BOOLEAN;
  v_AddDecimalZeros       BOOLEAN;
  v_Language              VARCHAR2(10);
BEGIN
  -- elimina i valori NULL dai parametri
  v_Valore                := COALESCE( p_Valore, 0 );
  v_CifreDecimali         := COALESCE( p_CifreDecimali, 0 );
  v_Arrotonda             := COALESCE( p_Arrotonda, FALSE );
  v_ConSeparatoreMigliaia := COALESCE( p_ConSeparatoreMigliaia, FALSE );
  v_FormatoInglese        := COALESCE( p_FormatoInglese, FALSE );
  v_AddDecimalZeros       := COALESCE( p_AddDecimalZeros, FALSE );
  v_Language              := COALESCE( p_Language, '' );

  -- verifica i parametri
  if v_CifreDecimali < 0 then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'CifreDecimali' );
  end if;

  if v_CifreDecimali > 4 then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'CifreDecimali' );
  end if;

  RETURN FORMAT_DECIMAL( v_Valore, v_CifreDecimali, v_Arrotonda, v_ConSeparatoreMigliaia, v_FormatoInglese, v_AddDecimalZeros, v_Language );
END;

FUNCTION Format(
--<HL>Ritorna una stringa formattata.</HL>
--<DESC>
-- Ritorna la stringa p_String sostituendo le stringhe di formattazione %d, %u, %e, %f, %g, %n, %m, %p, %s, %x con i valori specificati in p_Values.
--</DESC>
--<PARAM>
  p_String  VARCHAR2, -- stringa contenente il testo e le seguenti stringhe di formattazione: %d, %u, %e, %f, %g, %n, %m, %p, %s, %x.
  p_Values  VARCHAR2  -- contiene i valori (separati dal carattere globals.c_PARAMETERS_SEPARATOR) da sostituire alle stringhe di formattazione.
--</PARAM>
) RETURN VARCHAR2
AS
  -- tipi
  TYPE t_table IS TABLE OF VARCHAR2(4000);

  -- variabili
  v_String     VARCHAR2(32767);
  v_Values     VARCHAR2(32767);
  v_StartIndex PLS_INTEGER;
  v_EndIndex   PLS_INTEGER;
  v_i          PLS_INTEGER;
  v_Value      VARCHAR2(32767);
  v_ArgNum     PLS_INTEGER;
  v_table      t_table := t_table(); -- inizializza v_table con 0 elementi
BEGIN
  -- elimina i valori NULL dai parametri
  v_String := COALESCE( p_String, '' );
  v_Values := COALESCE( p_Values, '' );

  -- verifica i parametri
  if v_String IS NULL then -- non e' specificata la stringa da formattare
    RETURN '';
  end if;

  if v_Values IS NULL then -- non sono specificati i valori per la stringa da formattare
    -- NOTA: potrebbe succedere che la stringa di formattazione v_String contenga un unico %s e
    --       la stringa dei valori v_Values sia NULL perché quest'unico valore e' la stringa vuota (NULL in Oracle);
    --       in questo caso si deve sostituire il %s della stringa di formattazione con la stringa vuota.
    v_i := strutils.LsINSTR( v_String, '%s' );
    if v_i > 0 then
      -- sostituisce a '%s' la stringa vuota
      v_String := SUBSTR( v_String, 1, v_i-1 ) || '' || SUBSTR( v_String, v_i+2, Len(v_String) );
    end if;
    RETURN v_String; -- ritorna la stringa non formattata
  end if;

  -- scompone v_Values nelle sue componenti separate da globals.c_PARAMETERS_SEPARATOR e li salva in v_table
  v_ArgNum := 0; -- inizialmente non ci sono argomenti
  v_StartIndex := 1; -- inizia la ricerca dal primo carattere

  LOOP
    -- ricerca il carattere globals.c_PARAMETERS_SEPARATOR
    v_i := strutils.LsINSTR( v_Values, globals.c_PARAMETERS_SEPARATOR, v_StartIndex );

    if v_i = 0 then -- carattere globals.c_PARAMETERS_SEPARATOR non trovato
      -- preleva l'ultimo valore contenuto in v_Values
      v_Value := SUBSTR( v_Values, v_StartIndex, Len(v_Values) );

      v_ArgNum := v_ArgNum + 1;
      -- salva il valore dell'argomento
      v_table.extend;
      v_table(v_ArgNum) := COALESCE(v_Value,'');

      exit; -- interrompe la ricerca di altri valori
    else -- carattere globals.c_PARAMETERS_SEPARATOR trovato nella posizione v_i
      v_EndIndex := v_i-1; -- posizione del carattere subito prima di globals.c_PARAMETERS_SEPARATOR
      -- preleva il valore contenuto in v_Values
      v_Value := CopyByIndexes( v_Values, v_StartIndex, v_EndIndex );

      -- salva il valore dell'argomento
      v_ArgNum := v_ArgNum + 1;
      v_table.extend;
      v_table(v_ArgNum) := COALESCE(v_Value,'');

      -- calcola lo v_StartIndex per la ricerca successiva
      v_StartIndex := v_i+1; -- posizione del carattere subito dopo globals.c_PARAMETERS_SEPARATOR
    end if;
  END LOOP;

  v_ArgNum := 0;
  v_StartIndex := 1; -- inizia la ricerca dal primo carattere

  LOOP
    -- ricerca il carattere '%'
    v_i := strutils.LsINSTR( v_String, '%', v_StartIndex );

    if v_i = 0 then -- carattere '%' non trovato
      -- non ci sono piu' parametri da sostituire, ritorna il risultato
      RETURN v_String;
    end if;

    -- carattere '%' trovato nella posizione v_i
    if SUBSTR( v_String, v_i, 2 ) IN ('%d','%u','%e','%f','%g','%n','%m','%p','%s','%x') then
      v_ArgNum := v_ArgNum + 1;
      -- preleva il valore del parametro
      v_Value := v_table(v_ArgNum);

      -- sostituisce a '%d','%u','%e','%f','%g','%n','%m','%p','%s','%x' il valore del parametro
      v_String := SUBSTR( v_String, 1, v_i-1 ) || v_Value || SUBSTR( v_String, v_i+2, Len(v_String) );

      -- calcola lo v_StartIndex per la ricerca successiva
      v_StartIndex := v_i + Len(v_Value); -- si posiziona nella v_String dopo il valore di v_Value
    elsif SUBSTR( v_String, v_i, 2 ) = '%%' then
      -- sostituisce la stringa '%%' con la stringa '%'
      v_String := SUBSTR( v_String, 1, v_i-1 ) || '%' || SUBSTR( v_String, v_i+2, Len(v_String) );

      -- calcola lo v_StartIndex per la ricerca successiva
      v_StartIndex := v_i + 1; -- si posiziona nella v_String dopo il '%'
    else -- il carattere '%' e' seguito da una specifica di formattazione sconosciuta, la ignora
      -- calcola lo v_StartIndex per la ricerca successiva
      v_StartIndex := v_i + 2; -- si posiziona nella v_String dopo la specifica di formattazione sconosciuta
    end if;
  END LOOP;

END;

-- Formatta una stringa come la funzione strutils.Format, ma non solleva eccezioni se la formattazione non riesce
FUNCTION LsFormat(
  p_String  VARCHAR2, -- stringa contenente il testo e le seguenti stringhe di formattazione: %d, %u, %e, %f, %g, %n, %m, %p, %s, %x.
  p_Values  VARCHAR2  -- contiene i valori (separati dal carattere globals.c_PARAMETERS_SEPARATOR) da sostituire alle stringhe di formattazione.
) RETURN VARCHAR2
AS
BEGIN
  RETURN Format( p_String, p_Values );
EXCEPTION
  WHEN OTHERS THEN
    RETURN p_String;
END;

FUNCTION AppendLine(
  -- Aggiunge alla stringa passata un new line (globals.c_CRLF) e la stringa da aggiungere
  p_source  VARCHAR2, -- stringa base
  p_add  VARCHAR2     -- stringa da aggiungere su nuova riga
) RETURN VARCHAR2
AS
BEGIN
  if p_source IS NULL THEN
    RETURN p_add;
  else
    RETURN p_source||globals.c_CRLF||p_add;
  end if;
END;

FUNCTION AppendLine(
  -- Aggiunge alla stringa passata un new line (globals.c_CRLF) e la stringa da aggiungere
  p_source  CLOB, -- stringa base
  p_add  CLOB     -- stringa da aggiungere su nuova riga
) RETURN CLOB
AS
BEGIN
  if p_source IS NULL THEN
    RETURN p_add;
  else
    RETURN p_source||globals.c_CRLF||p_add;
  end if;
END;

FUNCTION AppendLine(
  -- Aggiunge alla stringa passata un new line (globals.c_CRLF) e la stringa da aggiungere
  p_source  CLOB, -- stringa base
  p_add  VARCHAR2 -- stringa da aggiungere su nuova riga
) RETURN CLOB
AS   
BEGIN
  if p_source IS NULL THEN
    RETURN p_add;
  else
    RETURN p_source||globals.c_CRLF||p_add;
  end if;
END;

FUNCTION StrAppendLine(
  --Aggiunge alla stringa passata un new line (globals.c_CR) e la stringa da aggiungere
  --ATTENZIONE: se si vuole aggiungere il new line globals.c_CRLF usare la funzione AppendLine.
  p_source  VARCHAR2, -- stringa base
  p_add  VARCHAR2     -- stringa da aggiungere su nuova riga
) RETURN VARCHAR2
AS
BEGIN
  if p_source IS NULL THEN
    RETURN p_add;
  else
    RETURN p_source||globals.c_CR||p_add;
  end if;
END;

FUNCTION StrAppendLine(
  --Aggiunge alla stringa passata un new line (globals.c_CR) e la stringa da aggiungere
  --ATTENZIONE: se si vuole aggiungere il new line globals.c_CRLF usare la funzione AppendLine.
  p_source  CLOB, -- stringa base
  p_add  CLOB     -- stringa da aggiungere su nuova riga
) RETURN CLOB
AS   
BEGIN
  if p_source IS NULL THEN
    RETURN p_add;
  else
    RETURN p_source||globals.c_CR||p_add;
  end if;
END;

FUNCTION StrAppendLine(
  --Aggiunge alla stringa passata un new line (globals.c_CR) e la stringa da aggiungere
  --ATTENZIONE: se si vuole aggiungere il new line globals.c_CRLF usare la funzione AppendLine.
  p_source  CLOB, -- stringa base
  p_add  VARCHAR2 -- stringa da aggiungere su nuova riga
) RETURN CLOB
AS   
BEGIN
  if p_source IS NULL THEN
    RETURN p_add;
  else
    RETURN p_source||globals.c_CR||p_add;
  end if;
END;

FUNCTION InsertFirstLine(
  -- Ritorna la stringa da aggiungere in prima riga, un new line (globals.c_CRLF) e la stringa passata
  p_source  VARCHAR2,    -- stringa base
  p_firstLine  VARCHAR2  -- stringa da aggiungere all'inizio
) RETURN VARCHAR2
AS
BEGIN
  if p_source IS NULL THEN
    RETURN p_firstLine;
  else
    RETURN p_firstLine||globals.c_CRLF||p_source;
  end if;
END;

FUNCTION InsertFirstLine(
  -- Ritorna la stringa da aggiungere in prima riga, un new line (globals.c_CRLF) e la stringa passata
  p_source  CLOB,    -- stringa base
  p_firstLine  CLOB  -- stringa da aggiungere all'inizio
) RETURN CLOB
AS
BEGIN
  if p_source IS NULL THEN
    RETURN p_firstLine;
  else
    RETURN p_firstLine||globals.c_CRLF||p_source;
  end if;
END;

FUNCTION StrInsertFirstLine(
  --Ritorna la stringa da aggiungere in prima riga, un new line (globals.c_CR) e la stringa passata
  --ATTENZIONE: se si vuole aggiungere il new line globals.c_CRLF usare la funzione InsertFirstLine.
  p_source  VARCHAR2, -- stringa base
  p_firstLine  VARCHAR2     -- stringa da aggiungere all'inizio
) RETURN VARCHAR2
AS
BEGIN
  if p_source IS NULL THEN
    RETURN p_firstLine;
  else
    RETURN p_firstLine||(globals.c_CR)||p_source;
  end if;
END;

FUNCTION CifraToValore(
--<HL>Ritorna il valore numerico del carattere da '0' a '9' specificato.</HL>
--<DESC>
-- Ritorna il valore numerico del carattere da '0' a '9' specificato in p_Cifra.
-- Ritorna -1 se p_Cifra non è compreso tra '0' e '9'.
--</DESC>
--<PARAM>
  p_Cifra VARCHAR2
--</PARAM>
) RETURN PLS_INTEGER
AS
BEGIN
  if IsDigit(p_Cifra) then
    RETURN CAST( p_Cifra AS PLS_INTEGER );
  end if;

  RETURN -1;
END;

FUNCTION ValoreToCifra(
--<HL>Ritorna la cifra tra '0' e '9' corrispondente al valore da 0 a 9 specificato.</HL>
--<DESC>
-- Ritorna la cifra tra '0' e '9' corrispondente al p_Valore da 0 a 9 specificato.
-- Ritorna il carattere globals.c_PUNTO_DI_DOMANDA se il p_Valore non è compreso tra 0 e 9 o se il p_Valore è NULL.
--</DESC>
--<PARAM>
  p_Valore PLS_INTEGER
--</PARAM>
) RETURN VARCHAR2
AS
BEGIN
  if p_Valore IS NULL then
    RETURN globals.c_PUNTO_DI_DOMANDA;
  end if;

  RETURN  CASE p_Valore
            WHEN 0 THEN '0'
            WHEN 1 THEN '1'
            WHEN 2 THEN '2'
            WHEN 3 THEN '3'
            WHEN 4 THEN '4'
            WHEN 5 THEN '5'
            WHEN 6 THEN '6'
            WHEN 7 THEN '7'
            WHEN 8 THEN '8'
            WHEN 9 THEN '9'
            ELSE globals.c_PUNTO_DI_DOMANDA
          END;

END;

FUNCTION Pos(
-- Ritorna la posizione della stringa p_SubStr all'interno della stringa p_S.
-- Ritorna 0 se non trova la p_SubStr all'interno della stringa p_S.
-- La ricerca è sempre case-sensitive (distingue i caratteri maiuscoli dai minuscoli).
-- Se p_SubStr o p_S è NULL verrà ritornato 0.
  p_SubStr        VARCHAR2,
  p_S             VARCHAR2
) RETURN PLS_INTEGER
AS
BEGIN
  RETURN PosStr( p_SubStr, p_S, TRUE/*case sensitive*/ );
END;

FUNCTION StrContains(
  p_SubStr        VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE)
RETURN BOOLEAN
AS
BEGIN
  RETURN PosWord(p_SubStr, p_S, p_CaseSensitive) > 0;
END;

FUNCTION PosStr(
-- Ritorna la posizione della stringa p_SubStr all'interno della stringa p_S, partendo dalla posizione p_StartIndex.
-- Ritorna 0 se non trova la p_SubStr all'interno della stringa p_S.
-- Se p_CaseSensitive è TRUE, la ricerca distingue i caratteri maiuscoli dai minuscoli.
-- Se p_SubStr o p_S è NULL verrà ritornato 0.
-- Se p_CaseSensitive è NULL verrà considerato FALSE.
-- Se p_StartIndex è NULL verrà considerato 0.
-- Se p_StartIndex è <= 0 verrà ritornato 0.
  p_SubStr        VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE,
  p_StartIndex    PLS_INTEGER := 1
) RETURN PLS_INTEGER
AS
  -- variabili
  v_SubStr        VARCHAR2(32767);
  v_S             VARCHAR2(32767);
  v_CaseSensitive BOOLEAN;
  v_StartIndex    PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_SubStr        := COALESCE( p_SubStr, '' );
  v_S             := COALESCE( p_S, '' );
  v_CaseSensitive := COALESCE( p_CaseSensitive, FALSE );
  v_StartIndex    := COALESCE( p_StartIndex, 0 );

  -- verifica i parametri
  if v_SubStr IS NULL then
    RETURN 0; -- substringa non trovata perché non specificata
  end if;

  if v_S IS NULL then
    RETURN 0; -- substringa non trovata perché la stringa in cui cercare è vuota
  end if;

  if v_StartIndex <= 0 then
    RETURN 0; -- substringa non trovata perché indice di partenza <= 0
  end if;

  if not v_CaseSensitive then
    -- se la ricerca non è case-sensitive, imposta entrambe le stringhe in maiuscolo
    v_SubStr := UPPER(v_SubStr);
    v_S      := UPPER(v_S);
  end if;

  RETURN strutils.LsINSTR( v_S, v_SubStr, v_StartIndex );
END;

-- Ritorna la posizione della stringa p_SubStr all'interno della stringa p_S, partendo dalla posizione p_StartIndex e procedendo all'indietro.
-- Ritorna 0 se non trova la p_SubStr all'interno della stringa p_S, partendo dalla posizione p_StartIndex e procedendo all'indietro.
-- Se p_CaseSensitive è TRUE, la ricerca distingue i caratteri maiuscoli dai minuscoli.
-- Se p_SubStr o p_S è NULL verrà ritornato 0.
-- Se p_CaseSensitive è NULL verrà considerato FALSE.
-- Se p_StartIndex è NULL verrà considerato 0.
-- Se p_StartIndex è <= 0 verrà ritornato 0.
FUNCTION PosStrBack(
  p_SubStr        VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE,
  p_StartIndex    PLS_INTEGER := 32767
) RETURN PLS_INTEGER
AS
  -- variabili
  v_SubStr        VARCHAR2(32767);
  v_S             VARCHAR2(32767);
  v_CaseSensitive BOOLEAN;
  v_StartIndex    PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_SubStr        := p_SubStr;
  v_S             := p_S;
  v_CaseSensitive := COALESCE( p_CaseSensitive, FALSE );
  v_StartIndex    := COALESCE( p_StartIndex, 0 );

  -- verifica i parametri
  if v_SubStr IS NULL then
    RETURN 0; -- substringa non trovata perché non specificata
  end if;

  if v_S IS NULL then
    RETURN 0; -- substringa non trovata perché la stringa in cui cercare è vuota
  end if;

  if v_StartIndex <= 0 then
    RETURN 0; -- substringa non trovata perché indice di partenza <= 0
  end if;

  if not v_CaseSensitive then
    -- se la ricerca non è case-sensitive, imposta entrambe le stringhe in maiuscolo
    v_SubStr := UPPER(v_SubStr);
    v_S      := UPPER(v_S);
  end if;

  -- tronca v_S affinché la ricerca successiva che parte dal primo carattere a destra non consideri i caratteri oltre la posizione v_StartIndex
  v_StartIndex := v_StartIndex + strutils.Len(v_SubStr) - 1;
  v_S := CopyByIndexes( v_S, 1, v_StartIndex );

  RETURN COALESCE( INSTR( v_S, v_SubStr, -1/*ricerca partendo dal primo carattere a destra*/ ), 0 );
END;

-- Ritorna la posizione del primo carattere di p_Ch all'interno della stringa p_S, partendo dalla posizione p_StartIndex.
-- Ritorna 0 se non trova il primo carattere di p_Ch all'interno della stringa p_S.
-- Se p_CaseSensitive è TRUE, la ricerca distingue i caratteri maiuscoli dai minuscoli.
-- Se p_Ch o p_S è NULL verrà ritornato 0.
-- Se p_CaseSensitive è NULL verrà considerato FALSE.
-- Se p_StartIndex è NULL verrà considerato 0.
-- Se p_StartIndex è <= 0 verrà ritornato 0.
FUNCTION PosChar( p_Ch VARCHAR2, p_S VARCHAR2, p_CaseSensitive BOOLEAN := FALSE, p_StartIndex PLS_INTEGER := 1 ) RETURN PLS_INTEGER
AS
BEGIN
  if p_Ch IS NULL or p_S IS NULL then
    RETURN 0;
  end if; 
  
  RETURN PosStr( SUBSTR(p_Ch,1,1), p_S, p_CaseSensitive, p_StartIndex );
END;

FUNCTION PosWord(
-- Ritorna la posizione della parola intera specificata in p_WordStr all'interno della stringa p_S, partendo dalla posizione p_StartIndex.
-- Ritorna 0 se non trova la p_WordStr all'interno della stringa p_S.
-- Se p_CaseSensitive è TRUE, la ricerca distingue i caratteri maiuscoli dai minuscoli.
-- Se p_WordStr o p_S è NULL verrà ritornato 0.
-- Se p_CaseSensitive è NULL verrà considerato FALSE.
-- Se p_StartIndex è NULL verrà considerato 0.
-- Se p_StartIndex è <= 0 verrà ritornato 0.
  p_WordStr       VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE,
  p_StartIndex    PLS_INTEGER := 1
) RETURN PLS_INTEGER
AS
  -- variabili
  v_WordStr       VARCHAR2(32767);
  v_S             VARCHAR2(32767);
  v_CaseSensitive BOOLEAN;
  v_StartIndex    PLS_INTEGER;
  v_P PLS_INTEGER;
  v_ParolaIntera BOOLEAN;
  v_C VARCHAR2(1);
BEGIN
  -- elimina i valori NULL dai parametri
  v_WordStr       := COALESCE( p_WordStr, '' );
  v_S             := COALESCE( p_S, '' );
  v_CaseSensitive := COALESCE( p_CaseSensitive, FALSE );
  v_StartIndex    := COALESCE( p_StartIndex, 0 );

  -- verifica i parametri
  if v_WordStr IS NULL then
    RETURN 0; -- parola non trovata perché non specificata
  end if;

  if v_S IS NULL then
    RETURN 0; -- parola non trovata perché la stringa in cui cercare è vuota
  end if;

  if v_StartIndex <= 0 then
    RETURN 0; -- parola non trovata perché indice di partenza <= 0
  end if;

  LOOP
    -- ricerca la parola nella stringa v_S
    v_P := PosStr( v_WordStr, v_S, v_CaseSensitive, v_StartIndex );
    if v_P <= 0 then -- parola non trovata
      RETURN 0;
    end if;

    -- parola trovata, verifica che sia una parola intera e non una substringa
    v_ParolaIntera := TRUE;

    -- preleva il carattere precedente la parola
    if v_P-1 >= 1 then
      v_C := SUBSTR( v_S, v_P-1, 1 );
      if IsAlpha(v_C) or IsDigit(v_C) or v_c = '_' then -- la parola e' preceduta da un carattere alfanumerico, non e' una parola intera
        v_ParolaIntera := FALSE;
      end if;
    end if;

    if v_ParolaIntera then
      -- preleva il carattere successivo alla parola
      if v_P+Len(v_WordStr) <= Len(v_S) then
        v_C := SUBSTR( v_S, v_P+Len(v_WordStr), 1 );
        if IsAlpha(v_C) or IsDigit(v_C) or v_c = '_' then -- la parola e' seguita da un carattere alfanumerico, non e' una parola intera
          v_ParolaIntera := FALSE;
        end if;
      end if;
    end if;

    if v_ParolaIntera then -- la parola trovata e' una parola intera
      RETURN v_P;
    end if;

    -- calcola l'inizio della successiva ricerca
    v_StartIndex := v_P+1;
    if v_StartIndex > Len(v_S) then
      EXIT; -- esce dal LOOP
    end if;

  END LOOP;
  -- parola intera non trovata
  RETURN 0;
END;


/*
FUNCTION PosWord(
-- Ritorna la posizione della parola intera specificata in p_WordStr all'interno della stringa p_S, partendo dalla posizione p_StartIndex.
-- Ritorna 0 se non trova la p_WordStr all'interno della stringa p_S.
-- Se p_CaseSensitive è TRUE, la ricerca distingue i caratteri maiuscoli dai minuscoli.
-- Se p_WordStr o p_S è NULL verrà ritornato 0.
-- Se p_CaseSensitive è NULL verrà considerato FALSE.
-- Se p_StartIndex è NULL verrà considerato 0.
-- Se p_StartIndex è <= 0 verrà ritornato 0.
  p_WordStr       VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE,
  p_StartIndex    PLS_INTEGER := 1
) RETURN PLS_INTEGER
AS
  -- variabili
  v_WordStr       VARCHAR2(32767);
  v_S             VARCHAR2(32767);
  v_CaseSensitive BOOLEAN;
  v_StartIndex    PLS_INTEGER;
  v_P PLS_INTEGER;
  v_ParolaIntera BOOLEAN;
  v_C VARCHAR2(1);
  v_match_parameter VARCHAR2(10);
BEGIN
  -- elimina i valori NULL dai parametri
  v_WordStr       := COALESCE( p_WordStr, '' );
  v_S             := COALESCE( p_S, '' );
  v_CaseSensitive := COALESCE( p_CaseSensitive, FALSE );
  v_StartIndex    := COALESCE( p_StartIndex, 0 );
  if v_CaseSensitive THEN
    v_match_parameter := 'c';
  ELSE
    v_match_parameter := 'i';
  END IF;
  -- verifica i parametri
  if v_WordStr IS NULL then
    RETURN 0; -- parola non trovata perché non specificata
  end if;

  if v_S IS NULL then
    RETURN 0; -- parola non trovata perché la stringa in cui cercare è vuota
  end if;

  if v_StartIndex <= 0 then
    RETURN 0; -- parola non trovata perché indice di partenza <= 0
  end if;
  v_P := REGEXP_INSTR(v_S, '(^)'||p_WordStr||'([^_A-Za-z0-9#]|$)', POSITION => v_StartIndex, MODIFIER => v_match_parameter);
  if v_P = 0 THEN
    if v_StartIndex = 1 then
      v_StartIndex := v_StartIndex + 1; -- parola non trovata perché indice di partenza <= 0
    end if;
    
    v_P := REGEXP_INSTR(v_S, '([^_A-Za-z0-9#])'||p_WordStr||'([^_A-Za-z0-9#]|$)', POSITION => v_StartIndex-1, MODIFIER => v_match_parameter)+1; 
  END IF;  
  -- parola intera non trovata
  RETURN v_P;
END;
*/
-- Ritorna la stringa p_S duplicando i caratteri p_C presenti in essa.
-- Se p_S o p_C è NULL, ritorna p_S.
FUNCTION DuplicateChar( p_S VARCHAR2, p_C VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  if p_S IS NULL or p_C IS NULL then
    RETURN p_S;
  else
    RETURN REPLACE( p_S, p_C, p_C||p_C );
  end if;
END;

FUNCTION QuotedStr(
-- Ritorna la stringa p_S con un apice all'inizio ed uno alla fine.
-- Gli apici presenti in p_S vengono raddoppiati.
  p_S VARCHAR2
) RETURN VARCHAR2
AS
BEGIN
  if p_S IS NULL then
    RETURN globals.c_APICE||globals.c_APICE;
  end if;

  RETURN globals.c_APICE || REPLACE( p_S, globals.c_APICE, globals.c_APICE||globals.c_APICE ) || globals.c_APICE;
END;

-- Ritorna la stringa p_S con gli apici presenti in essa raddoppiati.
-- NOTA: non aggiunge anche gli apici all'inizio e alla fine come invece fa la QuotedStr.
FUNCTION DoubleQuote( p_S VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  if p_S IS NULL then
    RETURN NULL;
  end if;

  RETURN REPLACE( p_S, globals.c_APICE, globals.c_APICE||globals.c_APICE );
END;

FUNCTION FloatToStrOfLanguage(
  -- Ritorna p_Value formattato nella lingua p_Language.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value FLOAT,
  p_Language VARCHAR2
) RETURN VARCHAR2
AS
BEGIN
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  RETURN FORMAT_DECIMAL( p_Value, 11, TRUE/*Arrotonda*/, FALSE, FALSE, FALSE, p_Language );
END;

FUNCTION FloatToStr(
  -- Ritorna p_Value formattato a seconda della lingua corrente.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value FLOAT
) RETURN VARCHAR2
AS
BEGIN
  RETURN FloatToStrOfLanguage( p_Value, LsMultiLanguage.GetLinguaCorrente );
END;

FUNCTION StrToFloat(
  -- Ritorna p_Value convertendolo in FLOAT.
  -- Il valore in p_Value deve essere formattato secondo la lingua corrente.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value VARCHAR2
) RETURN FLOAT
AS
  -- variabili
  s_ValueSession VARCHAR2(100);
BEGIN
  -- verifica i parametri
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  -- converte p_Value utilizzando il separatore decimale della sessione
  s_ValueSession := REPLACE( p_Value, DecimalSeparator, LsSQL.GetSessionDecimalSeparator );

  RETURN CAST( s_ValueSession AS FLOAT );
END;

FUNCTION FloatToStrIta(
  -- Ritorna p_Value formattato in italiano.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value FLOAT
) RETURN VARCHAR2
AS
BEGIN
  RETURN FloatToStrOfLanguage( p_Value, LsMultiLanguage.c_LINGUA_ITALIANA_ID );
END;

FUNCTION StrToFloatIta(
  -- Ritorna p_Value convertendolo in FLOAT.
  -- Il valore in p_Value deve essere formattato secondo la lingua Italiana.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value VARCHAR2
) RETURN FLOAT
AS
  -- variabili
  s_ValueSession VARCHAR2(100);
BEGIN
  -- verifica i parametri
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  -- converte p_Value utilizzando il separatore decimale della sessione
  s_ValueSession := REPLACE( p_Value, LsMultiLanguage.c_SEPARATORE_DECIMALE_ITA, LsSQL.GetSessionDecimalSeparator );

  RETURN CAST( s_ValueSession AS FLOAT );
END;

FUNCTION FloatToStrEng(
  -- Ritorna p_Value formattato in inglese.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value FLOAT
) RETURN VARCHAR2
AS
BEGIN
  RETURN FloatToStrOfLanguage( p_Value, LsMultiLanguage.c_LINGUA_INGLESE_ID );
END;

FUNCTION StrToFloatEng(
  -- Ritorna p_Value convertendolo in FLOAT.
  -- Il valore in p_Value deve essere formattato secondo la lingua Inglese.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value VARCHAR2
) RETURN FLOAT
AS
  -- variabili
  s_ValueSession VARCHAR2(100);
BEGIN
  -- verifica i parametri
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  -- converte p_Value utilizzando il separatore decimale della sessione
  s_ValueSession := REPLACE( p_Value, LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG, LsSQL.GetSessionDecimalSeparator );

  RETURN CAST( s_ValueSession AS FLOAT );
END;

FUNCTION StrToFloatEngIta(
  -- Ritorna p_Value convertendolo in FLOAT.
  -- Il valore in p_Value deve essere formattato secondo la lingua Inglese o Italiana.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value VARCHAR2
) RETURN FLOAT
AS
BEGIN
  -- verifica i parametri
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  if LsINSTR(p_Value,',') > 0 then -- ha trovato la virgola; considera p_Value formattato in italiano
    RETURN StrToFloatIta(p_Value);
  else -- non ha trovato la virgola; considera p_Value formattato in inglese
    RETURN StrToFloatEng(p_Value);
  end if; 
END;

FUNCTION CurrToStrOfLanguage(
  -- Ritorna p_Value formattato nella lingua p_Language.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value NUMBER,
  p_Language VARCHAR2
) RETURN VARCHAR2
AS
BEGIN
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  RETURN FORMAT_MONEY( p_Value, 4, TRUE/*Arrotonda*/, FALSE, FALSE, FALSE, p_Language );
END;

FUNCTION CurrToStr(
  -- Ritorna p_Value formattato a seconda della lingua corrente.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value NUMBER
) RETURN VARCHAR2
AS
BEGIN
  RETURN CurrToStrOfLanguage( p_Value, LsMultiLanguage.GetLinguaCorrente );
END;

FUNCTION StrToCurr(
  -- Ritorna p_Value convertendolo in NUMBER.
  -- Il valore in p_Value deve essere formattato secondo la lingua corrente.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value VARCHAR2
) RETURN NUMBER
AS
  -- variabili
  s_ValueSession VARCHAR2(100);
BEGIN
  -- verifica i parametri
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  -- converte p_Value utilizzando il separatore decimale della sessione
  s_ValueSession := REPLACE( p_Value, DecimalSeparator, LsSQL.GetSessionDecimalSeparator );

  RETURN CAST( s_ValueSession AS NUMBER );
END;

FUNCTION CurrToStrEng(
  -- Ritorna p_Value formattato in Inglese.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value NUMBER
) RETURN VARCHAR2
AS
BEGIN
  RETURN CurrToStrOfLanguage( p_Value, LsMultiLanguage.c_LINGUA_INGLESE_ID );
END;

FUNCTION StrToCurrEng(
  -- Ritorna p_Value convertendolo in NUMBER.
  -- Il valore in p_Value deve essere formattato secondo la lingua Inglese.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value VARCHAR2
) RETURN NUMBER
AS
  -- variabili
  s_ValueSession VARCHAR2(100);
BEGIN
  -- verifica i parametri
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  -- sostituisce LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG con il separatore decimale della sessione
  s_ValueSession := REPLACE( p_Value, LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG, LsSQL.GetSessionDecimalSeparator );

  -- converte p_Value utilizzando il separatore decimale della sessione
  RETURN CAST( s_ValueSession AS NUMBER );
END;

FUNCTION CurrToStrIta(
  -- Ritorna p_Value formattato in Italiano.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value NUMBER
) RETURN VARCHAR2
AS
BEGIN
  RETURN CurrToStrOfLanguage( p_Value, LsMultiLanguage.c_LINGUA_ITALIANA_ID );
END;

FUNCTION StrToCurrIta(
  -- Ritorna p_Value convertendolo in NUMBER.
  -- Il valore in p_Value deve essere formattato secondo la lingua Italiana.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value VARCHAR2
) RETURN NUMBER
AS
  -- variabili
  s_ValueSession VARCHAR2(100);
BEGIN
  -- verifica i parametri
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  -- sostituisce LsMultiLanguage.c_SEPARATORE_DECIMALE_ITA con il separatore decimale della sessione
  s_ValueSession := REPLACE( p_Value, LsMultiLanguage.c_SEPARATORE_DECIMALE_ITA, LsSQL.GetSessionDecimalSeparator );

  -- converte p_Value utilizzando il separatore decimale della sessione
  RETURN CAST( s_ValueSession AS NUMBER );
END;

FUNCTION StrToCurrEngIta(
  -- Ritorna p_Value convertendolo in NUMBER.
  -- Il valore in p_Value deve essere formattato secondo la lingua Inglese o Italiana.
  -- Se p_Value è NULL, ritorna NULL.
  p_Value VARCHAR2
) RETURN NUMBER
AS
BEGIN
  -- verifica i parametri
  if p_Value IS NULL then
    RETURN NULL;
  end if;

  if LsINSTR(p_Value,',') > 0 then -- ha trovato la virgola; considera p_Value formattato in italiano
    RETURN StrToCurrIta(p_Value);
  else -- non ha trovato la virgola; considera p_Value formattato in inglese
    RETURN StrToCurrEng(p_Value);
  end if; 
END;

-- Ritorna TRUE se la stringa inizia con 'T','t','Y','y','1', ritorna FALSE se inizia con un altro carattere.
-- Ritorna NULL se p_S è NULL.
FUNCTION StrToBoolean( p_S VARCHAR2 ) RETURN BOOLEAN
AS
BEGIN
  if p_S IS NULL then
    RETURN NULL;
  end if;

  RETURN SUBSTR(p_S,1,1) IN ('T','t','Y','y','1');
END;

-- Se p_B è TRUE ritorna la stringa '1', se è FALSE ritorna la stringa '0'.
-- Se p_B è NULL ritorna NULL.
FUNCTION BooleanToStr( p_B BOOLEAN ) RETURN VARCHAR2
AS
BEGIN
  if p_B IS NULL then
    RETURN NULL;
  end if;

  if p_B then
    RETURN '1';
  else
    RETURN '0';
  end if;
END;

-- Se p_B è TRUE ritorna la stringa 'Y', se è FALSE ritorna la stringa 'N'.
-- Se p_B è NULL ritorna NULL.
FUNCTION BooleanToStrAlphabetic( p_B NUMBER ) RETURN VARCHAR2
AS
BEGIN
  if p_B IS NULL then
    RETURN NULL;
  end if;

  if p_B = 1 then
    RETURN 'Y';
  else
    RETURN 'N';
  end if;
END;



-- Ritorna una stringa del tipo: (p_Field LIKE 'p_Value%')
-- Se p_Value contiene degli apici, questi vengono raddoppiati.
-- Se p_Value contiene i caratteri jolly % e _, questi rimangono invariati e verranno utilizzati dall'operatore LIKE.
-- Se p_Value contiene i caratteri jolly * e globals.c_PUNTO_DI_DOMANDA, questi verranno sostituiti con % e _ e verranno utilizzati dall'operatore LIKE.
-- Se p_Value è NULL viene ritornata globals.c_TRUE_CONDITION per estrarre tutto.
-- Se p_Field è NULL viene sollevata un'eccezione.
FUNCTION Get_LIKE( p_Field VARCHAR2, p_Value VARCHAR2 ) RETURN VARCHAR2
AS
  -- variabili
  v_Field      VARCHAR2(100);
  v_Value      VARCHAR2(32767);
BEGIN
  -- elimina i valori NULL dai parametri
  v_Field      := COALESCE( p_Field, '' );
  v_Value      := COALESCE( p_Value, '' );

  -- verifica i parametri
  if v_Field IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'Field' );
  end if;

  if v_Value IS NULL then -- se non è specificato il valore da usare con LIKE, usa globals.c_TRUE_CONDITION per estrarre tutto
    RETURN globals.c_TRUE_CONDITION;
  end if;

  -- permette di utilizzare i caratteri * e globals.c_PUNTO_DI_DOMANDA come caratteri jolly
  v_Value := REPLACE( v_Value, '*', '%' );
  v_Value := REPLACE( v_Value, globals.c_PUNTO_DI_DOMANDA, '_' );
  
  --Caso Implicito: Alla stringa da ricercare aggiunge i % a destra e a sinistra
  --Caso esplicito: L'utente decide dove mettere il percentuale.
  --Caso particolare User: Viene aggiunto il % a destra sempre e se l'utente specifica un % all'inizio allora farà una ricerca %valore%  
  if LsMatrice.IsLikeImplicito then
    if not IsEqual( LeftString(v_Value,1),'%') then
      v_Value := '%'||v_Value;
    end if;
    if not IsEqual( RightString(v_Value,1),'%') then
      v_Value := v_Value||'%';
    end if;
  elsif LsMatrice.IsLikeEsplicito then
    v_Value := v_Value;
  elsif LsMatrice.IsLikeUser then
    -- aggiunge in fondo il carattere jolly se non e' gia' presente
    if not IsEqual( RightString(v_Value,1),'%') then
      v_Value := v_Value||'%';
    end if;
  end if;
  RETURN '('||v_Field||' LIKE '||strutils.QuotedStr( v_Value )||')';
END;

-- Ritorna una stringa del tipo: (p_Field LIKE '%p_Value%')
-- Se p_Value contiene degli apici, questi vengono raddoppiati.
-- Se p_Value contiene i caratteri jolly % e _, questi rimangono invariati e verranno utilizzati dall'operatore LIKE.
-- Se p_Value contiene i caratteri jolly * e globals.c_PUNTO_DI_DOMANDA, questi verranno sostituiti con % e _ e verranno utilizzati dall'operatore LIKE.
-- Se p_Value è NULL viene ritornata globals.c_TRUE_CONDITION per estrarre tutto.
-- Se p_Field è NULL viene sollevata un'eccezione.
FUNCTION Get_LIKE_BOTH_PERC( p_Field VARCHAR2, p_Value VARCHAR2 ) RETURN VARCHAR2
AS
  -- variabili
  v_Field      VARCHAR2(100);
  v_Value      VARCHAR2(32767);
BEGIN
  -- elimina i valori NULL dai parametri
  v_Field      := COALESCE( p_Field, '' );
  v_Value      := COALESCE( p_Value, '' );

  -- verifica i parametri
  if v_Field IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'Field' );
  end if;

  if v_Value IS NULL then -- se non è specificato il valore da usare con LIKE, usa globals.c_TRUE_CONDITION per estrarre tutto
    RETURN globals.c_TRUE_CONDITION;
  end if;

  -- permette di utilizzare i caratteri * e globals.c_PUNTO_DI_DOMANDA come caratteri jolly
  v_Value := REPLACE( v_Value, '*', '%' );
  v_Value := REPLACE( v_Value, globals.c_PUNTO_DI_DOMANDA, '_' );

  -- aggiunge in fondo il carattere jolly se non e' gia' presente
  IF NOT IsEqual( RightString(v_Value,1),'%') THEN
    v_Value := v_Value||'%';
  END IF;

  -- aggiunge all'inizio il carattere jolly se non e' gia' presente
  IF NOT IsEqual( SUBSTR(v_Value,1,1),'%') THEN
    v_Value := '%'||v_Value;
  END IF;

  RETURN '('||v_Field||' LIKE '||strutils.QuotedStr( v_Value )||')';
END;


-- Ritorna una stringa nel formato: Eur 1.000,25 nel caso p_Importo=1000.25, p_Sigla='Eur', p_NumDecimali=2 e la lingua dell'utente è l'italiano.
FUNCTION ImportoDivisaToStr( p_Importo NUMBER, p_Sigla VARCHAR2, p_NumDecimali PLS_INTEGER := globals.c_CURRENCY_DISPLAY_DECIMALS ) RETURN VARCHAR2
AS
  -- variabili
  v_Importo NUMBER(18,4);
  v_Sigla VARCHAR2(10);
  v_NumDecimali PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_Importo     := COALESCE( p_Importo, 0 );
  v_Sigla       := COALESCE( p_Sigla, '' );
  v_NumDecimali := COALESCE( p_NumDecimali, 0 );

  RETURN v_Sigla||' '||FORMAT_MONEY( v_Importo, v_NumDecimali, TRUE, TRUE, FALSE, TRUE );
END;

-- Ritorna una stringa nel formato: Eur 1.000,25 nel caso p_Importo=1000.25, p_Sigla='Eur', p_NumDecimali=2 e la lingua dell'utente è l'italiano.
-- Nel caso l'importo sia null non lo formatto.
FUNCTION ImportoDivisaToStrNULL( p_Importo NUMBER, p_Sigla VARCHAR2, p_NumDecimali PLS_INTEGER := globals.c_CURRENCY_DISPLAY_DECIMALS ) RETURN VARCHAR2
AS
BEGIN
  IF p_Importo IS NOT NULL THEN
    RETURN ImportoDivisaToStr( p_Importo, p_Sigla, p_NumDecimali);
  else
    RETURN NULL;
  end if;
END;

-- Ritorna una stringa nel formato: Eur 1,000.25 nel caso p_Importo=1000.25, p_Sigla='Eur', p_NumDecimali=2 anche se la lingua dell'utente non è l'inglese.
FUNCTION ImportoDivisaToStrENG( p_Importo NUMBER, p_Sigla VARCHAR2, p_NumDecimali PLS_INTEGER := globals.c_CURRENCY_DISPLAY_DECIMALS ) RETURN VARCHAR2
AS
  -- variabili
  v_Importo NUMBER(18,4);
  v_Sigla VARCHAR2(10);
  v_NumDecimali PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_Importo     := COALESCE( p_Importo, 0 );
  v_Sigla       := COALESCE( p_Sigla, '' );
  v_NumDecimali := COALESCE( p_NumDecimali, 0 );

  RETURN v_Sigla||' '||FORMAT_MONEY( v_Importo, v_NumDecimali, TRUE, TRUE, TRUE, TRUE );
END;

FUNCTION StringOfChar( p_Ch VARCHAR2, p_Count PLS_INTEGER ) RETURN VARCHAR2
AS
BEGIN
  RETURN Replicate( p_Ch, p_Count );
END;

-- Ritorna p_S senza alcun carattere di controllo (tranne globals.c_CR, globals.c_LF e globals.c_TAB che non vengono eliminati da p_S).
FUNCTION CleanStr( p_S VARCHAR2 ) RETURN VARCHAR2
AS
  -- variabili
  v_I PLS_INTEGER;
  v_Result VARCHAR2(32767);
BEGIN
  v_Result := p_S;

  -- scorre i caratteri di controllo
  FOR v_I IN 0 .. ASCII(globals.c_SPAZIO) - 1
  LOOP
    -- elimina i caratteri di controllo dalla stringa v_Result (tranne globals.c_CR, globals.c_LF e globals.c_TAB)
    if Chr(v_I) NOT IN ( globals.c_CR, globals.c_LF, globals.c_TAB ) then
      v_Result := REPLACE( v_Result, Chr(v_I), '' );
    end if;
  END LOOP;

  -- toglie anche gli eventuali caratteri DEL
  v_Result := REPLACE( v_Result, globals.c_DEL, '' );

  RETURN v_Result;
END;

-- Ritorna p_S sostituendo i caratteri di controllo con degli spazi.
-- NOTA: la sequenza di caratteri di controllo globals.c_CRLF verra' sostituita con un singolo spazio e non con 2.
FUNCTION CleanWithSpaces( p_S VARCHAR2 ) RETURN VARCHAR2
AS
  -- variabili
  v_I PLS_INTEGER;
  v_Result VARCHAR2(32767);
BEGIN
  v_Result := p_S;

  -- sostituisce i caratteri di controllo globals.c_CRLF della stringa v_Result con uno spazio
  v_Result := REPLACE( v_Result, globals.c_CRLF, globals.c_SPAZIO );

  -- scorre i caratteri di controllo
  FOR v_I IN 0 .. ASCII(globals.c_SPAZIO) - 1
  LOOP
    -- sostituisce i caratteri di controllo della stringa v_Result con uno spazio
    v_Result := REPLACE( v_Result, Chr(v_I), globals.c_SPAZIO );
  END LOOP;

  -- sostituisce anche gli eventuali caratteri DEL con uno spazio
  v_Result := REPLACE( v_Result, globals.c_DEL, globals.c_SPAZIO );

  RETURN v_Result;
END;

-- Ritorna p_S senza alcun carattere di controllo
FUNCTION Clean( p_S VARCHAR2 ) RETURN VARCHAR2
AS
  -- variabili
  v_I PLS_INTEGER;
  v_Result VARCHAR2(32767);
BEGIN
  v_Result := p_S;

  -- scorre i caratteri di controllo
  FOR v_I IN 0 .. ASCII(globals.c_SPAZIO) - 1
  LOOP
    -- elimina i caratteri di controllo dalla stringa v_Result
    v_Result := REPLACE( v_Result, Chr(v_I), '' );
  END LOOP;

  -- toglie anche gli eventuali caratteri DEL
  v_Result := REPLACE( v_Result, globals.c_DEL, '' );

  RETURN v_Result;
END;

-- Ritorna p_S senza alcun carattere di controllo  
FUNCTION CleanControlsChars( p_S VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  RETURN REGEXP_REPLACE(p_S,'[[:cntrl:]]+','');
END;

-- Ritorna p_S senza alcun whitespace (POSIX [:space:])  
FUNCTION CleanWhitespaceChars( p_S VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  RETURN REGEXP_REPLACE(p_S,'[[:space:]]','');
END;

--> toglie tutti i caratteri non ASCII
FUNCTION CleanNoAscii( p_S VARCHAR2 ) RETURN VARCHAR2
AS
  -- variabili
  v_I PLS_INTEGER;
  v_Result VARCHAR2(32767);
  v_MyByte VARCHAR2(1);
BEGIN

  -- scorre i caratteri di controllo
  FOR v_I IN 1 .. strutils.len(p_S)
  LOOP
    V_MyByte := substr(p_s, v_i, 1);

    if ASCII(V_MyByte) not between 32 and 126 then
       V_MyByte := null;
    end if;

    V_Result := V_Result || V_MyByte;
  END LOOP;

  RETURN v_Result;
END;

-- Ritorna p_S sostituendo i caratteri non ASCII con p_StrReplaceValue; se p_StrReplaceValue è NULL, questi caratteri non ASCII verranno eliminati.
-- NOTA: alcuni caratteri come le lettere accentate verranno sostituiti con le relative lettere non accentate e non con p_StrReplaceValue.  
-- I caratteri CR, LF e TAB verranno sostituiti con degli spazi mentre gli altri caratteri di controllo verranno sempre eliminati dalla stringa risultato.
-- Se p_S è NULL verrà ritornato NULL.  
FUNCTION ReplaceNoAscii( p_S VARCHAR2, p_StrReplaceValue VARCHAR2 := ' ' ) RETURN VARCHAR2
AS
  v_Result VARCHAR2(32767);
BEGIN    
  if p_S IS NULL then
    RETURN NULL;
  end if;
  
  --la conversione della stringa in US7ASCII, sostituisce i caratteri non ASCII con dei punti interrogativi;
  --quest'ultimi vengono sostituiti con il p_StrReplaceValue passato in input;  
  v_Result := REPLACE( CONVERT(p_S,'US7ASCII'), '?', p_StrReplaceValue );
  
  --sostituisce eventuali CR, LF e TAB con uno spazio
  v_Result := REPLACE( v_Result, globals.c_CR, ' ');
  v_Result := REPLACE( v_Result, globals.c_LF, ' ');
  v_Result := REPLACE( v_Result, globals.c_TAB, ' ');
  
  --alla fine vengono eliminati anche eventuali caratteri di controllo
  v_Result := REGEXP_REPLACE( v_Result , '[[:cntrl:]]*', '' );
  
  RETURN v_Result;  
END;

-- Ritorna p_S sostituendo i caratteri non ANSI con p_StrReplaceValue; se p_StrReplaceValue è NULL, questi caratteri non ANSI verranno eliminati. 
-- Se p_Preserve_CR_LF_TAB è 1, i caratteri CR, LF e TAB verranno preservati nella stringa risultato, altrimenti verranno sostituiti con degli spazi.
-- Gli altri caratteri di controllo verranno sempre eliminati dalla stringa risultato.
-- Se p_S è NULL verrà ritornato NULL.  
FUNCTION ReplaceNoAnsi( p_S VARCHAR2, p_StrReplaceValue VARCHAR2 := ' ', p_Preserve_CR_LF_TAB NUMBER/*Boolean*/ := 0/*FALSE*/ ) RETURN VARCHAR2
AS
  v_Result VARCHAR2(32767);
  v_I NUMBER(9);
  v_CHAR VARCHAR2(1);
  v_ASCII NUMBER(12);
  v_ANSI BINARY_INTEGER;
BEGIN    
  if p_S IS NULL then
    RETURN NULL;
  end if;
  
  v_Result := '';
  
  FOR v_I IN 1..LENGTH(p_S)
  LOOP
    v_CHAR  := SUBSTR(p_S,v_I,1);
    v_ASCII := ASCII(v_CHAR);
    
    if v_ASCII BETWEEN 32 AND 126 OR v_ASCII BETWEEN 160 AND 255 then -- carattere ANSI non di controllo  
      v_Result := v_Result||v_CHAR;
    elsif v_ASCII IN (13,10,9) then -- carattere di controllo CR, LF o TAB 
      if p_Preserve_CR_LF_TAB = 1 then
        v_Result := v_Result||v_CHAR;
      else
        v_Result := v_Result||' ';
      end if;
    elsif v_ASCII BETWEEN 0 AND 31 OR v_ASCII BETWEEN 128 AND 159 then -- carattere di controllo da eliminare 
      NULL; -- il carattere non viene salvato in v_Result
    else
      -- Se il CharSet corrente del DB è UTF-8, la funzione ASCII di Oracle converte prima il carattere nel suo valore esadecimale UTF-8 e poi ritorna tale valore in decimale;
      -- questo fa si che le lettere accentate abbiano dei valori molto alti (la lettera à ad esempio viene convertita nel valore esadecimale C3A0 che corrisponde al valore decimale 50080).   
      -- Per questo motivo qui si tenta di convertire il carattere contenuto in v_CHAR nel corrispondente valore che avrebbe nel CharSet ISO-8859-1.   
      BEGIN
        v_ANSI := UTL_RAW.CAST_TO_BINARY_INTEGER( UTL_I18N.STRING_TO_RAW(v_CHAR,'WE8ISO8859P1') );
      EXCEPTION
        WHEN OTHERS THEN
          v_ANSI := NULL; -- conversione in ANSI non riuscita
      END;

      if v_ANSI IS NULL OR v_ANSI IN (63,191)/*punto interrogativo normale o capovolto*/ then -- il carattere contenuto in v_CHAR non è un carattere ANSI
        v_Result := v_Result||p_StrReplaceValue; -- sostituisce il carattere contenuto in v_CHAR con p_StrReplaceValue
      elsif v_ANSI BETWEEN 32 AND 126 OR v_ANSI BETWEEN 160 AND 255 then -- il carattere contenuto in v_CHAR è in realtà un carattere ANSI 
        v_Result := v_Result||v_CHAR;
      else -- il carattere contenuto in v_CHAR non è un carattere ANSI
        v_Result := v_Result||p_StrReplaceValue; -- sostituisce il carattere contenuto in v_CHAR con p_StrReplaceValue
      end if;
    end if;
  END LOOP;
  
  RETURN v_Result;  
END;

-- Ritorna p_Memo senza alcun carattere di controllo (tranne globals.c_CR, globals.c_LF e globals.c_TAB che non vengono eliminati da p_Memo).
FUNCTION CleanMemo( p_Memo CLOB ) RETURN CLOB
AS
  -- variabili
  v_I PLS_INTEGER;
  v_Result CLOB;
BEGIN
  v_Result := p_Memo;

  -- scorre i caratteri di controllo
  FOR v_I IN 0 .. ASCII(globals.c_SPAZIO) - 1
  LOOP
    -- elimina i caratteri di controllo dalla stringa v_Result (tranne globals.c_CR, globals.c_LF e globals.c_TAB)
    if Chr(v_I) NOT IN ( globals.c_CR, globals.c_LF, globals.c_TAB ) then
      v_Result := REPLACE( v_Result, Chr(v_I), '' );
    end if;
  END LOOP;

  -- toglie anche gli eventuali caratteri DEL
  v_Result := REPLACE( v_Result, globals.c_DEL, '' );

  RETURN v_Result;
END;

FUNCTION TrimLeft( p_S VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  RETURN TRIM( LEADING FROM p_S );
END;

FUNCTION TrimRight( p_S VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  RETURN TRIM( TRAILING FROM p_S );
END;

-- Ritorna p_S sostituendo le lettere accentate à,è,é,ì,ò,ù,À,È,É,Ì,Ò,Ù con le corrispondenti lettere non accentate.
FUNCTION GetStrSenzaAccenti( p_S VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  RETURN TRANSLATE( p_S, 'àèéìòùÀÈÉÌÒÙ°', 'aeeiouAEEIOU''' );
END;

-- Ritorna p_S eliminando i caratteri che non sono lettere dalla 'A' alla 'Z' o dalla 'a' alla 'z'.
-- Ritorna NULL se p_S è NULL. 
-- ATTENZIONE: questa funzione viene usata dall'indice SIANAGR2F e deve rimanere deterministica.
FUNCTION GetStrConSoleLettere( p_S VARCHAR2 ) RETURN VARCHAR2 DETERMINISTIC
AS
  -- variabili
  v_Result VARCHAR2(32767);
  v_Char VARCHAR2(1);
BEGIN
  if p_S IS NULL then
    RETURN NULL;
  end if;
  
  v_Result := '';

  FOR v_I IN 1 .. LENGTH(p_S)
  LOOP
    -- preleva l'Iesimo carattere
    v_Char := SUBSTR( p_S, v_I, 1 );
    -- se è una lettera, la aggiunge alla stringa risultato
    if UPPER(v_Char) BETWEEN 'A' AND 'Z' then
      v_Result := v_Result||v_Char;
    end if;
  END LOOP;

  RETURN v_Result;
END;

-- Restituisce una stringa di p_N spazi.
-- Restituisce NULL se p_N è NULL o 0 o un numero negativo.
-- NOTA: funziona come la SPACE di Microsoft SQL Server 2000.
FUNCTION SPACE( p_N PLS_INTEGER ) RETURN VARCHAR2
AS
BEGIN
  if p_N IS NULL or p_N <= 0 then
    RETURN NULL;
  end if;

  RETURN REPLICATE( globals.c_SPAZIO, p_N );
END;

-- Ritorna p_S con il backslash finale, se non è presente.
FUNCTION AddBackSlash(p_S VARCHAR2) RETURN VARCHAR2
AS
BEGIN
  if RightString( p_S, 1 ) = '\' then -- la stringa termina con il backslash
    RETURN p_S;
  else
    RETURN p_S||'\'; -- ritorna la stringa con il backslash
  end if;
END;

-- Ritorna p_S senza il backslash finale, se è presente.
FUNCTION RemoveBackSlash(p_S VARCHAR2) RETURN VARCHAR2
AS
BEGIN
  if RightString( p_S, 1 ) = '\' then -- la stringa termina con il backslash
    RETURN LeftString( p_S, Len(p_S)-1 ); -- ritorna la stringa senza il backslash
  else
    RETURN p_S;
  end if;
END;

-- Ritorna una stringa di lunghezza p_FixedLen che contiene p_S eventualmente troncata o riempita a destra di spazi.
-- Se p_FixedLen è NULL o <= 0, verrà ritornato NULL.
-- Se p_S è NULL, verrà ritornata una stringa di p_FixedLen spazi.
FUNCTION GetFixedStr( p_S VARCHAR2, p_FixedLen PLS_INTEGER ) RETURN VARCHAR
AS
  -- variabili
  v_S        VARCHAR2(32767);
  v_FixedLen PLS_INTEGER;
  v_Result VARCHAR2(32767);
BEGIN
  -- elimina i valori NULL dai parametri
  v_S        := COALESCE( p_S, '' );
  v_FixedLen := COALESCE( p_FixedLen, 0 );

  -- verifica i parametri
  if v_FixedLen <= 0 then
    RETURN NULL;
  end if;

  if v_S IS NULL then
    RETURN strutils.REPLICATE( globals.c_SPAZIO, v_FixedLen );
  end if;

  if Len(v_S) > v_FixedLen then
    v_Result := LeftString( v_S, v_FixedLen );
  elsif Len(v_S) < v_FixedLen then
    v_Result := PadR( v_S, v_FixedLen, globals.c_SPAZIO );
  else
    v_Result := v_S;
  end if;

  RETURN v_Result;
END;

-- Ritorna una stringa di lunghezza p_FixedLen che contiene il numero p_N eventualmente riempito a sinistra di spazi.
-- Se il numero p_N non può essere contenuto in una stringa di p_FixedLen caratteri, verrà ritornata una stringa di p_FixedLen asterischi.
-- Se p_FixedLen è NULL o <= 0, verrà ritornato NULL.
-- Se p_N è NULL, verrà ritornata una stringa di p_FixedLen spazi.
FUNCTION GetFixedInt( p_N PLS_INTEGER, p_FixedLen PLS_INTEGER ) RETURN VARCHAR2
AS
  -- variabili
  v_N PLS_INTEGER;
  v_FixedLen PLS_INTEGER;
  v_S VARCHAR2(32767);
  v_Result VARCHAR2(32767);
BEGIN
  -- elimina i valori NULL dai parametri (tranne p_N)
  v_N        := p_N;
  v_FixedLen := COALESCE( p_FixedLen, 0 );

  -- verifica i parametri
  if v_FixedLen <= 0 then
    RETURN NULL;
  end if;

  if v_N IS NULL then
    RETURN strutils.REPLICATE( globals.c_SPAZIO, v_FixedLen );
  end if;

  v_S := IntToStr(v_N);

  if Len(v_S) > v_FixedLen then
    RETURN REPLICATE( '*', v_FixedLen ); -- se il numero è più lungo della lunghezza voluta, viene ritornata una stringa di asterischi
  elsif Len(v_S) < v_FixedLen then -- il numero è più corto della lunghezza voluta, viene ritornato con gli spazi a sinistra
    v_Result := PadL( v_S, v_FixedLen, globals.c_SPAZIO );
  else -- il numero è uguale della lunghezza voluta, viene ritornato così com'è
    v_Result := v_S;
  end if;

  RETURN v_Result;
END;

-- Ritorna una stringa di lunghezza p_FixedLen che contiene il numero p_N arrotondato alla p_Decimals cifra ed eventualmente riempito a sinistra di spazi.
-- Se il numero p_N non può essere contenuto in una stringa di p_FixedLen caratteri, verrà ritornata una stringa di p_FixedLen asterischi.
-- Se p_FixedLen è NULL o <= 0, verrà ritornato NULL.
-- Se p_N è NULL, verrà ritornata una stringa di p_FixedLen spazi.
FUNCTION GetFixedFloat( p_N FLOAT, p_FixedLen PLS_INTEGER, p_Decimals PLS_INTEGER ) RETURN VARCHAR2
AS
  -- variabili
  v_N FLOAT;
  v_FixedLen PLS_INTEGER;
  v_Decimals PLS_INTEGER;
  v_S VARCHAR2(32767);
  v_Result VARCHAR2(32767);
BEGIN
  -- elimina i valori NULL dai parametri (tranne p_N)
  v_N        := p_N;
  v_FixedLen := COALESCE( p_FixedLen, 0 );
  v_Decimals := COALESCE( p_Decimals, 0 );

  -- verifica i parametri
  if v_FixedLen <= 0 then
    RETURN NULL;
  end if;

  if v_N IS NULL then
    RETURN strutils.REPLICATE( globals.c_SPAZIO, v_FixedLen );
  end if;

  v_S := FORMAT_DECIMAL( v_N, v_Decimals, TRUE, FALSE, TRUE, TRUE );

  if Len(v_S) > v_FixedLen then
    RETURN REPLICATE( '*', v_FixedLen ); -- se il numero è più lungo della lunghezza voluta, viene ritornata una stringa di asterischi
  elsif Len(v_S) < v_FixedLen then -- il numero è più corto della lunghezza voluta, viene ritornato con gli spazi a sinistra
    v_Result := PadL( v_S, v_FixedLen, globals.c_SPAZIO );
  else -- il numero è uguale della lunghezza voluta, viene ritornato così com'è
    v_Result := v_S;
  end if;

  RETURN v_Result;
END;

function ReplaceWordForSql( 
  p_S              IN VARCHAR2,
  p_OldWordArr     IN t_ArrayOfString,
  p_NewWordArr     IN t_ArrayOfString,
  p_CaseSensitive  IN BOOLEAN := False
) return varchar2
as
  c_ORACLE_NAME_CHRS   VARCHAR2(200) := '[A-Za-z0-9_#$]';

  v_OldWordArr         t_ArrayOfString := t_ArrayOfString();
  v_NewWordArr         t_ArrayOfString := t_ArrayOfString();

  v_NewWord            VARCHAR2(32767);

  v_result             VARCHAR2(32767);
  v_input_len          PLS_INTEGER;
  v_buf                VARCHAR2(32767);
  v_word_match         BOOLEAN := false;
  v_likely_ora_name    boolean;
  v_c                  varchar2(1);  
  v_debug              varchar2(32767);
    
  function doWordsMatch(p_w1  in varchar2, p_w2 in varchar2, p_cs in boolean)
    return boolean
  is
  begin
    if p_cs then
      return p_w1 = p_w2;
    else
      return upper(p_w1) = upper(p_w2);
    end if;
  end;
  
  function findNewWord(
    p_word       IN VARCHAR2
  , p_OldWordArr IN t_ArrayOfString
  , p_NewWordArr IN t_ArrayOfString
  , p_cs         IN BOOLEAN
  ) return varchar2 
  IS
    v_found      boolean := false;
    v_NewWord    VARCHAR2(32767);
    v_WordToFind VARCHAR2(32767);
    j            PLS_INTEGER;
    v_arr_size   PLS_INTEGER;
  begin  
    if coalesce(length(p_word), 0) > 0 then
      if p_cs then
        v_WordToFind := p_word;
      else
        v_WordToFind := upper(p_word);
      end if;
      
      v_arr_size := p_OldWordArr.COUNT;
      j := 0;
      v_found := false;
      while ( NOT v_found ) and j < v_arr_size loop
        j := j + 1 ;
        v_found := v_WordToFind = p_OldWordArr(j) ;
      end loop;
      if v_found then
        v_NewWord := p_NewWordArr(j);
      end if;
    end if;
    return v_NewWord;
  end;

begin
  -- If one of the array of words is empty, exit the function returning
  -- the string as is 
  if p_OldWordArr.COUNT = 0 OR p_NewWordArr.COUNT = 0 then
    RETURN p_S;
  end if;
  -- If the arrays of words have different size, raise an error 
  if p_OldWordArr.COUNT <> p_NewWordArr.COUNT then
    globals.LsError( LsGestErrors.INCOMPATIBLE_PARAMETER_VALUES );
  end if;
  /*
  for i in p_OldWordArr.FIRST .. p_OldWordArr.LAST loop
    v_debug := v_debug || p_OldWordArr(i)||'->'||p_NewWordArr(i)||'|' ;
  end loop;
  plog.debug(v_debug||'**'||p_S);
  */
  -- removing from the array the tuples made by the same word
  for i in p_OldWordArr.FIRST .. p_OldWordArr.LAST loop
    if NOT doWordsMatch(p_NewWordArr(i), p_OldWordArr(i), p_CaseSensitive ) THEN
      v_OldWordArr.extend;
      if ( p_CaseSensitive ) then
        v_OldWordArr(v_OldWordArr.count) := p_OldWordArr(i);
      else
        v_OldWordArr(v_OldWordArr.count) := upper(p_OldWordArr(i));
      end if;
      v_NewWordArr.extend;
      v_NewWordArr(v_NewWordArr.count) := p_NewWordArr(i);
    end if;
  end loop;
  -- in case all tuples are made of the same word, there is nothing to replace,
  -- Return the input string as is
  if v_OldWordArr.COUNT = 0 OR v_NewWordArr.COUNT = 0 then
    RETURN p_S;
  end if;

  v_input_len := length(p_S);
  for i in 1 .. v_input_len loop
    v_c := substr(p_S, i, 1);
    -- checkig whether or not the character is compatible with Oracle object names
    v_likely_ora_name := regexp_like(v_c, c_ORACLE_NAME_CHRS);
    if v_likely_ora_name then
      -- If it is, we put it in an accumulaor...
      v_buf := v_buf || v_c;
    else
      -- ... otherwise, we check whether the word in the accumulator matches one
      -- within the set to be replaced. If the current character is not compatible
      -- with Oracle object names, that means we reached the first character after
      -- the end of the Oracle object name.
      v_NewWord := findNewWord(v_buf, v_OldWordArr, v_NewWordArr, p_CaseSensitive);
      v_word_match := v_NewWord is not null;

      -- if we found a word match, that means we can proceed
      -- with replacing the word
      if v_word_match then
        -- replacing the whole buffer with the new word...
        v_buf := v_NewWord ;
        -- ... and resetting internal logic
        v_word_match := false;
        v_NewWord := '';
      end if;
      -- adding the buffer and the current character to the result...
      v_result := v_result || v_buf || v_c;
      -- .. and emptying the buffer
      v_buf := '';
    end if;
  end loop;

  v_NewWord := findNewWord(v_buf, v_OldWordArr, v_NewWordArr, p_CaseSensitive);
  v_word_match := v_NewWord is not null;
  -- If "v_word_match"=true, the word to replace reaches the right-most character
  -- of the string and occupies the whole buffer content.
  if v_word_match then
    -- replacing whole buffer with the new word
    v_buf := v_NewWord;
  end if;
  -- adding buffer to the result
  v_result :=  v_result || v_buf;
  RETURN v_result;
end;


function ReplaceWordForSql( 
  p_S              IN VARCHAR2,
  p_OldWord        IN VARCHAR2,
  p_NewWord        IN VARCHAR2,
  p_CaseSensitive  IN BOOLEAN := False
) return varchar2
is
  v_OldWord_arr  strutils.t_ArrayOfString := strutils.t_ArrayOfString();
  v_NewWord_arr  strutils.t_ArrayOfString := strutils.t_ArrayOfString();
begin
  v_OldWord_arr.extend;
  v_OldWord_arr(v_OldWord_arr.count) := p_OldWord;
  v_NewWord_arr.extend;
  v_NewWord_arr(v_NewWord_arr.count) := p_NewWord;
  return ReplaceWordForSql(p_S, v_OldWord_arr, v_NewWord_arr, p_CaseSensitive);
end;


function ReplaceWord( p_S VARCHAR2,
                      p_OldWord VARCHAR2,
                      p_NewWord VARCHAR2,
                      p_CaseSensitive  BOOLEAN := False
                      ) return varchar2
as
  v_Result VARCHAR2(32767);
  v_S VARCHAR2(32767);
  v_P NUMBER(9);
  v_StartIndex NUMBER(9);
  v_Occurcence PLS_INTEGER;
  v_match_parameter VARCHAR2(10);
  v_WordToReplace  VARCHAR2(32767);
  v_Replacer   VARCHAR2(32767);
  p_StartIndex NUMBER(9);
  v_ResultReplaceCase VARCHAR2(32767); 
begin
   v_Result     := p_S;
   p_StartIndex := 1;
   v_StartIndex := p_StartIndex;
  if not SameText(p_OldWord , p_NewWord) then
    if p_OldWord is null then -- parola da sostituire non specificata
      RETURN v_Result;
    end if;

    loop
      -- ricerca la parola intera OldWord nella stringa S
      v_P := PosWord( p_OldWord, v_Result, p_CaseSensitive, p_StartIndex );
      if v_P >= 1 then --parola trovata
        --effettua la sostituzione della parola all'interno di Result
        v_Result := CopyByIndexes( v_Result, 1, v_P-1 ) || p_NewWord || CopyToEnd( v_Result, v_P+strutils.Len(p_OldWord) );
        
        -- calcola dove ricominciare la ricerca
        v_StartIndex := v_P + strutils.Len(p_NewWord);
      else -- parola non trovata
        -- non c'e' piu' nulla da sostituire
        Exit;
      end if;

      if v_StartIndex > strutils.Len(v_Result) then
        Exit;
      end if;


    END LOOP;
  end if;
  return v_Result;
end;
-- Ritorna la posizione di p_SubString in p_String.
-- Ritorna 0 se non trova p_SubString in p_String.
-- NOTA: funziona come la INSTR di Oracle, ma nel caso uno dei parametri sia NULL, ritorna 0 e non NULL;
--       inoltre se p_Occurrence è <= 0, non viene sollevata un'eccezione, ma viene ritornato 0.
FUNCTION LsINSTR( p_String     VARCHAR2,
                  p_SubString  VARCHAR2,
                  p_Position   PLS_INTEGER := 1,
                  p_Occurrence PLS_INTEGER := 1 )
RETURN PLS_INTEGER
AS
  -- variabili
  v_String     VARCHAR2(32767);
  v_SubString  VARCHAR2(32767);
  v_Position   PLS_INTEGER;
  v_Occurrence PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_String     := COALESCE( p_String, '' );
  v_SubString  := COALESCE( p_SubString, '' );
  v_Position   := COALESCE( p_Position, 0 );
  v_Occurrence := COALESCE( p_Occurrence, 0 );

  -- verifica i parametri
  if v_String IS NULL then
    RETURN 0; -- p_SubString non trovata in p_String
  end if;

  if v_SubString IS NULL then
    RETURN 0; -- p_SubString non trovata in p_String
  end if;

  if v_Position = 0 then
    RETURN 0; -- p_SubString non trovata in p_String
  end if;

  if v_Occurrence <= 0 then
    RETURN 0; -- p_SubString non trovata in p_String
  end if;

  RETURN INSTR( v_String, v_SubString, v_Position, v_Occurrence );
END;


-- Ritorna la posizione della stringa p_expression1 all'interno della stringa p_expression2.
-- La ricerca è sempre case-insensitive (non distingue i caratteri maiuscoli dai minuscoli).
-- Ritorna 0 se non trova la p_expression1 all'interno della stringa p_expression2.
-- Ritorna 0 se p_expression1 o p_expression2 è NULL.
-- Ritorna NULL se p_start_location è NULL.
-- Se p_start_location è < 1, verrà considerato come se fosse 1.
-- NOTA: funziona in modo simile alla CHARINDEX di Microsoft SQL Server 2000;
--       la differenza sta nel fatto che viene ritornato 0 invece di NULL se p_expression1 o p_expression2 è NULL.
FUNCTION CHARINDEX( p_expression1 VARCHAR2, p_expression2 VARCHAR2, p_start_location PLS_INTEGER := 1 ) RETURN PLS_INTEGER
AS
  v_start_location PLS_INTEGER;
BEGIN
  if p_expression1 IS NULL or p_expression2 IS NULL then
    RETURN 0; -- in Microsoft SQL Server 2000 ritornerebbe NULL
  end if;

  if p_start_location IS NULL then
    RETURN NULL;
  end if;

  v_start_location := COALESCE( p_start_location, 0 );

  if v_start_location < 1 then
    v_start_location := 1;
  end if;

  RETURN PosStr( p_expression1, p_expression2, FALSE, v_start_location );
END;

-- Ritorna p_Clob come un VARCHAR2 troncandolo a p_MaxLength caratteri.
-- Se p_Clob è NULL verrà ritornato NULL.
-- Se p_MaxLength è NULL o <= 0, verrà ritornato NULL.
-- Se p_AddEllipsis è 1 e p_Clob deve essere troncato a p_MaxLength caratteri, verrà ritornato p_Clob troncato a p_MaxLength caratteri ma gli ultimi caratteri saranno 3 puntini.
FUNCTION CLOBtoVARCHAR2( p_Clob CLOB, p_MaxLength NUMBER := 32767, p_AddEllipsis NUMBER := 0/*Boolean*/ ) RETURN VARCHAR2
AS
  -- costanti
  c_ELLIPSIS CONSTANT VARCHAR2(10) := '...';
  
  -- variabili 
  v_MaxLength NUMBER(9);
BEGIN
  v_MaxLength := COALESCE( p_MaxLength, 0 );

  if p_Clob IS NULL then
    RETURN NULL;
  end if;

  if v_MaxLength <= 0 then
    RETURN NULL;
  end if;

  if LsSQL.NumberToBoolean(p_AddEllipsis) then
    if LENGTH(p_Clob) > v_MaxLength then
      -- nel caso in cui si devono aggiungere i puntini ma la lunghezza voluta della stringa risultato può contenere solo i puntini o parte di essi, 
      -- vengono ritornati solo i puntini o parte di essi  
      if LENGTH(c_ELLIPSIS) >= v_MaxLength then
        RETURN SUBSTR( c_ELLIPSIS, 1, v_MaxLength );
      else
        RETURN TO_CHAR( SUBSTR( p_Clob, 1, v_MaxLength-LENGTH(c_ELLIPSIS) )||TO_CLOB(c_ELLIPSIS) );
      end if;
    else
      RETURN TO_CHAR( p_Clob );
    end if;
  else
    RETURN SUBSTR( p_Clob, 1, v_MaxLength );
  end if;
END;

FUNCTION dump_query_to_csv(
     p_query      IN   CLOB,
     p_DateFormat IN VARCHAR2 := NULL,
     p_separator     VARCHAR2 := '',
     p_Delimitatore  VARCHAR2 := ''
  ) RETURN CLOB
AS
     l_thecursor     INTEGER            DEFAULT DBMS_SQL.open_cursor;
     l_columnvalue   VARCHAR2(4000);
     l_status        INTEGER;
     l_colcnt        NUMBER             := 0;
     l_separator     VARCHAR2(1);
     l_desctbl       VARCHAR2(4000);
     v_Result_CLOB   CLOB;
     v_DateFormat    VARCHAR2(50) := NULL;
     v_Delimitatore  VARCHAR2(1);
BEGIN

  BEGIN

      l_separator    := p_separator;
      v_Delimitatore := p_Delimitatore;

      if p_DateFormat is not null then
        SELECT value INTO v_DateFormat FROM nls_session_parameters WHERE parameter='NLS_DATE_FORMAT';
        EXECUTE IMMEDIATE 'alter session set nls_date_format=''dd-mon-yyyy hh24:mi:ss'' ';
      end if;

     DBMS_SQL.parse(l_thecursor, p_query, DBMS_SQL.native);
     DBMS_SQL.describe_columns2(l_thecursor, l_colcnt, l_desctbl);

     FOR i IN 1 .. l_colcnt
     LOOP
        DBMS_SQL.define_column (l_thecursor, i, l_columnvalue, 4000);
        l_separator := ',';

     END LOOP;

     l_status := DBMS_SQL.EXECUTE (l_thecursor);

     WHILE (DBMS_SQL.fetch_rows (l_thecursor) > 0)
     LOOP
        l_separator := '';

        FOR i IN 1 .. l_colcnt
        LOOP
           DBMS_SQL.COLUMN_VALUE (l_thecursor, i, l_columnvalue);
           v_Result_CLOB := v_Result_CLOB || l_separator ||v_Delimitatore|| l_columnvalue||v_Delimitatore;
           l_separator := p_separator;
        END LOOP;

        v_Result_CLOB := v_Result_CLOB || globals.c_CRLF;

     END LOOP;

     DBMS_SQL.close_cursor(l_thecursor);

     RETURN v_Result_CLOB;

     if v_DateFormat is not null then
       EXECUTE IMMEDIATE 'alter session set nls_date_format=' || globals.c_APICE || v_DateFormat || globals.c_APICE;
     end if;

  EXCEPTION

    WHEN OTHERS THEN
      ROLLBACK;
      globals.LsErrorTrace(SQLERRM);

    if v_DateFormat is not null then
      EXECUTE IMMEDIATE 'alter session set nls_date_format=' || globals.c_APICE || v_DateFormat || globals.c_APICE;
    else
      EXECUTE IMMEDIATE 'alter session set nls_date_format=''dd-MON-yy'' ';
    end if;

  END;

END;

-- Ritorna p_CLOB spezzato in linee.
-- Le linee all'interno del p_CLOB possono terminare con i caratteri globals.c_CRLF, globals.c_CR o globals.c_LF.
-- ATTENZIONE: in questa funzione NON utilizzare le funzioni Liscor che possono usare solo i VARCHAR2, ma utilizzare le funzioni Oracle che possono usare anche i CLOB.
FUNCTION GetLinesFromCLOB( p_CLOB CLOB ) RETURN t_Lines
AS
  v_CLOB CLOB;
  v_CurrPos PLS_INTEGER;
  v_PosLF PLS_INTEGER;
  v_Line VARCHAR2(32767);
  v_Result t_Lines;
BEGIN
  v_Result := t_Lines(); -- crea la collection vuota
  v_CLOB := p_CLOB;

  if v_CLOB IS NULL then
    RETURN v_Result;
  end if;

  -- sostituisce i CRLF e i CR con gli LF in modo da avere solo gli LF come caratteri di fine-linea
  v_CLOB := REPLACE( v_CLOB, globals.c_CRLF, globals.c_LF );
  v_CLOB := REPLACE( v_CLOB, globals.c_CR,   globals.c_LF );

  v_CurrPos := 1; -- la ricerca inizia dal primo carattere

  LOOP
    -- cerca il fine-linea
    v_PosLF := COALESCE( INSTR( v_CLOB, globals.c_LF, v_CurrPos ), 0 );

    if v_PosLF = 0 then -- non ci sono più fine-linea
      -- prende l'ultima parte rimanente del CLOB
      v_Line := SUBSTR( v_CLOB, v_CurrPos );
      if v_Line IS NOT NULL then
        -- aggiunge l'ultima linea al risultato
        v_Result.EXTEND;
        v_Result(v_Result.COUNT) := v_Line;
      end if;
      -- esce con il risultato
      RETURN v_Result;
    end if;

    -- legge la linea dalla posizione corrente fino al fine-linea escluso
    v_Line := SUBSTR( v_CLOB, v_CurrPos, v_PosLF - v_CurrPos );

    -- aggiunge la linea al risultato
    v_Result.EXTEND;
    v_Result(v_Result.COUNT) := v_Line;

    -- sposta la posizione corrente oltre la linea appena letta (cioè oltre il file-linea)
    v_CurrPos := v_PosLF + 1/*salta LF*/;
  END LOOP;

END;

-- Ritorna il numero di linee all'interno di p_CLOB.
-- Le linee possono terminare con i caratteri globals.c_CRLF, globals.c_CR o globals.c_LF o essere virtualmente spezzate se superano il numero di caratteri specificato in p_LINELIMIT (se maggiore di 0).
-- Se p_LINELIMIT è NULL o <= 0, le linee vengono conteggiate senza essere virtualmente spezzate.
FUNCTION CountLinesFromCLOB( p_CLOB CLOB, p_LINELIMIT NUMBER := NULL ) RETURN NUMBER
AS
  v_Result NUMBER(38);
  v_CLOB CLOB;
  v_CLOB_LENGTH NUMBER(38);
  v_CurrPos NUMBER(38);
  v_PosLF NUMBER(38);
  v_Line_Length NUMBER(38);
BEGIN
  if p_CLOB IS NULL then
    RETURN 0;
  end if;
  
  v_Result := 0;
  
  v_CLOB := p_CLOB;

  -- sostituisce i CRLF e i CR con gli LF in modo da avere solo gli LF come caratteri di fine-linea
  v_CLOB := REPLACE( v_CLOB, globals.c_CRLF, globals.c_LF );
  v_CLOB := REPLACE( v_CLOB, globals.c_CR,   globals.c_LF );

  if COALESCE(p_LINELIMIT,0) <= 0 then -- p_LINELIMIT non specificato: non si vogliono virtualmente spezzare le linee
    v_Result := COALESCE( REGEXP_COUNT(v_CLOB,globals.c_LF), 0 ); -- conta quanti fine-linea ci sono in v_CLOB
    if SUBSTR(v_CLOB,-1,1) <> globals.c_LF then -- l'ultima linea non termina con il fine-linea
      v_Result := v_Result + 1; -- aggiunge al risultato il conteggio dell'ultima linea che non termina con il fine-linea e che quindi non è stata conteggiata prima 
    end if;
    
    RETURN v_Result;
  end if; 

  v_CLOB_LENGTH := COALESCE(LENGTH(v_CLOB),0);

  v_CurrPos := 1; -- la ricerca inizia dal primo carattere
  
  LOOP
    if v_CurrPos > v_CLOB_LENGTH then
      EXIT; -- esce dal LOOP
    end if;
    
    -- cerca il fine-linea
    v_PosLF := COALESCE( INSTR( v_CLOB, globals.c_LF, v_CurrPos ), 0 );

    if v_PosLF = 0 then -- non ci sono più fine-linea
      v_Line_Length := v_CLOB_LENGTH - v_CurrPos + 1; -- calcola la lunghezza dell'ultima parte rimanente di v_CLOB
    else
      v_Line_Length := v_PosLF - v_CurrPos; -- calcola la lunghezza a partire da v_CurrPos fino al posizione del fine-linea trovato (escluso)
      if v_Line_Length = 0 then -- se la lunghezza è 0 significa che il primo carattere della linea corrente è già il fine-linea
        v_Result := v_Result + 1; -- aggiunge 1 al risultato per contare il fine-linea
      end if;
    end if;

    v_Result := v_Result + CEIL( v_Line_Length / p_LINELIMIT ); -- aggiunge al risultato il numero di linee virtuali che occuperebbe la parte di stringa corrente se fosse spezzata logicamente in n linee da p_LINELIMIT caratteri ognuna
    
    if v_PosLF = 0 then -- non c'erano più fine-linea
      EXIT; -- esce dal LOOP
    else      
      v_CurrPos := v_PosLF + 1/*salta LF*/; -- sposta la posizione corrente oltre la linea appena letta (cioè oltre il fine-linea)
    end if;
  END LOOP;

  RETURN v_Result;
END;

-- Ritorna il p_CLOB con tutti i fine-linea composti da globals.c_CRLF.
-- Se l'ultima riga di p_CLOB non finisce con globals.c_CRLF, aggiunge globals.c_CRLF alla fine.
-- Se p_CLOB è NULL, verrà ritornato NULL.
FUNCTION GetCLOBwithCRLF( p_CLOB CLOB ) RETURN CLOB
AS
  v_CLOB CLOB;
BEGIN
  if p_CLOB IS NULL then
    RETURN NULL;
  end if;

  v_CLOB := p_CLOB;

  -- sostituisce i CRLF e i CR con gli LF in modo da avere solo gli LF come caratteri di fine-linea
  v_CLOB := REPLACE( v_CLOB, globals.c_CRLF, globals.c_LF );
  v_CLOB := REPLACE( v_CLOB, globals.c_CR,   globals.c_LF );

  -- se il CLOB non termina con globals.c_LF, aggiunge globals.c_LF alla fine
  if SUBSTR( v_CLOB, LENGTH(v_CLOB) ) <> globals.c_LF then
    v_CLOB := v_CLOB||globals.c_LF;
  end if;

  -- sostituisce gli LF con i CRLF in modo da avere solo i CRLF come caratteri di fine-linea
  v_CLOB := REPLACE( v_CLOB, globals.c_LF, globals.c_CRLF );

  RETURN v_CLOB;
END;

-- Ritorna il p_CLOB senza l'eventuale CTRL-Z finale.
-- Se p_CLOB è NULL, verrà ritornato NULL.
FUNCTION GetCLOBwithoutCTRLZ( p_CLOB CLOB ) RETURN CLOB
AS
BEGIN
  if p_CLOB IS NULL then
    RETURN NULL;
  end if;

  if SUBSTR( p_CLOB, LENGTH(p_CLOB), 1 ) = globals.c_CTRL_Z then -- il CLOB termina con CTRL-Z
    RETURN SUBSTR( p_CLOB, 1, LENGTH(p_CLOB)-1 ); -- ritorna il CLOB senza il CTRL-Z finale
  else
    RETURN p_CLOB; -- ritorna il CLOB invariato
  end if;
END;

FUNCTION ToString(p_InputValue VARCHAR2) RETURN VARCHAR2
AS
BEGIN
  RETURN p_InputValue;
END;

FUNCTION ToString(p_InputValue PLS_INTEGER) RETURN VARCHAR2
AS
BEGIN
  RETURN IntToStr(p_InputValue);
END;

FUNCTION ToString(p_InputValue NUMBER) RETURN VARCHAR2
AS
BEGIN
  RETURN FloatToStr(p_InputValue);
END;


FUNCTION ToString(p_InputValue BOOLEAN) RETURN VARCHAR2
AS
BEGIN
  RETURN BooleanToStr(p_InputValue);
END;

FUNCTION ToString(p_InputValue TIMESTAMP) RETURN VARCHAR2
AS
BEGIN
  RETURN LsTime.TimeStampToFullStr(p_InputValue);
END;

--Ritorna il numero di occorrenze di un carattere in una stringa.
FUNCTION CountChars(
  p_Str VARCHAR2,
  p_Chr VARCHAR2
) RETURN NUMBER
AS
  v_I       PLS_INTEGER:= 1;
  v_SubStr  VARCHAR2(1);
  v_COUNTER NUMBER(9);

BEGIN
  if (p_Str is null) or (p_Chr is null) then
    RETURN 0;
  end if;

  v_COUNTER := 0;

  WHILE v_I <= strutils.Len(p_Str)
  LOOP
    v_SubStr := SUBSTR(p_Str, v_I, 1);
    if v_SubStr = p_Chr then
      v_COUNTER := v_COUNTER + 1;
    end if;
     v_I := v_I + 1;
  END LOOP;

  RETURN v_COUNTER;
END;

-- Divide p_Stringa in n campi logici usando il p_Separatore e ritorna il campo in posizione p_Posizione (che inizia da 1).
-- Ritorna NULL se p_Stringa o p_Separatore o p_Posizione è NULL.
-- Ritorna NULL se p_Posizione <= 0.
-- ATTENZIONE: p_Separatore può avere più di un carattere, ma se è formato da caratteri uguali questa funzione può dare un risultato errato a causa del particolare funzionamento della INSTR di Oracle.
-- NOTA: funziona come la GetStrPart successiva, ma questa funzione ha in input un VARCHAR2 e restituisce un VARCHAR2.
FUNCTION GetStrPart(
  p_Stringa    VARCHAR2,
  p_Separatore VARCHAR2 := '|',
  p_Posizione  PLS_INTEGER
) RETURN VARCHAR2
AS
BEGIN
  RETURN GetStrPart( TO_CLOB(p_Stringa), p_Separatore, p_Posizione ); -- richiama la funzione che accetta i CLOB 
END;

-- Divide p_Stringa in n campi logici usando il p_Separatore e ritorna il campo in posizione p_Posizione (che inizia da 1).
-- Ritorna NULL se p_Stringa o p_Separatore o p_Posizione è NULL.
-- Ritorna NULL se p_Posizione <= 0.
-- ATTENZIONE: p_Separatore può avere più di un carattere, ma se è formato da caratteri uguali questa funzione può dare un risultato errato a causa del particolare funzionamento della INSTR di Oracle.
-- NOTA: funziona come la GetStrPart precedente, ma questa funzione ha in input un CLOB e restituisce un CLOB.
-- ATTENZIONE: in questa funzione usare solo funzioni Oracle e non funzioni Liscor (che accettano in genere solo VARCHAR2 e non i CLOB) 
FUNCTION GetStrPart(
  p_Stringa    CLOB,
  p_Separatore VARCHAR2 := '|',
  p_Posizione  INTEGER -- numero del campo voluto
) RETURN CLOB
AS
  v_pos_start  INTEGER;
  v_pos_end    INTEGER;
BEGIN
  if (p_Stringa is null) or (p_Separatore is null) or COALESCE(p_Posizione,0) <= 0 then
    RETURN NULL;
  end if;

  if p_Posizione = 1 then -- primo campo
    v_pos_start := 1; -- il primo campo inizia dal carattere iniziale
  else
    v_pos_start := INSTR( p_Stringa, p_Separatore, 1, p_Posizione-1 );
    if v_pos_start = 0 then -- separatore non trovato
      RETURN NULL; -- campo in posizione p_Posizione non trovato
   end if;
    v_pos_start := v_pos_start + LENGTH(p_Separatore); -- salta il separatore
  end if;

  v_pos_end := INSTR( p_Stringa, p_Separatore, v_pos_start );

  if v_pos_end = 0 then -- ultimo separatore non trovato
    RETURN SUBSTR( p_Stringa, v_pos_start ); -- la stringa rimanente partendo da v_pos_start è l'ultimo campo 
  end if;

  v_pos_end := v_pos_end - 1; -- torna indietro rispetto al secondo separatore trovato  

  if v_pos_end < v_pos_start then -- non c'è niente tra il primo ed il secondo separatore
    RETURN NULL; -- il campo in posizione p_Posizione è vuoto
  end if;

  RETURN SUBSTR( p_Stringa, v_pos_start, v_pos_end - v_pos_start + 1 );
END;

-- Ritorna la stringa p_S sostituendo p_OldPattern con p_NewPattern.
-- Se p_rfReplaceAll e' FALSE, sostituisce solo la prima p_OldPattern incontrata, se e' TRUE sostituisce tutte le p_OldPattern incontrate.
-- Se p_rfIgnoreCase e' FALSE, cerca p_OldPattern distinguendo le lettere maiuscole dalle minuscole, se e' TRUE cerca p_OldPattern ignorando le differenze tra lettere maiuscole e minuscole.
-- NOTA: funziona come la StringReplace di Delphi.
FUNCTION StringReplace( p_S VARCHAR2, p_OldPattern VARCHAR2, p_NewPattern VARCHAR2,
                        p_rfReplaceAll BOOLEAN := FALSE, p_rfIgnoreCase BOOLEAN := FALSE ) RETURN VARCHAR2
AS
  v_StartIndex PLS_INTEGER;
  v_rfReplaceAll BOOLEAN;
  v_rfIgnoreCase BOOLEAN;
  v_Pos PLS_INTEGER;
  v_Result VARCHAR2(32767);
BEGIN
  v_rfReplaceAll := COALESCE( p_rfReplaceAll, FALSE );
  v_rfIgnoreCase := COALESCE( p_rfIgnoreCase, FALSE );

  if p_S IS NULL then -- la stringa in cui cercare e' vuota
    RETURN NULL;
  end if;

  if p_OldPattern IS NULL then -- non si sta cercando nulla
    RETURN p_S;
  end if;

  v_Result := p_S;

  v_StartIndex := 1; -- inizia la ricerca dal primo carattere

  WHILE v_StartIndex <= strutils.Len(v_Result)
  LOOP
    v_Pos := strutils.PosStr( p_OldPattern, v_Result, not v_rfIgnoreCase, v_StartIndex );
    if v_Pos > 0 then -- p_OldPattern trovato
      -- sostituisce p_OldPattern con p_NewPattern
      v_Result := strutils.Copy( v_Result, 1, v_Pos-1 ) || p_NewPattern || strutils.CopyToEnd( v_Result, v_Pos+strutils.Len(p_OldPattern) );
      if not v_rfReplaceAll then -- deve sostituire solo la prima occorrenza
        EXIT; -- esce dal LOOP
      end if;
      -- calcola da dove deve iniziare la ricerca della successiva occorrenza
      v_StartIndex := v_Pos + strutils.Len(p_NewPattern);
    else -- p_OldPattern non trovato
      EXIT; -- esce dal LOOP
    end if;
  END LOOP;

  RETURN v_Result;
END;

-- Ritorna il CLOB p_S sostituendo la prima occorrenza di p_OldPattern con p_NewPattern.
-- ATTENZIONE: la ricerca di p_OldPattern è sempre case-sensitive.
FUNCTION FirstStringReplace( p_S CLOB, p_OldPattern CLOB, p_NewPattern CLOB ) RETURN CLOB
AS
  v_Pos INTEGER;
BEGIN
  if p_S IS NULL then -- la stringa in cui cercare e' vuota
    RETURN NULL;
  end if;

  if p_OldPattern IS NULL then -- non si sta cercando nulla
    RETURN p_S;
  end if;

  v_Pos := COALESCE( INSTR( p_S, p_OldPattern ), 0 );

  if v_Pos <= 0 then
    RETURN p_S; -- stringa p_OldPattern non trovata, ritorna p_S invariato
  end if;
  
  RETURN SUBSTR( p_S, 1, v_Pos-1 )||p_NewPattern||SUBSTR( p_S, v_Pos + COALESCE(LENGTH(p_OldPattern),0) );
END;

-- Ritorna una stringa del tipo: (p_Field LIKE 'p_Value%') oppure (p_Field = 'p_Value') a seconda che p_Value contenga o meno dei caratteri jolly che sono: % * _ ?
-- Se p_Value contiene degli apici, questi vengono raddoppiati.
-- Se p_Value contiene i caratteri jolly % e _, questi rimangono invariati e verranno utilizzati dall'operatore LIKE.
-- Se p_Value contiene i caratteri jolly * e globals.c_PUNTO_DI_DOMANDA, questi verranno sostituiti con % e _ e verranno utilizzati dall'operatore LIKE.
-- Se p_Value è NULL viene ritornata globals.c_TRUE_CONDITION per estrarre tutto.
-- Se p_Field è NULL viene sollevata un'eccezione.
FUNCTION GetLikeOrExactMatch( p_Field VARCHAR2, p_Value VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  -- verifica i parametri
  if p_Field IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'Field' );
  end if;

  if p_Value IS NULL then -- se non è specificato il valore da usare con LIKE, usa globals.c_TRUE_CONDITION per estrarre tutto
    RETURN globals.c_TRUE_CONDITION;
  end if;
  
  -- Faccio la ricerca "case sensitive" per evitare che venga fatto l'upper case
  -- di p_Value all'interno di strutils.PosStr. E' inutile fare upper case se sto
  -- cercando dei simpboli.
  if strutils.PosStr('%', p_Value, TRUE) > 0 or
     strutils.PosStr('*', p_Value, TRUE) > 0 or
     strutils.PosStr(globals.c_PUNTO_DI_DOMANDA, p_Value, TRUE) > 0 or
     strutils.PosStr('_', p_Value, TRUE) > 0 then
    RETURN strutils.Get_LIKE( p_Field, p_Value );
  else
    RETURN '('||p_Field||' = '||strutils.QuotedStr( p_Value )||')';
  end if;
END;


--Ritorna True o False a seconda che il valore del campo sia compatibile con la stringa like passata. Funziona esattamente come l'istruzione
--LIKE nelle query ma è da utilizzare nel caso si utilizzi un'istruzione nei package PLSQL.
--Se p_FieldValue è NULL viene sollevata un'eccezione
--Se p_LikeCond è NULL viene sollevata un'eccezione
FUNCTION LsLike(p_FieldValue VARCHAR2, p_LikeCond VARCHAR2) RETURN BOOLEAN
as
  v_Result NUMBER(1);
BEGIN
  if (p_FieldValue IS NULL ) then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'FieldValue' );
  end if;
  if (p_LikeCond IS NULL ) then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'LikeCond' );
  end if;
  SELECT
    COUNT(*)
    INTO
    v_Result
  FROM
    DUAL
  WHERE
    p_FieldValue LIKE p_LikeCond;

  RETURN LSSQL.NUMBERTOBOOLEAN(v_Result);
END;



FUNCTION formatNumberToStrFromSession(
  p_BO_SessionID VARCHAR2,
  p_Number NUMBER
) RETURN VARCHAR2
AS
  v_SEPARATORE_DATA VARCHAR2(1);
  v_SEPARATORE_ORA VARCHAR2(1);
  v_SEPARATORE_DECIMALE VARCHAR2(1);
  v_SEPARATORE_MIGLIAIA VARCHAR2(1);
  v_languageCode TABOPER.LINGUA%TYPE;
BEGIN
  if p_Bo_SessionID is null then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'Bo_SessionID' );
  end if;
  SELECT TABOPER.LINGUA INTO v_languageCode FROM TABOPER
  INNER JOIN SISESSION ON SISESSION.USERNAME = TABOPER.USERNAME
  WHERE SISESSION.BO_SESSIONID = p_BO_SessionID;
  RETURN FORMAT_DECIMAL(
      p_Number,
      9,
      TRUE,
      FALSE,
      FALSE,
      FALSE,
      v_languageCode
    );
END;


FUNCTION ValidFileName(
  p_FileName VARCHAR2,
  p_ValidChar VARCHAR2 := '_',
  p_SpaceIsValid BOOLEAN := False)
RETURN VARCHAR2
AS
  v_Result VARCHAR2(32767);
BEGIN
  --I caratteri non validi sono:  \/:*?"<>|  e lo spazio se SpaceIsValid è false.
  v_Result := p_FileName;
  v_Result := Replace(v_Result, '\', p_ValidChar);
  v_Result := Replace(v_Result, '/', p_ValidChar);
  v_Result := Replace(v_Result, ':', p_ValidChar);
  v_Result := Replace(v_Result, '*', p_ValidChar);
  v_Result := Replace(v_Result, '?', p_ValidChar);
  v_Result := Replace(v_Result, '"', p_ValidChar);
  v_Result := Replace(v_Result, '<', p_ValidChar);
  v_Result := Replace(v_Result, '>', p_ValidChar);
  v_Result := Replace(v_Result, '|', p_ValidChar);
  if not p_SpaceIsValid then
    v_Result := Replace(v_Result, ' ',p_ValidChar);
  end if;
  RETURN v_Result;
END;

FUNCTION isValidFileName(
  p_FileName VARCHAR2,
  p_ListNotValidChar OUT NOCOPY VARCHAR2)
RETURN BOOLEAN
AS
  v_Result BOOLEAN;
  v_char VARCHAR2(1);
  v_invalid_chars VARCHAR2(32767);
  v_SqlTextLen    PLS_INTEGER;
BEGIN

  v_invalid_chars  := '\/:*?"<>|';
  
  v_SqlTextLen := NVL(length(p_FileName),0);
  
  FOR pos IN 1 .. v_SqlTextLen
   LOOP
     v_char := substr(p_FileName, pos, 1);
   IF instr(v_invalid_chars, v_char) > 0 THEN 
       p_ListNotValidChar := p_ListNotValidChar|| v_char;
     END IF;
   END LOOP;
  
  IF p_ListNotValidChar IS NOT NULL THEN 
    v_Result := FALSE;
  ELSE
    v_Result := TRUE;
  END IF;
  
  RETURN v_Result;
END;

FUNCTION ValidFileName_Number(
  p_FileName      VARCHAR2,
  p_ValidChar     VARCHAR2 := '_',
  p_SpaceIsValid  NUMBER   := 0 )
RETURN VARCHAR2
AS
  v_Result VARCHAR2(32767);
  v_SpaceIsValid  BOOLEAN;
BEGIN

  v_SpaceIsValid:= LSSQL.NUMBERTOBOOLEAN( p_SpaceIsValid );
  
  v_Result := ValidFileName( p_FileName
                           , p_FileName
                           , v_SpaceIsValid
                           );
  RETURN v_Result;
END;


FUNCTION GetPrefissoIndirizzo(
  p_Indirizzo VARCHAR2,
  p_MaxLength NUMBER)
RETURN VARCHAR2
AS
  v_Prefisso VARCHAR2(32767);
  v_Pos PLS_INTEGER;
BEGIN
  v_Pos := Pos(' ', p_Indirizzo);
  if v_Pos > 0 then
    v_Prefisso := Copy(p_Indirizzo, 1, v_Pos-1);
  else
    v_Prefisso := '';
  end if;

  if LENGTH(v_Prefisso)<=p_MaxLength then
    RETURN v_Prefisso;
  else
    RETURN '';
  end if;
END;

--trasforma una stringa tutta maiuscola in una stringa minuscola con l'iniziale maiuscola
--esempio: CODICE CONTRATTO -> Codice contratto (se la stringa non e' tutta maiuscola non trasforma)
FUNCTION UpperToLowerCap( p_Stringa VARCHAR2 ) RETURN VARCHAR2
AS
  v_Result VARCHAR2(32767);
BEGIN
  v_Result := p_Stringa;
  if v_Result IS NOT NULL and v_Result = UPPER(v_Result) then
    v_Result := LOWER(v_Result);
    v_Result := UPPER( Copy(v_Result,1,1) )||CopyToEnd(v_Result,2);
  end if;

  RETURN v_Result;
END;

-- Ritorna un CLOB aggiungendo il prefisso specificato in p_Prefix a tutte le righe contenute in p_S.
-- Le righe in p_S devono terminare con globals.c_LF o con globals.c_CRLF (tranne l'ultima riga che puo' o meno terminare con globals.c_LF o con globals.c_CRLF).
-- Se p_Prefix e' NULL, ritorna p_S.
-- Se p_S e' NULL, ritorna NULL.
FUNCTION AddPrefixToAllLines( p_Prefix VARCHAR2, p_S CLOB ) RETURN CLOB
AS
  v_Result CLOB;
  v_EndWithLF BOOLEAN;
BEGIN
  if p_Prefix IS NULL then -- nessun prefisso da aggiungere
    RETURN p_S;
  end if;

  if p_S IS NULL then -- se la stringa sorgente e' NULL, ritorna NULL
    RETURN NULL;
  end if;

  v_Result := p_S;

  -- elimina eventualmente l'ultimo globals.c_LF, poi verra' riaggiunto
  if SUBSTR( v_Result, LENGTH(v_Result), 1 ) = globals.c_LF then -- termina con globals.c_LF
    v_EndWithLF := TRUE;
    -- elimina l'ultimo globals.c_LF
    v_Result := SUBSTR( v_Result, 1, LENGTH(v_Result)-1 );
  else
    v_EndWithLF := FALSE;
  end if;

  -- aggiunge il prefisso a tutte le righe
  v_Result := p_Prefix||REPLACE( v_Result, globals.c_LF, globals.c_LF||p_Prefix );

  -- se la stringa originale terminava con globals.c_LF, lo riaggiunge
  if v_EndWithLF then
    v_Result := v_Result||globals.c_LF;
  end if;

  RETURN v_Result;
END;

FUNCTION StrToUni(
--<HL>Ritorna la stringa specificata in formato Unicode.</HL>
--<DESC>
-- UNISTR takes as its argument a text literal or an expression that resolves to character data and returns it in the national character set. The national character set of the database can be either AL16UTF16 or UTF8. UNISTR provides support for Unicode string literals by letting you specify the Unicode encoding value of characters in the string. This is useful, for example, for inserting data into NCHAR columns.
-- The Unicode encoding value has the form '\xxxx' where 'xxxx' is the hexadecimal value of a character in UCS-2 encoding format. Supplementary characters are encoded as two code units, the first from the high-surrogates range (U+D800 to U+DBFF), and the second from the low-surrogates range (U+DC00 to U+DFFF). To include the backslash in the string itself, precede it with another backslash (\\).
-- For portability and data preservation, Oracle recommends that in the UNISTR string argument you specify only ASCII characters and the Unicode encoding values.
-- Se p_S è NULL o la stringa vuota, ritorna NULL.
-- Solleva un'eccezione in caso di errore.
--</DESC>
--<PARAM>
  p_S VARCHAR2
--</PARAM>
) RETURN VARCHAR2
AS
BEGIN
   RETURN UNISTR(p_S);
END;

FUNCTION TrimLeftPad( p_S VARCHAR2, p_P CHAR ) RETURN VARCHAR2
AS
BEGIN
  RETURN TRIM( LEADING p_P FROM p_S );
END;

FUNCTION TrimRightPad( p_S VARCHAR2, p_P CHAR ) RETURN VARCHAR2
AS
BEGIN
  RETURN TRIM( TRAILING p_P FROM p_S );
END;

-- Ritorna una stringa concatenando p_source, uno spazio e p_add.
-- Se p_source è NULL, ritorna p_add.
-- Se p_add è NULL, ritorna p_source. 
FUNCTION AppendStr(
  p_source  VARCHAR2, -- stringa base
  p_add  VARCHAR2     -- stringa da aggiungere 
) RETURN VARCHAR2
AS
BEGIN
  if p_source IS NULL THEN
    RETURN p_add;
  elsif p_add IS NULL THEN
    RETURN p_source;
  else
    RETURN p_source||' '||p_add;
  end if;
END;

FUNCTION VerificaZeroInString (
--<HL>Ritorna TRUE o FALSE a seconda che la stringa sia completamente composta dagli 0 oppure no.</HL>
--<DESC>
-- Ritorna TRUE o FALSE a seconda che la stringa sia completamente composta dagli 0 oppure no.
-- Se p_String è composto da soli 0 ritorna TRUE.
-- Se p_String è composto da almeno un carattere diverso da 0 ritorna FALSE.
--</DESC>
--<PARAM>
 p_String    VARCHAR2
) RETURN BOOLEAN
AS
  v_String      VARCHAR2(32767);
BEGIN
  v_String := p_String;
  -- Sostituisco tutti gli 0 con NULL
  v_String := strutils.STRINGREPLACE(v_String,'0', NULL, TRUE);
  
  -- Se v_String è NULL, quindi tutti i caratteri della stringa passata erano uguali a 0, ritorno TRUE,
  -- altrimenti ritorno FALSE
  IF v_String IS NULL THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;

  
END;

-- Ritorna p_IntegerValue come stringa in un formato universale non ambiguo, indipendente dalle impostazioni del server Oracle, della sessione dell'utente o dalla lingua dell'utente.
-- Ritorna NULL se p_IntegerValue è NULL.
FUNCTION GetUniversalStr( p_IntegerValue PLS_INTEGER ) RETURN VARCHAR2
AS
BEGIN
  if p_IntegerValue IS NULL then
    RETURN NULL;
  end if;
  
  RETURN TRIM( TO_CHAR( p_IntegerValue ) );
END;

-- Ritorna p_NumberValue come stringa in un formato universale non ambiguo, indipendente dalle impostazioni del server Oracle, della sessione dell'utente o dalla lingua dell'utente.
-- Ritorna NULL se p_NumberValue è NULL.
FUNCTION GetUniversalStr( p_NumberValue NUMBER ) RETURN VARCHAR2
AS
  v_IntegerFormat VARCHAR2(100);
  v_DecimalFormat VARCHAR2(100);
  v_Result VARCHAR2(100);
BEGIN
  if p_NumberValue IS NULL then
    RETURN NULL;
  end if;

  v_IntegerFormat := LPAD( '0', c_MAX_FORMAT_INTEGER_DIGITS, '9' );  
  v_DecimalFormat := LPAD( '0', c_MAX_FORMAT_DECIMAL_DIGITS, '0' );
  
  v_Result := TRIM( TO_CHAR( ROUND(p_NumberValue,c_MAX_FORMAT_DECIMAL_DIGITS), v_IntegerFormat||'.'||v_DecimalFormat, 'NLS_NUMERIC_CHARACTERS = ''.,''' ) );
  v_Result := TRIM( TRAILING '0' FROM v_Result ); -- toglie gli zeri a destra
  v_Result := TRIM( TRAILING '.' FROM v_Result ); -- toglie l'eventuale punto rimasto a destra (esempio: '0.' quando p_Value è 0)
  
  RETURN v_Result;
END;


-- Ritorna p_TimeStampValue come stringa in un formato universale non ambiguo, indipendente dalle impostazioni del server Oracle, della sessione dell'utente o dalla lingua dell'utente.
-- Ritorna NULL se p_TimeStampValue è NULL.
FUNCTION GetUniversalStr( p_TimeStampValue TIMESTAMP ) RETURN VARCHAR2
AS
BEGIN
  if p_TimeStampValue IS NULL then
    RETURN NULL;
  end if;

  RETURN TO_CHAR(p_TimeStampValue,c_TIMESTAMP_FORMAT);
END;

-- Ritorna p_BooleanValue come stringa in un formato universale non ambiguo, 
-- indipendente dalle impostazioni del server Oracle, della sessione dell'utente
-- o dalla lingua dell'utente.
-- Ritorna NULL se p_BooleanValue è NULL.
FUNCTION GetUniversalStr( p_BooleanValue BOOLEAN ) RETURN VARCHAR2
AS
BEGIN
  if p_BooleanValue IS NULL then
    RETURN NULL;
  end if;
  
  if p_BooleanValue then
    RETURN c_BOOLEAN_TRUE;
  else
    RETURN c_BOOLEAN_FALSE;
  end if;
END;

FUNCTION formatForHistorical(p_Var NUMBER) RETURN VARCHAR2
AS
BEGIN
  RETURN REPLACE(TO_CHAR(p_Var), ',', '.');
END;

FUNCTION formatForHistorical(p_Var DATE) RETURN VARCHAR2
AS
BEGIN
  RETURN  TO_CHAR(p_Var, 'YYYY-MM-DD"T"HH24:MI:SS');
END;

FUNCTION formatForHistorical(p_Var VARCHAR) RETURN VARCHAR2
AS
BEGIN
  RETURN p_Var;
END;

-- Verifica il valore di p_Str.
-- Solleva un'eccezione se p_Str è NULL e p_ValoreObbligatorio è TRUE.
-- Solleva un'eccezione se p_Str non è NULL e la sua lunghezza non è compresa tra p_MinLen e p_MaxLen.
-- Solleva un'eccezione se p_Str non è NULL e p_ValoriAmmessi non è NULL e il valore di p_Str non è compreso tra i valori specificati in p_ValoriAmmessi (separati da p_Separatore); se p_CaseSensitive = TRUE i valori ammessi sono cercati distinguendo le lettere maiuscole dalle minuscole.  
-- Se p_MinLen o p_MaxLen è NULL verrà considerato come 0.
-- p_StrDesc è una descrizione del valore di p_Str usata nell'eventuale messaggio di errore.    
PROCEDURE CheckStrValue( p_Str VARCHAR2, p_StrDesc VARCHAR2, p_ValoreObbligatorio BOOLEAN := FALSE, p_MinLen PLS_INTEGER := 0, p_MaxLen PLS_INTEGER := globals.c_MAX_INTEGER, p_ValoriAmmessi VARCHAR2 := NULL, p_Separatore VARCHAR2 := ';', p_CaseSensitive BOOLEAN := FALSE )
AS
  v_ValoreObbligatorio BOOLEAN;
  v_MinLen PLS_INTEGER; 
  v_MaxLen PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_ValoreObbligatorio := COALESCE(p_ValoreObbligatorio,FALSE);
  v_MinLen := COALESCE(p_MinLen,0);
  v_MaxLen := COALESCE(p_MaxLen,0);

  if p_Str IS NULL then
    if v_ValoreObbligatorio then
      globals.LsErrorFmt( LsMessages.STR_OBBLIGATORIA, p_StrDesc );
    else
      RETURN; -- p_Str non è obbligatorio, nessun problema
    end if;
  end if; 
  
  if strutils.Len( p_Str ) NOT BETWEEN v_MinLen AND v_MaxLen then
    if v_MinLen = v_MaxLen then
      globals.LsErrorFmt( LsMessages.STR_NOT_OK_LEN, globals.VarArrayOf(p_Str,p_StrDesc,v_MinLen) );
    else
      globals.LsErrorFmt( LsMessages.STR_NOT_BETWEEN_MIN_MAX_LEN, globals.VarArrayOf(p_Str,p_StrDesc,v_MinLen,v_MaxLen) );
    end if;
  end if;
  
  if p_ValoriAmmessi IS NOT NULL then
    if strutils.PosStr( p_Separatore||p_Str||p_Separatore, p_Separatore||p_ValoriAmmessi||p_Separatore, p_CaseSensitive => p_CaseSensitive ) = 0 then
      globals.LsErrorFmt( LsMessages.STR_VALORI_AMMESSI, globals.VarArrayOf(p_Str,p_StrDesc,p_ValoriAmmessi) );
    end if;
  end if;
END;

-- Ritorna una stringa sostituendo parte della p_InputString (partendo dal carattere p_Start e per p_Length caratteri) con la p_ReplaceString.
-- Se p_InputString o p_Start o p_Length sono NULL, viene ritornato NULL.
-- Se p_Start non è compreso tra 1 e la lunghezza di p_InputString, viene ritornato NULL.
-- Se p_Length è minore di 0, viene ritornato NULL.
-- NOTA: funziona come la STUFF di Microsoft SQL Server 2000.
FUNCTION Stuff( p_InputString VARCHAR2, p_Start PLS_INTEGER, p_Length PLS_INTEGER, p_ReplaceString VARCHAR2 ) RETURN VARCHAR
AS
  v_Len PLS_INTEGER;
  v_LeftPart  VARCHAR2(32767);
  v_RightPart VARCHAR2(32767);
BEGIN
  if p_InputString IS NULL or p_Start IS NULL or p_Length IS NULL then -- NOTA: p_ReplaceString può essere NULL 
    RETURN NULL;
  end if;
  
  v_Len := strutils.Len(p_InputString);
  
  if p_Start NOT BETWEEN 1 AND v_Len then
    RETURN NULL;
  end if;
  
  if p_Length < 0 then
    RETURN NULL;
  end if;
  
  v_LeftPart  := strutils.LeftString( p_InputString, p_Start-1 );
  v_RightPart := strutils.CopyToEnd( p_InputString, p_Start+p_Length );
  
  RETURN v_LeftPart||p_ReplaceString||v_RightPart;
END;

-- Confronta p_S1 e p_S2 (distinguendo tra lettere maiuscole e minuscole) e ritorna i seguenti valori:
--  -1 se p_S1 è minore di p_S2
--   0 se p_S1 è uguale a p_S2
--   1 se p_S1 è maggiore di p_S2
-- NOTA: l'eventuale valore NULL in p_S1 o p_S2 verrà considerato come la stringa vuota, cioé la stringa che è minore a tutte le altre ma uguale ad un'altra stringa vuota.
FUNCTION CompareStr( p_S1 VARCHAR2, p_S2 VARCHAR2 ) RETURN PLS_INTEGER
AS
BEGIN
  if p_S1 IS NULL and p_S2 IS NULL then -- p_S1 e p_S2 sono uguali (entrambi NULL)  
    RETURN 0;
  end if;
    
  if p_S1 IS NULL and p_S2 IS NOT NULL then -- p_S1 (essendo NULL) è minore di p_S2 (non essendo NULL)
    RETURN -1;
  end if;
  
  if p_S1 IS NOT NULL and p_S2 IS NULL then -- p_S1 (non essendo NULL) è maggiore di p_S2 (essendo NULL)
    RETURN 1;
  end if;
  
  -- confronta p_S1 e p_S2 (nessuno dei 2 è NULL)
  if p_S1 > p_S2 then
    RETURN 1;
  elsif p_S1 < p_S2 then
    RETURN -1;
  else -- p_S1 = p_S2 then
    RETURN 0;
  end if;
END;

-- Confronta p_S1 e p_S2 (ignorando la differenza tra lettere maiuscole e minuscole) e ritorna i seguenti valori:
--  -1 se p_S1 è minore di p_S2
--   0 se p_S1 è uguale a p_S2
--   1 se p_S1 è maggiore di p_S2
-- NOTA: l'eventuale valore NULL in p_S1 o p_S2 verrà considerato come la stringa vuota, cioé la stringa che è minore a tutte le altre ma uguale ad un'altra stringa vuota.
FUNCTION CompareText( p_S1 VARCHAR2, p_S2 VARCHAR2 ) RETURN PLS_INTEGER
AS
BEGIN
  RETURN CompareStr( UPPER(p_S1), UPPER(p_S2) );
END;

-- Sostituisce nella stringa p_S il carattere nella posizione p_Index (che inizia da 1) con il carattere p_NewChar.
-- Corrisponde alla seguente assegnazione che non si può fare in Oracle: p_S[p_Index] := p_NewChar;
-- Solleva un'eccezione se p_Index è NULL o è fuori dai limiti della stringa p_S.
-- Solleva un'eccezione se p_NewChar non è un singolo carattere.
PROCEDURE SubstChar( p_S IN OUT NOCOPY VARCHAR2, p_Index PLS_INTEGER, p_NewChar VARCHAR2 )
AS
BEGIN
  -- verifica i parametri
  if p_Index IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'p_Index' );
  end if;

  if p_Index NOT BETWEEN 1 AND strutils.Len(p_S) then
    globals.LsErrorFmt( LsGestErrors.INDEX_OUT_OF_BOUNDS, p_Index );
  end if;

  if strutils.Len(p_NewChar) <> 1 then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'p_NewChar' );
  end if;

  p_S := SUBSTR(p_S,1,p_Index-1)||p_NewChar||SUBSTR(p_S,p_Index+1);    
END;

FUNCTION ReplaceSubStr( p_S VARCHAR2, p_OldPattern VARCHAR2, p_NewPattern VARCHAR2,
                        p_SoloLaPrima NUMBER := 1/*Boolean*/, p_CaseSensitive NUMBER := 0/*Boolean*/ ) RETURN VARCHAR2
AS
BEGIN
  RETURN strutils.StringReplace( p_S, p_OldPattern, p_NewPattern, not LsSQL.NumberToBoolean(p_SoloLaPrima), not LsSQL.NumberToBoolean(p_CaseSensitive) );
END;

-- Ritorna il valore Currency convertito in stringa utilizzando come separatore decimale il carattere '.'
FUNCTION CurrencyToStrWithDecimalPoint( p_Valore NUMBER, p_CifreDecimali PLS_INTEGER := 4 ) RETURN VARCHAR2
AS
BEGIN
  RETURN FORMAT_DECIMAL( COALESCE(p_Valore,0), COALESCE(p_CifreDecimali,0), TRUE, FALSE, TRUE, TRUE );
END;

FUNCTION EliminaSeparatoriDaValori(p_Valore VARCHAR2) RETURN VARCHAR2 -- NOTA: In Delphi si chiamava EliminaSeparatoriDaVaolri
AS
BEGIN
  RETURN REPLACE( REPLACE( p_Valore, '.' ), ',' );
END;

-- Ritorna TRUE se il primo carattere di p_Char è un carattere di controllo ASCII.
-- Ritorna FALSE se p_Char è NULL.
FUNCTION IsControlChar( p_Char VARCHAR2 ) RETURN BOOLEAN
AS
  v_Char VARCHAR2(1);
BEGIN
  if p_Char IS NULL then
    RETURN FALSE;
  end if;
  
  v_Char := SUBSTR( p_Char, 1, 1 );
  
  RETURN ASCII(v_Char) < ASCII(globals.c_SPAZIO) OR v_Char = globals.c_DEL;
END;

-- Ritorna TRUE se il primo carattere di p_Char è un carattere whitespace.
-- Ritorna FALSE se p_Char è NULL.
FUNCTION IsWhiteSpaceChar( p_Char VARCHAR2 ) RETURN BOOLEAN
AS
  v_Char VARCHAR2(1);
BEGIN
  if p_Char IS NULL then
    RETURN FALSE;
  end if;
  
  v_Char := SUBSTR( p_Char, 1, 1 );
  
  RETURN v_Char = globals.c_SPAZIO or IsControlChar(v_Char);
END;

-- Ritorna il numero di elementi di p_Array.
-- Ritorna 0 se p_Array è NULL.
FUNCTION ArrayLength( p_Array t_ArrayOfString ) RETURN PLS_INTEGER
AS
BEGIN
  if p_Array IS NULL then
    RETURN 0;
  end if;
  
  RETURN p_Array.COUNT;
END;

-- Imposta il numero di elementi di p_Array a p_NewLength.
-- Se p_Array è NULL viene prima creato e poi viene riempito con p_NewLength elementi NULL.
-- Se p_NewLength è NULL o minore di 0 verrà considerato come 0.
-- NOTA: se vengono aggiunti dei nuovi elementi per raggiungere la lunghezza p_NewLength, questi nuovi elementi avranno il valore NULL. 
PROCEDURE ArraySetLength( p_Array IN OUT NOCOPY t_ArrayOfString, p_NewLength PLS_INTEGER )
AS
  v_COUNT PLS_INTEGER;
BEGIN
  if p_Array IS NULL then
    p_Array := t_ArrayOfString(); -- crea l'array
  end if;
  
  if COALESCE(p_NewLength,0) <= 0 then -- si vuole impostare la lunghezza di p_Array a 0 
    p_Array.DELETE; -- elimina tutti gli elementi
    RETURN;
  end if;
  
  v_COUNT := p_Array.COUNT; 
  
  if v_COUNT < p_NewLength then
    p_Array.EXTEND( p_NewLength - v_COUNT );
  elsif v_COUNT > p_NewLength then
    p_Array.DELETE( p_NewLength + 1, v_COUNT );
  else -- NOTA: se v_COUNT = p_NewLength non deve fare nulla
    NULL;
  end if;
END; 

-- Ritorna l'elemento di indice p_Index (che inizia da 0) contenuto nell'array p_Array.
-- Solleva un'eccezione se l'elemento di indice p_Index è fuori dall'array p_Array.
FUNCTION ArrayGetElement( p_Array t_ArrayOfString, p_Index PLS_INTEGER ) RETURN VARCHAR2
AS
BEGIN
  RETURN p_Array( p_Index + 1/*le collection Oracle iniziano da 1*/ );   
END;

-- Assegna il valore p_Value all'elemento di indice p_Index (che inizia da 0) contenuto nell'array p_Array.
-- Solleva un'eccezione se l'elemento di indice p_Index è fuori dall'array p_Array.
PROCEDURE ArraySetElement( p_Array IN OUT NOCOPY t_ArrayOfString, p_Index PLS_INTEGER, p_Value VARCHAR2 )
AS
BEGIN
  p_Array( p_Index + 1/*le collection Oracle iniziano da 1*/ ) := p_Value;    
END;

-- Ritorna l'indice del primo elemento dell'array p_Array (sarà sempre 0).
-- NOTA: Ritorna 0 se p_Array è NULL o non ha elementi.
FUNCTION ArrayLow( p_Array t_ArrayOfString ) RETURN PLS_INTEGER
AS
BEGIN
  RETURN 0;
END;

-- Ritorna l'indice dell'ultimo elemento dell'array p_Array.
-- NOTA: Ritorna -1 se p_Array è NULL o non ha elementi (come la funzione High di Delphi sugli array).
FUNCTION ArrayHigh( p_Array t_ArrayOfString ) RETURN PLS_INTEGER
AS
BEGIN
  if p_Array IS NULL then
    RETURN -1;
  end if;
  
  RETURN ArrayLength(p_Array) - 1;
END;

FUNCTION IsValidEmailAddress( p_Email VARCHAR2 ) RETURN BOOLEAN
AS
  isValidEmail NUMBER(1):= 0;
BEGIN

  BEGIN
    SELECT 1 INTO isValidEmail
    FROM DUAL
	WHERE REGEXP_LIKE (p_Email, '^[a-zA-Z0-9_.-]+@[a-zA-Z0-9_-]+\.[a-zA-Z0-9_.-]*[a-zA-Z0-9_-]$');
	
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      isValidEmail := 0;
  END;
  
  RETURN LsSql.NumberToBoolean(isValidEmail);
END;


FUNCTION IsValidMultiEmailAddress( p_Email VARCHAR2, p_Separator VARCHAR2) RETURN BOOLEAN
AS
  v_Count NUMBER(9):= 0;
  isValidEmail NUMBER(1):= 0;
  v_TempEMail VARCHAR2(4000);
BEGIN
  isValidEmail := 1;
  v_Count := strutils.CountSubstrings(p_Separator, p_Email);
  FOR v_i in 1 .. v_Count+1 loop
    if isValidEmail = 1 then
      v_TempEMail := strutils.GetStringPart(p_Email, v_i, p_Separator);
      if not v_TempEMail is null then
        isValidEmail := LsSql.BooleanToNumber(strutils.IsValidEmailAddress(v_TempEMail));
      end if;   
    end if;
  END LOOP;  
  RETURN LsSql.NumberToBoolean(isValidEmail);
END;


FUNCTION CheckChar( p_field_in VARCHAR2) RETURN NUMBER
AS
  v_i        NUMBER(9); 
  v_Lenght   NUMBER(9);
  v_AsciiCod NUMBER(9);
  v_Result   NUMBER(1); 
BEGIN
  
  v_Result := 1;
  v_i := 1;
  v_Lenght := strutils.Len(p_field_in);
  
  -- controllo caratteri speciali dal codice 123 (era 129) al codice 255 
  -- controllo i caratteri
  --  char(40)  = (
  --  char(41)  = )
  --  char(60)  = <
  --  char(62)  = >
  --  char(91)  = [
  --  char(93)  = ]
  --  char(59)  = ;
  --  char(64)  = @
  --  char(124) = |
  --  char(34)  = "
  --  char(44)  = ,
    
  WHILE (v_i <= v_Lenght) and (v_Result = 1)
  LOOP 
    v_AsciiCod := ASCII(SUBSTR(p_field_in, v_i, 1));
    if (v_AsciiCod >= 123 and v_AsciiCod <= 255) or 
       --(v_AsciiCod = 40)  or (v_AsciiCod = 41) or 
       (v_AsciiCod = 60)  or (v_AsciiCod = 62) or 
       (v_AsciiCod = 91)  or (v_AsciiCod = 93) or 
       (v_AsciiCod = 59)  or (v_AsciiCod = 64) or 
       --(v_AsciiCod = 124) or 
       (v_AsciiCod = 34) 
       --or (v_AsciiCod = 44) 
       then                     
      v_Result := 0;
    end if;  
    v_i := v_i + 1;
  END LOOP;

  RETURN v_Result;
END;

-- Ritorna TRUE se la stringa p_S inizia con la stringa p_BeginStr.
-- Se p_CaseSensitive è TRUE vengono distinte le lettere maiuscole dalle minuscole.
-- NOTA: se p_BeginStr è NULL verrà ritornato sempre TRUE.
FUNCTION StrBeginWith( p_S VARCHAR2, p_BeginStr VARCHAR2, p_CaseSensitive BOOLEAN := FALSE ) RETURN BOOLEAN
AS
BEGIN
  if p_CaseSensitive then
    RETURN strutils.IsEqual ( strutils.LeftString( p_S, strutils.Len(p_BeginStr) ), p_BeginStr );
  else
    RETURN strutils.SameText( strutils.LeftString( p_S, strutils.Len(p_BeginStr) ), p_BeginStr );
  end if;
END;

-- Ritorna TRUE se la stringa p_S finisce con la stringa p_EndingStr.
-- Se p_CaseSensitive è TRUE vengono distinte le lettere maiuscole dalle minuscole.
-- NOTA: se p_EndingStr è NULL verrà ritornato sempre TRUE.
FUNCTION StrEndWith( p_S VARCHAR2, p_EndingStr VARCHAR2, p_CaseSensitive BOOLEAN := FALSE ) RETURN BOOLEAN
AS
BEGIN
  if p_CaseSensitive then
    RETURN strutils.IsEqual ( strutils.RightString( p_S, strutils.Len(p_EndingStr) ), p_EndingStr );
  else
    RETURN strutils.SameText( strutils.RightString( p_S, strutils.Len(p_EndingStr) ), p_EndingStr );
  end if;
END;


-- Estrae da p_S le sottostringhe separate da p_Separator e le memorizza nell'array p_A.
-- Se p_TrimStrings è TRUE, ad ogni stringa vengono tolti gli eventuali spazi alla sua sinistra e alla sua destra.
-- Ritorna il numero di stringhe estratte; ritorna 0 se la stringa p_S è NULL.
-- L'array passato in p_A è un t_ArrayOfString e prima di chiamare questa funzione va semplicemente dichiarato come:
--   v_A strutils.t_ArrayOfString;
FUNCTION StrToArrayOfStr( p_Separator VARCHAR2, p_S VARCHAR2, p_A IN OUT NOCOPY t_ArrayOfString, p_TrimStrings BOOLEAN := TRUE ) RETURN PLS_INTEGER
AS
  v_N PLS_INTEGER;
  v_StartIndex PLS_INTEGER; 
  v_P PLS_INTEGER;
  v_Element VARCHAR2(32767);
BEGIN
  -- inizializzazioni
  v_N := 0; -- numero di stringhe trovate
  ArraySetLength( p_A, v_N ); -- imposta la lunghezza dell'Array
  
  if p_S IS NULL then -- se la stringa p_S è vuota, l'array p_A avrà 0 elementi
    RETURN 0;
  end if;
  
  v_StartIndex := 1;
  
  WHILE TRUE 
  LOOP
    -- ricerca la stringa p_Separator a partire da v_StartIndex
    v_P := PosStr( p_Separator, p_S, FALSE, v_StartIndex );
    if v_P = 0 then -- stringa Separator non trovata a partire da v_StartIndex
      -- incrementa il numero di elementi dell'Array p_A
      v_N := v_N + 1;
      ArraySetLength( p_A, v_N );
      
      -- copia l'ultima parte della stringa p_S a partire da v_StartIndex
      v_Element := CopyToEnd( p_S, v_StartIndex );
      if p_TrimStrings then
        v_Element := TRIM(v_Element);
      end if;

      ArraySetElement( p_A, v_N-1, v_Element );  
      
      RETURN ArrayLength(p_A);
    end if;
    
    -- stringa p_Separator trovata alla posizione v_P
    -- incrementa il numero di elementi dell'Array p_A
    v_N := v_N + 1;
    ArraySetLength( p_A, v_N );
    
    -- copia la SubString a partire da v_StartIndex fino al p_Separator
    v_Element := CopyByIndexes( p_S, v_StartIndex, v_P-1 );
    if p_TrimStrings then
      v_Element := TRIM(v_Element);
    end if;
    
    ArraySetElement( p_A, v_N-1, v_Element );

    v_StartIndex := v_P + strutils.Len(p_Separator); -- continua la ricerca dopo il p_Separator
  END LOOP;
END;

FUNCTION StrDigitAndChar(
--<HL>Controlla se la stringa è composta da soli numeri e lettere.</HL>
--<DESC>
-- Controlla se la stringa in ingresso è composta da numeri e lettere e ne ritorna il valore TRUE se la stringa è composta da numeri e lettere; 
-- FALSE se: solo numeri
--           solo lettere
--           se contiene caratteri speciali           
--</DESC>
--<PARAM>
  p_Str VARCHAR2
--</PARAM>
) RETURN BOOLEAN
AS
    -- variabili
    v_Str VARCHAR2(32767);
    v_I PLS_INTEGER;
    v_CHAR VARCHAR2(1);
    v_count_char  PLS_INTEGER;
    v_count_digit PLS_INTEGER;
BEGIN
    -- elimina i valori NULL dai parametri
    v_Str := COALESCE( p_Str, '' );

    v_I := 1;
    v_count_char := 0;
    v_count_digit := 0;
    WHILE v_I <= Len(v_Str)
    LOOP
        v_CHAR := SUBSTR(v_Str, v_I, 1);
        IF NOT IsDigit(v_CHAR) AND NOT IsAlpha(v_CHAR) THEN
            RETURN FALSE;
        END IF;
        -- Conto lettere 
        IF IsAlpha(v_CHAR) then 
          v_count_char:=v_count_char+1;
        end if;
        -- Conto numeri
        IF IsDigit(v_CHAR) then 
          v_count_digit:=v_count_digit+1;
        end if;  
        
        v_I := v_I + 1;
    END LOOP;
    -- Ritorna false se solo numeri 
    if v_count_digit=Len(v_Str) then 
      return false; 
    end if; 
    -- Ritorna false se solo caratteri 
    if v_count_char=Len(v_Str) then 
      return false;
    end if; 
    -- i caratteri di v_Str sono tutti cifre o lettere
    RETURN TRUE;
END;

END strutils;
