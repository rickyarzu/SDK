CREATE OR REPLACE PACKAGE BODY globals AS

  
FUNCTION LS_FUNC_SEARCH_MAX(
  --Restituisce il numero massimo di record da estrarre con le query di ricerca
  --Verifica se il valore dei record da estrarre con le query di ricerca, contenuto nella colonna
  --MAXROWLIMIT della tabella TCCOMPANY, sia superiore al valore massimo consentito dal sistema,
  --indicato in globals.c_MAX_SEARCH.
  --Restituisce il minore tra i due.
  --NOTA: se la tabella TCCOMPANY non viene trovata nel database, viene ritornato globals.c_MAX_SEARCH
  p_CodCompany VARCHAR2
)   RETURN PLS_INTEGER
AS
  --variabili
  v_MaxRow PLS_INTEGER := 0;
  v_SQLText VARCHAR2(32767);
  v_ViewName VARCHAR2(30);
BEGIN

  v_ViewName := LSSQL.GETCONTEXTVALUE(globals.c_CONVAR_VIEWROWLIM);

  if v_ViewName IS NOT NULL then
    v_SQLText := 'SELECT COALESCE(INTMAXROWLIMIT.MAXROWLIMIT,0) FROM INTMAXROWLIMIT WHERE INTMAXROWLIMIT.VIEWNAME = :VIEWNAME';
    BEGIN
      EXECUTE IMMEDIATE v_SQLText INTO v_MaxRow USING v_ViewName;  
    EXCEPTION
      WHEN no_data_found THEN
        v_MaxRow := 0;
    END;
  end if;
  
  if v_MaxRow = 0 then
    v_SQLText := 'SELECT COALESCE(MAXROWLIMIT,0) FROM TCCOMPANY WHERE CDCMPANY = :CDCMPANY';
    
    BEGIN
      EXECUTE IMMEDIATE v_SQLText INTO v_MaxRow USING p_CodCompany;  
    EXCEPTION
      WHEN no_data_found THEN
        v_MaxRow := 0;
    END;
  end if;
  
  IF v_MaxRow > 0 AND v_MaxRow < globals.c_MAX_SEARCH THEN
    RETURN v_MaxRow;
  ELSE
    RETURN globals.c_MAX_SEARCH;
  END IF;
END;

FUNCTION GetRowCount(
  p_CodCompany      VARCHAR2,
  p_SqlText         VARCHAR2,
  p_CalcRowCount    BOOLEAN,
  p_ExcOrderInCount BOOLEAN := TRUE, --Esclude dall query per il conteggio dei record l'istruzione Order By
  p_SqlTextNotOrder VARCHAR2 := NULL
) RETURN NUMBER
AS
  v_SqlText      VARCHAR2(32767);
  v_SqlTextNotOrder VARCHAR2(32767);
  v_GETTABLE      VARCHAR2(32767);
  v_ContextVarSession VARCHAR2(32767);
  v_IsSessionClientWIN BOOLEAN;
  v_RowCount  NUMBER(9) := 0;
BEGIN

  if p_CodCompany IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'CodCompany' );  
  end if;
  
  v_ContextVarSession :=  LsSQL.GetContextValue(globals.c_CONVAR_BOSESSIONID);  

  v_SqlText := p_SqlText;
  v_SqlTextNotOrder := p_SqlTextNotOrder;        
  -- Calcolo il totale dei record estraibili
  --COUNT DEGLI OGGETTI ELIMINATO, NON REINSERIRE
  --Ripristinato solo per il client WIN oppure se richiestro esplicitamente dal 
  --WEB p_CalcRowCount
 -- v_IsSessionClientWIN := LsSisession.IsSessionClientWIN(p_CodCompany, v_ContextVarSession, 0);
  
  
  if p_SqlTextNotOrder is null then 
    if ( v_IsSessionClientWIN or p_CalcRowCount ) then 
      if p_ExcOrderInCount AND REGEXP_LIKE(v_SQLText, 'ORDER[[:space:]]+BY.*') then
        IF v_SQLText LIKE '%GETTABLE%' THEN
          v_GETTABLE := ') GETTABLE';
        ELSE
          v_GETTABLE := '';
        END IF;
        EXECUTE IMMEDIATE 'SELECT COUNT(*) FROM ('||REGEXP_REPLACE(v_SQLText, 'ORDER[[:space:]]+BY.*', '', 1, 1, 'in')|| v_GETTABLE||')' INTO v_RowCount; 
      else 

        EXECUTE IMMEDIATE 'SELECT COUNT(*) FROM ('||v_SqlText||')' INTO v_RowCount;
      end if;
    else 
      v_RowCount := 0;  
    end if;   
  else 
    if ( v_IsSessionClientWIN or p_CalcRowCount ) then 
     EXECUTE IMMEDIATE 'SELECT COUNT(*) FROM ('||v_SqlText||')' INTO v_RowCount;
    else
      v_RowCount := 0; 
    end if;
  end if; 
  
  RETURN v_RowCount;
  
END;


FUNCTION GetSqlFunSearch(
  p_CodCompany      VARCHAR2,
  p_RowCount        IN OUT NOCOPY NUMBER,
  p_RowRead         IN OUT NOCOPY NUMBER,
  p_NumOfPages      IN OUT NOCOPY NUMBER,
  p_SqlText         VARCHAR2,
  p_PAGE2EXTRACT    NUMBER,
  p_CalcRowCount    BOOLEAN
) RETURN VARCHAR2
AS
  v_SqlText      VARCHAR2(32767);
  v_GETTABLE      VARCHAR2(32767);
  v_RowMax       NUMBER(9) := 0;
  v_Page2Extract NUMBER(9) := 0;
  v_ContextVarSession VARCHAR2(32767);
  v_Paginazione       NUMBER(9) :=0;
  v_IsSessionClientWIN BOOLEAN;
BEGIN

  if p_CodCompany IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'CodCompany' );  
  end if;
  
  v_ContextVarSession :=  LsSQL.GetContextValue(globals.c_CONVAR_BOSESSIONID);  

  v_SqlText := p_SqlText;
  v_Page2Extract := COALESCE(p_Page2Extract, 1);
  if (p_Page2Extract IS NULL) or (p_Page2Extract = 0) then
    v_Page2Extract := 1;
  end if;
          
  -- Calcolo il totale dei record estraibili
  --COUNT DEGLI OGGETTI ELIMINATO, NON REINSERIRE
  --Ripristinato solo per il client WIN oppure se richiestro esplicitamente dal 
  --WEB p_CalcRowCount
  --v_IsSessionClientWIN := LsSisession.IsSessionClientWIN(p_CodCompany, v_ContextVarSession, 0);
  if ( v_IsSessionClientWIN or p_CalcRowCount ) then 
    v_Paginazione := 0;
  else 
    v_Paginazione := 1;
  end if;   
    
  if p_Page2Extract = 0 then
    -- Se passo zero voglio un cursore vuoto
    p_RowRead    := 0;
    p_NumOfPages := 0;
    v_SqlText    := 'SELECT * FROM (SELECT ROWNUM PROGRESS, APP_1.* FROM ('||v_SqlText||') APP_1) WHERE 1=0';
  elsif p_Page2Extract <> -1 then
    -- Se indentifico una pagina voglio estrarre solo un massimo numero di record
    v_RowMax     := globals.LS_FUNC_SEARCH_MAX(p_CodCompany);
    p_RowRead    := LSNUMERIC.LSMIN(v_RowMax, p_RowCount);
    p_NumOfPages := LsNumeric.LsRoundUp(p_RowCount/v_RowMax, 2);   
    
    v_SqlText    := 'SELECT * FROM (SELECT ROWNUM PROGRESS, APP_1.* FROM ('||v_SqlText||') APP_1 WHERE ROWNUM <= ' || LsStr.IntToStr(((v_Page2Extract) * v_RowMax)+v_Paginazione)||') WHERE  PROGRESS > ' || LsStr.IntToStr(((v_Page2Extract - 1) * v_RowMax));
    if not (v_IsSessionClientWIN or p_CalcRowCount) then
      p_RowRead := v_RowMax;
      p_RowCount := v_RowMax;
      p_NumOfPages := -1; --p_Page2Extract + 1; Settaggio indispensabile per gestire la versione light della search.
    end if;      
  else
    -- Se non indentifico una pagina voglio estrarre tutti i record
    p_RowRead := 1;
    p_RowCount := v_RowMax;
    p_NumOfPages := 1;
    v_SqlText    := 'SELECT * FROM (SELECT ROWNUM PROGRESS, APP_1.* FROM ('||v_SqlText||') APP_1)';
  end if;
  
  RETURN v_SqlText;
  
END;


--Verifico se i record che sto per estrarre sono di numero maggiore a ciò che
--è indicato sulla TCCOMPANY o del valore massimo di default (Costante).
--Se sono maggiori estraggo solo i primi n prendendo il numero minore tra il
--limite della TCCOMPANY e il valore massimo costante.
--Restituisco, in quest'ultimo caso, al delphi oppure al WEB, solo se 
--richiesto esplicitamente, il valore dei numero di record
--estratti e il valore di record che la ricarca impostata ha cercato di estrarre
FUNCTION GetSqlSearchFunc(
  p_CodCompany      VARCHAR2,
  p_RowCount        IN OUT NOCOPY NUMBER,
  p_RowRead         IN OUT NOCOPY NUMBER,
  p_NumOfPages      IN OUT NOCOPY NUMBER,
  p_SqlText         VARCHAR2,
  p_PAGE2EXTRACT    NUMBER,
  p_CalcRowCount    BOOLEAN,
  p_ExcOrderInCount BOOLEAN := TRUE, --Esclude dall query per il conteggio dei record l'istruzione Order By
  p_SqlTextNotOrder VARCHAR2:= NULL
) RETURN VARCHAR2
AS
  v_SqlText      VARCHAR2(32767);
  v_GETTABLE      VARCHAR2(32767);
  v_RowMax       NUMBER(9) := 0;
  v_Page2Extract NUMBER(9) := 0;
  v_ContextVarSession VARCHAR2(32767);
  v_Paginazione       NUMBER(9) :=0;
  v_IsSessionClientWIN BOOLEAN;
BEGIN

  p_RowCount := GetRowCount(p_CodCompany, p_SqlText, p_CalcRowCount, p_ExcOrderInCount, p_SqlTextNotOrder);
  
  v_SqlText := GetSqlFunSearch(p_CodCompany, p_RowCount, p_RowRead, p_NumOfPages, p_SqlText, p_PAGE2EXTRACT, p_CalcRowCount);
  
  return v_SqlText; 
  
END;

FUNCTION GetSqlSearch(
  p_CodCompany      VARCHAR2,
  p_RowCount        IN OUT NOCOPY NUMBER,
  p_RowRead         IN OUT NOCOPY NUMBER,
  p_NumOfPages      IN OUT NOCOPY NUMBER,
  p_SqlText         VARCHAR2,
  p_PAGE2EXTRACT    NUMBER,
  p_ExcOrderInCount BOOLEAN := TRUE, --Esclude dall query per il conteggio dei record l'istruzione Order By
  p_SqlTextNotOrder VARCHAR2:= NULL
) RETURN VARCHAR2
AS
BEGIN

  RETURN GetSqlSearchFunc(
    p_CodCompany      ,
    p_RowCount        ,
    p_RowRead         ,
    p_NumOfPages      ,
    p_SqlText         ,
    p_PAGE2EXTRACT    ,
    FALSE             ,
    p_ExcOrderInCount ,
    p_SqlTextNotOrder);

END;


FUNCTION GetSqlSearch(
  p_CodCompany      VARCHAR2,
  p_RowCount        IN OUT NOCOPY NUMBER,
  p_RowRead         IN OUT NOCOPY NUMBER,
  p_NumOfPages      IN OUT NOCOPY NUMBER,
  p_SqlText         VARCHAR2,
  p_PAGE2EXTRACT    NUMBER,
  p_CalcRowCount    BOOLEAN,
  p_ExcOrderInCount BOOLEAN := TRUE, --Esclude dall query per il conteggio dei record l'istruzione Order By
  p_SqlTextNotOrder VARCHAR2:= NULL
) RETURN VARCHAR2
AS
BEGIN

  RETURN GetSqlSearchFunc(
    p_CodCompany      ,
    p_RowCount        ,
    p_RowRead         ,
    p_NumOfPages      ,
    p_SqlText         ,
    p_PAGE2EXTRACT    ,
    p_CalcRowCount    ,
    p_ExcOrderInCount ,
    p_SqlTextNotOrder );

END;

PROCEDURE LsErrorHelp(p_Msg VARCHAR2, p_ErrorCode PLS_INTEGER := 1, p_HelpContext PLS_INTEGER := 0)
AS
  v_MyException EXCEPTION;
  v_Msg VARCHAR2(32767);
  v_ErrorCode PLS_INTEGER;
  v_HelpContext PLS_INTEGER;
BEGIN
  -- elimina i valori NULL dai parametri
  v_Msg         := COALESCE( p_Msg, '' );
  v_ErrorCode   := COALESCE( p_ErrorCode, 0 );
  v_HelpContext := COALESCE( p_HelpContext, 0 );

  -- verifica i parametri
  if v_Msg IS NULL then
    v_Msg := LsGestErrors.ERRORE_SCONOSCIUTO;
  end if;

  v_ErrorCode := ABS(v_ErrorCode);
  
  if v_ErrorCode > 999 then
    v_ErrorCode := 999;
  end if;
              
  v_Msg := SUBSTR( v_Msg, 1, 2048 ); 
  
  RAISE_APPLICATION_ERROR( -20000-v_ErrorCode, v_Msg );
END;

-- Solleva un'eccezione con il messaggio specificato in p_Msg.
PROCEDURE LsError( p_Msg VARCHAR2, p_ErrorCode PLS_INTEGER := 1 )
AS
BEGIN
  LsErrorHelp( p_Msg, p_ErrorCode );
END;

-- Solleva un'eccezione con il messaggio specificato in p_Msg.
-- p_Msg può contenere %s %d ecc... e p_Args contiene, separati da |, i valori che sostituiranno i %s %d...
PROCEDURE LsErrorFmt( p_Msg VARCHAR2, p_Args VARCHAR2, p_ErrorCode PLS_INTEGER := 1 )
AS
BEGIN
  LsError( LsStr.LsFormat(p_Msg,p_Args), p_ErrorCode );
END;

FUNCTION CalcolaValoreConIva(    
--<HL>Questa funzione permette di calcolare il valore con IVA di un imponibile.</HL>
--<DESC>
-- Può essere utilizzata anche per le imbarcazioni che hanno canoni soggetti a due aliquote.
-- Esempio: CalcolaValoreConIva(1000,20)  restituisce 1200.0000
--</DESC>
--<PARAM>
  p_Imponibile      NUMBER, -- Imponibile su cui calcolare l'IVA
  p_AliquotaIva     FLOAT, -- Aliquota IVA
  p_PercImpsoggetta FLOAT := 100.00, -- Percentuale dell'imponibile su cui applicare p_AliquotaIva (Default 100%)
  p_AliquotaIva2    FLOAT := 0.00 -- Aliquota IVA da applicare sulla parte non soggetta a p_AliquotaIva (Default 0%)
--</PARAM>
) RETURN NUMBER
AS
  -- variabili
  v_Imponibile      NUMBER(18,4);
  v_AliquotaIva     FLOAT;
  v_PercImpsoggetta FLOAT;
  v_AliquotaIva2    FLOAT;
  v_TotaleIva       NUMBER(18,4) := 0.00;
BEGIN
  -- elimina i valori NULL dai parametri
  v_Imponibile      := COALESCE( p_Imponibile, 0 );
  v_AliquotaIva     := COALESCE( p_AliquotaIva, 0 );
  v_PercImpsoggetta := COALESCE( p_PercImpsoggetta, 0 );
  v_AliquotaIva2    := COALESCE( p_AliquotaIva2, 0 );
  
  v_TotaleIva := ((v_Imponibile*v_AliquotaIva)/100*(v_PercImpsoggetta/100))+
                 ((v_Imponibile*(100-v_PercImpsoggetta))/100*(v_AliquotaIva2/100));
                 
  RETURN v_Imponibile+v_TotaleIva;
END;

FUNCTION CF_Ctrl(
--<HL>Controlla se il codice fiscale è corretto.</HL>
--<DESC>
-- Controlla se il codice fiscale è corretto.
-- Ritorna TRUE se è corretto, FALSE altrimenti.
--</DESC>
--<PARAM>
  p_Codice VARCHAR2
--</PARAM>   
) RETURN BOOLEAN
AS
  -- variabili
  v_Codice VARCHAR2(50);
  v_Contatore PLS_INTEGER;
  v_Somma PLS_INTEGER;
  v_i PLS_INTEGER;
  v_Anno PLS_INTEGER;
  v_Mese PLS_INTEGER;
  v_Giorno PLS_INTEGER;
  v_C VARCHAR2(1);
  v_Checksum VARCHAR2(1);
  v_SubStr VARCHAR2(1);
  v_IsLeapYear BOOLEAN;
  v_LastDayOfMonth PLS_INTEGER;
  v_SubStrForConvert VARCHAR2(2);
  v_SubStr_Temp1 VARCHAR2(1);
  v_SubStr_Temp2 VARCHAR2(1);
  v_AA PLS_INTEGER;
  v_datamaggiorenne VARCHAR2(6);
  v_annostr VARCHAR2(2);
BEGIN
  -- elimina i valori NULL dai parametri
  v_Codice := COALESCE( p_Codice, '' );
  
  IF LsStr.Len(v_Codice) = 16 THEN -- la lunghezza del Codice Fiscale è 16
    -- verifica che i caratteri del Cognome e Nome siano lettere
    v_i := 1;
    WHILE v_i <= 6 
    LOOP
      v_SubStr := SUBSTR(v_Codice, v_I, 1);
      if not (UPPER(v_SubStr) >= 'A' AND UPPER(v_SubStr) <= 'Z') then
        RETURN FALSE;
      end if;
      v_i := v_i + 1;               
    END LOOP;
    -- verifica che i caratteri dell'Anno di Nascita siano cifre o caratteri per codici fiscali omocodici
    WHILE v_i <= 8 
    LOOP
      v_SubStr := SUBSTR(v_Codice, v_I, 1);
      if not v_SubStr in ('0','1','2','3','4','5','6','7','8','9','L','M','N','P','Q','R','S','T','U','V') then
         RETURN FALSE;
      end if;
      v_i := v_i + 1;         
    END LOOP;
    
    -- calcola l'Anno di Nascita
    IF SUBSTR(v_Codice, 7, 1) in ('0','1','2','3','4','5','6','7','8','9') AND 
       SUBSTR(v_Codice, 8, 1) in ('0','1','2','3','4','5','6','7','8','9') 
    THEN              
        v_ANNO := CAST(SUBSTR(v_Codice, 7, 2) AS PLS_INTEGER);
    ELSE
        CASE SUBSTR(v_Codice, 7, 1)
          WHEN 'L' THEN v_SubStr_Temp1 := '0';
          WHEN 'M' THEN v_SubStr_Temp1 := '1';
          WHEN 'N' THEN v_SubStr_Temp1 := '2';
          WHEN 'P' THEN v_SubStr_Temp1 := '3';
          WHEN 'Q' THEN v_SubStr_Temp1 := '4';
          WHEN 'R' THEN v_SubStr_Temp1 := '5';
          WHEN 'S' THEN v_SubStr_Temp1 := '6';
          WHEN 'T' THEN v_SubStr_Temp1 := '7';
          WHEN 'U' THEN v_SubStr_Temp1 := '8';
          WHEN 'V' THEN v_SubStr_Temp1 := '9';
          ELSE v_SubStr_Temp1 := SUBSTR(v_Codice, 7, 1);
        END CASE;
        CASE SUBSTR(v_Codice, 8, 1)
            WHEN 'L' THEN v_SubStr_Temp2 := '0';
            WHEN 'M' THEN v_SubStr_Temp2 := '1';
            WHEN 'N' THEN v_SubStr_Temp2 := '2';
            WHEN 'P' THEN v_SubStr_Temp2 := '3';
            WHEN 'Q' THEN v_SubStr_Temp2 := '4';
            WHEN 'R' THEN v_SubStr_Temp2 := '5';
            WHEN 'S' THEN v_SubStr_Temp2 := '6';
            WHEN 'T' THEN v_SubStr_Temp2 := '7';
            WHEN 'U' THEN v_SubStr_Temp2 := '8';
            WHEN 'V' THEN v_SubStr_Temp2 := '9';
            ELSE v_SubStr_Temp2 := SUBSTR(v_Codice, 8, 1);
        END CASE;
        v_SubStrForConvert := v_SubStr_Temp1 || v_SubStr_Temp2;
        v_ANNO := CAST(v_SubStrForConvert AS PLS_INTEGER);
    END    IF;                    
    
    -- calcola il numero del Mese di Nascita
    v_SubStr := SUBSTR(v_Codice, 9, 1);
    CASE 
      WHEN v_SubStr = 'A' THEN v_Mese := 1;
      WHEN v_SubStr = 'B' THEN v_Mese := 2;
      WHEN v_SubStr = 'C' THEN v_Mese := 3;
      WHEN v_SubStr = 'D' THEN v_Mese := 4;
      WHEN v_SubStr = 'E' THEN v_Mese := 5;
      WHEN v_SubStr = 'H' THEN v_Mese := 6;
      WHEN v_SubStr = 'L' THEN v_Mese := 7;
      WHEN v_SubStr = 'M' THEN v_Mese := 8;
      WHEN v_SubStr = 'P' THEN v_Mese := 9;
      WHEN v_SubStr = 'R' THEN v_Mese := 10;
      WHEN v_SubStr = 'S' THEN v_Mese := 11;
      WHEN v_SubStr = 'T' THEN v_Mese := 12;
      ELSE RETURN FALSE;
    END CASE;
    
    -- verifica che i caratteri del Giorno di Nascita siano cifre o caratteri per codici fiscali omocodici
    v_i := 10;
    WHILE v_i <=  11
    LOOP
      v_SubStr := SUBSTR(v_Codice, v_I, 1);
      if not v_SubStr in ('0','1','2','3','4','5','6','7','8','9','L','M','N','P','Q','R','S','T','U','V') then
        RETURN FALSE;
      end if;
      v_i := v_i + 1;                       
    END LOOP;
   
    -- calcola il numero del Giorno di Nascita
    IF  SUBSTR(v_Codice, 10, 1) in ('0','1','2','3','4','5','6','7','8','9') AND 
        SUBSTR(v_Codice, 11, 1) in ('0','1','2','3','4','5','6','7','8','9')               
    THEN
        v_Giorno := CAST( SUBSTR(v_Codice, 10, 2) AS PLS_INTEGER);
    ELSE
        CASE SUBSTR(v_Codice, 10, 1)
            WHEN 'L' THEN v_SubStr_Temp1 := '0';
            WHEN 'M' THEN v_SubStr_Temp1 := '1';
            WHEN 'N' THEN v_SubStr_Temp1 := '2';
            WHEN 'P' THEN v_SubStr_Temp1 := '3';
            WHEN 'Q' THEN v_SubStr_Temp1 := '4';
            WHEN 'R' THEN v_SubStr_Temp1 := '5';
            WHEN 'S' THEN v_SubStr_Temp1 := '6';
            WHEN 'T' THEN v_SubStr_Temp1 := '7';
            WHEN 'U' THEN v_SubStr_Temp1 := '8';
            WHEN 'V' THEN v_SubStr_Temp1 := '9';
            ELSE v_SubStr_Temp1 := SUBSTR(v_Codice, 10, 1);
        END CASE;
        CASE SUBSTR(v_Codice, 11, 1)
            WHEN 'L' THEN v_SubStr_Temp2 := '0';
            WHEN 'M' THEN v_SubStr_Temp2 := '1';
            WHEN 'N' THEN v_SubStr_Temp2 := '2';
            WHEN 'P' THEN v_SubStr_Temp2 := '3';
            WHEN 'Q' THEN v_SubStr_Temp2 := '4';
            WHEN 'R' THEN v_SubStr_Temp2 := '5';
            WHEN 'S' THEN v_SubStr_Temp2 := '6';
            WHEN 'T' THEN v_SubStr_Temp2 := '7';
            WHEN 'U' THEN v_SubStr_Temp2 := '8';
            WHEN 'V' THEN v_SubStr_Temp2 := '9';
            ELSE v_SubStr_Temp2 := SUBSTR(v_Codice, 11, 1);
        END CASE;
        v_SubStrForConvert := v_SubStr_Temp1 || v_SubStr_Temp2;
        v_Giorno := CAST( v_SubStrForConvert AS PLS_INTEGER );    
    END    IF;        
    
    if v_Giorno > 40 then
      v_Giorno := v_Giorno - 40;
    end if;
   
    -- verifica che il numero del Giorno sia congruente con il mese
    -- SE L'ANNO DEL CODICE FISCALE è MAGGIORE DELL'ANNO CORRENTE --> ALLORA SICURAMENTE L'ANNO è 19XX
    v_annostr := LsStr.PadL(v_Anno,2,'0' );
    
    IF v_Anno > TO_NUMBER(SUBSTR(LsTime.GETYEAR(SYSDATE), -2)) THEN 
      v_Anno := 1900 + v_Anno;
    ELSE 
      -- ALTRIMENTI CONTROLLO SE IL CF CORRISPONDE A UN MAGGIORENNE
      v_AA := v_Anno + 18;
   
      v_datamaggiorenne := LsStr.PadL(TO_CHAR(v_AA),2,'0' )|| LsStr.PadL(TO_CHAR(v_MESE),2,'0') || LsStr.PadL(TO_CHAR(v_GIORNO),2,'0'); 
   
      -- SE E' GIà MAGGIORENNE ALLORA L'ANNO è 20XX
      IF v_datamaggiorenne <= TO_CHAR(SYSDATE, 'YYMMDD') THEN
        v_Anno := 2000 + v_Anno;
      ELSE
        -- ALTRIMENTI L'ANNO è 19XX
        v_Anno := 1900 + v_Anno;
      END IF;
    END IF;  
    
    v_IsLeapYear := LsTime.IsLeapYear(v_Anno);
    v_LastDayOfMonth := LsTime.MonthDays(v_Mese, v_IsLeapYear);
    if (v_Giorno < 1) or (v_Giorno > v_LastDayOfMonth) then
      RETURN FALSE;
    end if;
    
    -- verifica che il primo carattere del Paese di Nascita sia una lettera
    v_SubStr := SUBSTR(v_Codice, 12, 1);
    if not (UPPER(v_SubStr) >= 'A' AND UPPER(v_SubStr) <= 'Z') then
      RETURN FALSE;
    end if;
      
--lsDebug.DEBUGTABLEINSERT('v_Codice',v_Codice,'globals');  
    
    -- verifica che gli altri caratteri del Paese di Nascita siano cifre o caratteri per codici fiscali omocodici
    v_i := 13;
    WHILE v_i <= 15 
    LOOP
      v_SubStr := SUBSTR(v_Codice, v_I, 1);
      if not v_SubStr in ('0','1','2','3','4','5','6','7','8','9','L','M','N','P','Q','R','S','T','U','V') then
        RETURN FALSE;
      end if;
      v_i := v_i + 1;                       
    END LOOP;
    
    -- verifica che il carattere di CheckSum sia una lettera
    v_SubStr := SUBSTR(v_Codice, 16, 1);
    if not (UPPER(v_SubStr) >= 'A' AND UPPER(v_SubStr) <= 'Z') then
      RETURN FALSE;
    end if;
   
    -- calcola la CheckSum
    v_Somma := 0;
    -- scorre i primi 15 caratteri del Codice Fiscale
    v_Contatore := 1;
    WHILE v_Contatore <= 15 
    LOOP
      v_C :=  UPPER(SUBSTR(v_Codice, v_Contatore, 1));
      CASE 
          WHEN v_C IN ('A', '0') THEN v_I := 1;
          WHEN v_C IN ('B', '1') THEN v_I := 0;
          WHEN v_C IN ('C', '2') THEN v_I := 5;
          WHEN v_C IN ('D', '3') THEN v_I := 7;
          WHEN v_C IN ('E', '4') THEN v_I := 9;
          WHEN v_C IN ('F', '5') THEN v_I := 13;
          WHEN v_C IN ('G', '6') THEN v_I := 15;
          WHEN v_C IN ('H', '7') THEN v_I := 17;
          WHEN v_C IN ('I', '8') THEN v_I := 19;
          WHEN v_C IN ('J', '9') THEN v_I := 21;
          WHEN v_C IN ('K'     ) THEN v_I := 2;
          WHEN v_C IN ('L'     ) THEN v_I := 4;
          WHEN v_C IN ('M'     ) THEN v_I := 18;
          WHEN v_C IN ('N'     ) THEN v_I := 20;
          WHEN v_C IN ('O'     ) THEN v_I := 11;
          WHEN v_C IN ('P'     ) THEN v_I := 3;
          WHEN v_C IN ('Q'     ) THEN v_I := 6;
          WHEN v_C IN ('R'     ) THEN v_I := 8;
          WHEN v_C IN ('S'     ) THEN v_I := 12;
          WHEN v_C IN ('T'     ) THEN v_I := 14;
          WHEN v_C IN ('U'     ) THEN v_I := 16;
          WHEN v_C IN ('V'     ) THEN v_I := 10;
          WHEN v_C IN ('W'     ) THEN v_I := 22;
          WHEN v_C IN ('X'     ) THEN v_I := 25;
          WHEN v_C IN ('Y'     ) THEN v_I := 24;
          WHEN v_C IN ('Z'     ) THEN v_I := 23;     
          ELSE RETURN FALSE; -- valore corrispondente al carattere del Codice Fiscale non trovato
      END CASE;
      
      v_Somma := v_Somma + v_I;
     
      -- passa al carattere successivo
      v_Contatore := v_Contatore + 1;
      
      if v_Contatore <= 15 then
        v_C :=  SUBSTR(v_Codice, v_Contatore, 1);
        if UPPER(v_C) >= 'A' AND UPPER(v_C) <= 'Z' then
          v_Somma := v_Somma + LsStr.LetteraToNumero(v_C) - 1;
        elsif v_C in ('0','1','2','3','4','5','6','7','8','9') then
          v_Somma := v_Somma + CAST(v_C AS PLS_INTEGER);
        else -- non è né una lettera né una cifra
          RETURN FALSE;
        end if;
      end if;
      -- passa al carattere successivo
      v_Contatore := v_Contatore + 1;
    END LOOP;
    
    -- calcola il carattere di checksum
    v_CheckSum := LsStr.NumeroToLettera( MOD(v_Somma,26) + 1);
    
    -- confronta la checksum con l'ultimo carattere del Codice Fiscale
    v_SubStr := SUBSTR(v_Codice, 16, 1);
    if LsStr.IsDifferent( Upper(v_CheckSum), Upper(v_SubStr) ) then
      RETURN FALSE;
    end if;
     
    RETURN TRUE; -- Codice Fiscale corretto
  END IF;
  
  RETURN FALSE;
END;

FUNCTION CF_Ctrl_Number(
--<HL>Controlla se il codice fiscale è corretto.</HL>
--<DESC>
-- Controlla se il codice fiscale è corretto.
-- Ritorna 1 se è corretto, 0 altrimenti.
--</DESC>
--<PARAM>
  p_Codice VARCHAR2
--</PARAM>   
) RETURN NUMBER
AS
BEGIN
  IF globals.CF_CTRL(p_Codice) THEN
    RETURN 1;
  ELSE 
    RETURN 0;
  END IF;
END;

FUNCTION IVA_Ctrl(
--<HL>Effettua il controllo del Codice IVA.</HL>
--<DESC>
-- Effettua il controllo del Codice IVA.
-- Ritorna TRUE se è corretto, FALSE altrimenti.
--</DESC>
--<PARAM>
  p_IVA VARCHAR2,
  p_IsItalia BOOLEAN := TRUE,
  p_IsCodiceFiscale BOOLEAN := FALSE
--</PARAM>   
) RETURN BOOLEAN
AS
   -- costanti
   c_MIN_UFFICIO_IVA CONSTANT PLS_INTEGER := 1;
   c_MAX_UFFICIO_IVA CONSTANT PLS_INTEGER := 200;
   c_UFFICIO_IVA_NON_RESIDENTI  CONSTANT PLS_INTEGER := 999;
   c_UFFICIO_IVA_CONTRIB_MINIMI CONSTANT PLS_INTEGER := 888;

   -- variabili
   v_IVA VARCHAR2(50);
   v_IsItalia BOOLEAN;
   v_IsCodiceFiscale BOOLEAN;
   v_c PLS_INTEGER;
   v_j PLS_INTEGER; 
   v_i PLS_INTEGER;
   v_u PLS_INTEGER;
BEGIN
   -- elimina i valori NULL dai parametri
   v_IVA      := COALESCE( p_IVA, '' );
   v_IsItalia := COALESCE( p_IsItalia, FALSE );
   v_IsCodiceFiscale := COALESCE( p_IsCodiceFiscale, FALSE );

   if not v_IsItalia then  
     RETURN FALSE;
   end if;
     
   if LsStr.Len(v_IVA) <> 11 then 
     RETURN FALSE;
   end if;
   
   -- l'Agenzia delle Entrate ha confermato che NON POSSONO ESISTERE partite IVA inizianti per 8 e per 9 in quanto
   -- i codici di 11 caratteri inizianti per 8 e 9 sono CODICI FISCALI solitamente rilasciati ad enti pubblici e ONLUS (che non hanno partita IVA).
   if not v_IsCodiceFiscale then
     if SUBSTR(v_IVA,1,1) in ('8','9') then
       RETURN FALSE;
     end if;
   end if;
   
   v_i := 1;  
   WHILE v_i <= LsStr.Len(v_IVA) 
   LOOP
     if not ( SUBSTR(v_IVA,v_i,1) in ('0','1','2','3','4','5','6','7','8','9') ) then 
       RETURN FALSE;
     end if;
     v_i := v_i + 1;
   END LOOP;
    
   v_j := 0;
   v_c := 0;
   
   v_i := 1;
   WHILE v_i <= 10 
   LOOP
      if MOD(v_i,2) <> 0 then -- v_i è dispari (Odd)
        v_j := v_j + ASCII( SUBSTR(v_IVA,v_i,1) ) - 48;
      else 
        v_c := 2 * ( ASCII( SUBSTR(v_IVA,v_i,1) ) - 48);
        v_j := v_j + LsNumeric.Div(v_c,10) + MOD(v_c,10);
      end if;
      v_i := v_i + 1;
   END LOOP;
   
   v_c := MOD(v_j,10);
   if v_c <> 0 then
     v_c := 10 - v_c;
   end if;
   
   -- Lorenzo: calcola e verifica il numero di ufficio IVA che ha rilasciato la Partita IVA
   v_u := CAST( SUBSTR(v_IVA,8,3) AS PLS_INTEGER );
   if (v_u < c_MIN_UFFICIO_IVA) or (v_u > c_MAX_UFFICIO_IVA) and (v_u <> c_UFFICIO_IVA_NON_RESIDENTI) and (v_u <> c_UFFICIO_IVA_CONTRIB_MINIMI) then 
     RETURN FALSE;
   end if;
     
   if SUBSTR(v_IVA,11,1) = CHR(v_c + 48) then
     RETURN TRUE;
   end if;
     
   RETURN FALSE;
END;


FUNCTION GetDataNascFromCFisc(
--<HL>Specificato un codice fiscale ne ritorna la data di nascita contenuta.</HL>
--<DESC>
-- Specificato un codice fiscale ne ritorna la data di nascita contenuta.
-- Ritorna NULL se non riesce a calcolarla.
--</DESC>
--<PARAM>
  p_CFISC VARCHAR2 -- Codice Fiscale
--</PARAM>   
) RETURN DATE
AS
    -- variabili
    v_CFISC VARCHAR2(50); -- Codice Fiscale
    v_ANNO VARCHAR2(4);
    v_AA   number(9);
    v_datamaggiorenne VARCHAR2(6);
    v_MESE VARCHAR2(2);
    v_GIORNO VARCHAR2(2);
    v_GIORNO_INT PLS_INTEGER;
BEGIN
    -- elimina i valori NULL dai parametri
	v_CFISC := COALESCE( p_CFISC, '' );
	
	IF LsStr.Len(v_CFISC) <> 16 THEN
	  RETURN NULL;
	END IF;
  
  v_MESE := SUBSTR(v_CFISC,9,1);
	
	IF v_MESE='A' THEN
	  v_MESE := '01';
	ELSIF v_MESE='B' THEN
	  v_MESE := '02';
	ELSIF v_MESE='C' THEN
	  v_MESE := '03';
	ELSIF v_MESE='D' THEN
	  v_MESE := '04';
	ELSIF v_MESE='E' THEN
	  v_MESE := '05';
	ELSIF v_MESE='H' THEN
	  v_MESE := '06';
	ELSIF v_MESE='L' THEN
	  v_MESE := '07';
	ELSIF v_MESE='M' THEN
	  v_MESE := '08';
	ELSIF v_MESE='P' THEN
	  v_MESE := '09';
	ELSIF v_MESE='R' THEN
	  v_MESE := '10';
	ELSIF v_MESE='S' THEN
	  v_MESE := '11';
	ELSIF v_MESE='T' THEN
	  v_MESE := '12';
    ELSE 
      RETURN NULL;
    END IF;
      
    v_GIORNO := SUBSTR(v_CFISC,10,2);
    v_GIORNO_INT := CAST(v_GIORNO AS PLS_INTEGER);
    
    IF v_GIORNO_INT > 40 THEN
		v_GIORNO_INT := v_GIORNO_INT - 40;
	END IF;
		
	IF v_GIORNO_INT < 10 THEN
	  v_GIORNO := '0'||CAST(v_GIORNO_INT AS VARCHAR2);
	ELSE 
	  v_GIORNO := CAST(v_GIORNO_INT AS VARCHAR2);
	END IF;
    
  -- SE L'ANNO DEL CODICE FISCALE è MAGGIORE DELL'ANNO CORRENTE --> ALLORA SICURAMENTE L'ANNO è 19XX
  IF SUBSTR(v_CFISC,7,2) > SUBSTR(LsTime.GETYEAR(SYSDATE), -2) THEN
    v_ANNO := '19'||SUBSTR(v_CFISC,7,2);
  ELSE   
    -- ALTRIMENTI CONTROLLO SE IL CF CORRISPONDE A UN MAGGIORENNE
    v_AA := TO_NUMBER(SUBSTR(v_CFISC,7,2)) + 18;
  
    v_datamaggiorenne := LsStr.PadL(TO_CHAR(v_AA),2,'0' )|| v_MESE || v_GIORNO; 
   
    -- SE E' GIà MAGGIORENNE ALLORA L'ANNO è 20XX
    IF v_datamaggiorenne <= TO_CHAR(SYSDATE, 'YYMMDD') THEN
      v_Anno := '20'||SUBSTR(v_CFISC,7,2);
    ELSE
      -- ALTRIMENTI L'ANNO è 19XX
      v_ANNO := '19'||SUBSTR(v_CFISC,7,2);
	  END IF;
  END IF;  
  
    RETURN TO_DATE( v_ANNO||v_MESE||v_GIORNO, 'YYYYMMDD' );
END;

FUNCTION BooleanToInt( p_B BOOLEAN )
-- Ritorna 0 se p_B è NULL o False, 1 se p_B è True.
RETURN PLS_INTEGER
AS
BEGIN
  IF p_B IS NULL THEN
    RETURN 0;
  END IF;
  
  IF p_B THEN
    RETURN 1;
  ELSE
    RETURN 0;
  END IF;
END; 

FUNCTION IntToBoolean( p_I PLS_INTEGER ) 
-- Ritorna False se I è NULL o 0, True altrimenti.
RETURN BOOLEAN
AS
BEGIN
  if p_I IS NULL THEN
    RETURN FALSE;
  END IF;

  RETURN p_I <> 0;
END;

FUNCTION VarArrayOf(
  p_ArrayParameters t_ArrayParameters
) RETURN VARCHAR2
AS
  v_Result VARCHAR2(32767);
BEGIN

  v_Result := p_ArrayParameters(0);
    
  FOR i IN p_ArrayParameters.FIRST+1 .. p_ArrayParameters.LAST
  LOOP 
  
    IF LsStr.IsDifferent( p_ArrayParameters(i), globals.c_DUMMY_PARAMETER ) THEN
      v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_ArrayParameters(i);
    END IF;
      
  END LOOP;
  
  RETURN v_Result;
    
END;

-- Ritorna una stringa concatenando i parametri specificati (se non sono globals.c_DUMMY_PARAMETER) e separandoli con il carattere globals.c_PARAMETERS_SEPARATOR.
-- La stringa ritornata può essere usata come parametro per le funzioni LsStr.Format e globals.LsErrorFmt   
FUNCTION VarArrayOf(
  p_Param1  VARCHAR2,
  p_Param2  VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param3  VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param4  VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param5  VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param6  VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param7  VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param8  VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param9  VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param10 VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param11 VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param12 VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param13 VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param14 VARCHAR2 := globals.c_DUMMY_PARAMETER,
  p_Param15 VARCHAR2 := globals.c_DUMMY_PARAMETER
) RETURN VARCHAR2
AS
  -- variabili
  v_Result VARCHAR2(32767);
BEGIN
  -- assegna il primo parametro al risultato
  v_Result := p_Param1;

  -- appende eventualmente i successivi parametri  
  if LsStr.IsDifferent( p_Param2, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param2;
  end if;
  
  if LsStr.IsDifferent( p_Param3, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param3;
  end if;
  
  if LsStr.IsDifferent( p_Param4, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param4;
  end if;
  
  if LsStr.IsDifferent( p_Param5, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param5;
  end if;
  
  if LsStr.IsDifferent( p_Param6, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param6;
  end if;
  
  if LsStr.IsDifferent( p_Param7, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param7;
  end if;
  
  if LsStr.IsDifferent( p_Param8, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param8;
  end if;
  
  if LsStr.IsDifferent( p_Param9, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param9;
  end if;
  
  if LsStr.IsDifferent( p_Param10, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param10;
  end if;
  
  if LsStr.IsDifferent( p_Param11, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param11;
  end if;
  if LsStr.IsDifferent( p_Param12, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param12;
  end if;
  if LsStr.IsDifferent( p_Param13, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param13;
  end if;
  if LsStr.IsDifferent( p_Param14, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param14;
  end if;
  if LsStr.IsDifferent( p_Param15, globals.c_DUMMY_PARAMETER ) then
    v_Result := v_Result||globals.c_PARAMETERS_SEPARATOR||p_Param15;
  end if;

  RETURN v_Result;
END;

-- Ritorna il successivo Codice Progressivo relativo alla società p_CodCompany e al p_NomeTabella specificato (che puo' anche non esistere).
-- Il nuovo Codice Progressivo viene calcolato e aggiornato nella tabella SICODICI.
-- Se nella tabella SICODICI il p_NomeTabella per la società p_CodCompany ancora non esiste, viene creato il record relativo al p_NomeTabella e viene ritornato 1.
-- NOTA: viene usata una transazione autonoma.
-- ATTENZIONE: se la tabella SICODICI non esiste, viene sollevata un'eccezione.
FUNCTION GetProgressivoFromSICODICI(
  p_CodCompany   VARCHAR2,
  p_NomeTabella  VARCHAR2
) RETURN PLS_INTEGER
AS
  PRAGMA AUTONOMOUS_TRANSACTION; -- questa Stored Procedure effettuerà le modifiche al database in una sua transazione autonoma

  -- costanti
  c_TENTATIVI_PER_PROGRESSIVO CONSTANT PLS_INTEGER := 10;
  
  -- variabili
  v_CodCompany   VARCHAR2(10);
  v_NomeTabella  VARCHAR2(30);
  v_LastCodice   PLS_INTEGER;
  v_NewCodice    PLS_INTEGER;
  v_I PLS_INTEGER;
  v_SQLText VARCHAR2(32767); 
BEGIN
  -- elimina i valori NULL dai parametri
  v_CodCompany  := COALESCE( p_CodCompany, '' );
  v_NomeTabella := COALESCE( p_NomeTabella, '' );

  -- verifica i parametri
  if v_CodCompany IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'CodCompany' );
  end if;

  if v_NomeTabella IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'NomeTabella' );
  end if;

  BEGIN
    -- legge il vecchio codice
    BEGIN
      v_SQLText := 'SELECT COALESCE(LASTCODICE,0) FROM SICODICI WHERE CDCMPANY = :v_CodCompany AND TABELLA = :v_NomeTabella';
      EXECUTE IMMEDIATE v_SQLText INTO v_LastCodice USING v_CodCompany, v_NomeTabella;  
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        -- inserisce nella tabella codici un nuovo record con il contatore a 1
        v_LastCodice := 1;
        
        v_SQLText := 'INSERT INTO SICODICI ( CDCMPANY, TABELLA, LASTCODICE ) VALUES ( :v_CodCompany, :v_NomeTabella, :v_LastCodice )';
        EXECUTE IMMEDIATE v_SQLText USING v_CodCompany, v_NomeTabella, v_LastCodice;
        
        if SQL%ROWCOUNT <> 1 then
          globals.LsError( LsGestErrors.ERR_CODICE_UNIVOCO ); 
        end if;
        
        COMMIT; -- conferma solo le modifiche effettuate da questa Stored Procedure
        
        RETURN v_LastCodice;
    END;

    FOR v_I IN 1 .. c_TENTATIVI_PER_PROGRESSIVO 
    LOOP 
      -- calcola il nuovo codice
      v_LastCodice := v_LastCodice + 1;
  
      -- prova a fare l'UPDATE usando nella WHERE il precedente codice
      v_SQLText := 'UPDATE SICODICI SET LASTCODICE = :v_LastCodice WHERE CDCMPANY = :v_CodCompany AND TABELLA = :v_NomeTabella AND LASTCODICE = :v_LastCodice - 1';
      EXECUTE IMMEDIATE v_SQLText USING v_LastCodice, v_CodCompany, v_NomeTabella, v_LastCodice;
  
      if SQL%ROWCOUNT = 1 then -- è riuscito ad aggiornare il nuovo codice
        COMMIT; -- conferma solo le modifiche effettuate da questa Stored Procedure
        RETURN v_LastCodice;
      end if;
  
      -- non è riuscito ad aggiornare il nuovo codice, riprova
    END LOOP;

    globals.LsError( LsGestErrors.ERRORE_GETCODICE ); 
  
  EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK; -- annulla solo le modifiche effettuate da questa Stored Procedure
      globals.LsErrorTrace(SQLERRM);
  END;

END;

-- Ritorna il successivo Codice Progressivo relativo al p_NomeTabella specificato (che puo' anche non esistere).
-- Il nuovo Codice Progressivo viene calcolato e aggiornato nella tabella SICODICIGEN.
-- Se nella tabella SICODICIGEN il p_NomeTabella ancora non esiste, viene creato il record relativo al p_NomeTabella e viene ritornato 1.
-- NOTA: viene usata una transazione autonoma.
-- ATTENZIONE: se la tabella SICODICIGEN non esiste, viene sollevata un'eccezione.
FUNCTION GetProgressivoFromSICODICIGEN(
  p_NomeTabella  VARCHAR2
) RETURN PLS_INTEGER
AS
  PRAGMA AUTONOMOUS_TRANSACTION; -- questa Stored Procedure effettuerà le modifiche al database in una sua transazione autonoma

  -- costanti
  c_TENTATIVI_PER_PROGRESSIVO CONSTANT PLS_INTEGER := 10;
  
  -- variabili
  v_NomeTabella  VARCHAR2(30);
  v_LastCodice   PLS_INTEGER;
  v_NewCodice    PLS_INTEGER;
  v_I PLS_INTEGER;
  v_SQLText VARCHAR2(32767); 
BEGIN
  -- elimina i valori NULL dai parametri
  v_NomeTabella := COALESCE( p_NomeTabella, '' );

  if v_NomeTabella IS NULL then
    globals.LsErrorFmt( LsGestErrors.PARAMETRO_NON_CORRETTO, 'NomeTabella' );
  end if;

  BEGIN
    -- legge il vecchio codice
    BEGIN
      v_SQLText := 'SELECT COALESCE(LASTCODICE,0) FROM SICODICIGEN WHERE TABELLA = :v_NomeTabella';
      EXECUTE IMMEDIATE v_SQLText INTO v_LastCodice USING v_NomeTabella;  
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        -- inserisce nella tabella codici un nuovo record con il contatore a 1
        v_LastCodice := 1;
        
        v_SQLText := 'INSERT INTO SICODICIGEN ( TABELLA, LASTCODICE ) VALUES ( :v_NomeTabella, :v_LastCodice )';
        EXECUTE IMMEDIATE v_SQLText USING v_NomeTabella, v_LastCodice;
        
        if SQL%ROWCOUNT <> 1 then
          globals.LsError( LsGestErrors.ERR_CODICE_UNIVOCO ); 
        end if;
        
        COMMIT; -- conferma solo le modifiche effettuate da questa Stored Procedure
        
        RETURN v_LastCodice;
    END;

    FOR v_I IN 1 .. c_TENTATIVI_PER_PROGRESSIVO 
    LOOP 
      -- calcola il nuovo codice
      v_LastCodice := v_LastCodice + 1;
  
      -- prova a fare l'UPDATE usando nella WHERE il precedente codice
      v_SQLText := 'UPDATE SICODICIGEN SET LASTCODICE = :v_LastCodice WHERE TABELLA = :v_NomeTabella AND LASTCODICE = :v_LastCodice - 1';
      EXECUTE IMMEDIATE v_SQLText USING v_LastCodice, v_NomeTabella, v_LastCodice;
  
      if SQL%ROWCOUNT = 1 then -- è riuscito ad aggiornare il nuovo codice
        COMMIT; -- conferma solo le modifiche effettuate da questa Stored Procedure
        RETURN v_LastCodice;
      end if;
  
      -- non è riuscito ad aggiornare il nuovo codice, riprova
    END LOOP;

    globals.LsError( LsGestErrors.ERRORE_GETCODICE ); 
  
  EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK; -- annulla solo le modifiche effettuate da questa Stored Procedure
      globals.LsErrorTrace(SQLERRM);
  END;

END;

FUNCTION Decode_CF(
  --decodifica il Codice Fiscale; ritorna True se la decodifica va a buon fine, False altrimenti
  p_CF     VARCHAR2, 
  p_Data   OUT NOCOPY DATE, 
  p_Donna  OUT NOCOPY BOOLEAN, 
  p_CodCit OUT NOCOPY VARCHAR2
) RETURN BOOLEAN
AS
  v_CF VARCHAR2(16);
  v_GG NUMBER(9);
  v_MM NUMBER(9);
  v_AA NUMBER(9);
  v_ANNO VARCHAR2(4);
  v_datamaggiorenne VARCHAR2(6);  
BEGIN
  v_CF := COALESCE(p_CF, '');

  -- controlli base
  if (LsStr.LEN(v_CF) <> 16) or (not globals.CF_CTRL(v_CF)) then
    RETURN False;
  end if;
  
  V_GG := LsStr.StrToInt(CharOmoCodiciToValue(LsStr.COPY(v_CF,10,1))||CharOmoCodiciToValue(LsStr.COPY(v_CF,11,1)));
  
  -- calcola sesso
  if v_GG > 40 then
    p_Donna := True;
    v_GG := v_GG - 40;
  else
    p_Donna := False;
  end if;  
  
  v_MM := DecodeMese_CF(LsStr.Copy(v_CF,9,1));
  v_AA := LsStr.StrToInt( CharOmoCodiciToValue(LsStr.Copy(v_CF,7,1))||CharOmoCodiciToValue(LsStr.Copy(v_CF,8,1)) );
  -- decodifica la data
  -- SE L'ANNO DEL CODICE FISCALE è MAGGIORE DELL'ANNO CORRENTE --> ALLORA SICURAMENTE L'ANNO è 19XX
  IF SUBSTR(v_CF,7,2) > SUBSTR(LsTime.GETYEAR(SYSDATE), -2) THEN
    v_ANNO := '19'||SUBSTR(v_CF,7,2);
  ELSE   
    -- ALTRIMENTI CONTROLLO SE IL CF CORRISPONDE A UN MAGGIORENNE
    v_AA := TO_NUMBER(SUBSTR(v_CF,7,2)) + 18;
  
    v_datamaggiorenne := LsStr.PadL(TO_CHAR(v_AA),2,'0' )|| LsStr.PadL(TO_CHAR(v_MM),2,'0') || LsStr.PadL(TO_CHAR(v_GG),2,'0'); 
   
    -- SE E' GIà MAGGIORENNE ALLORA L'ANNO è 20XX
    IF v_datamaggiorenne <= TO_CHAR(SYSDATE, 'YYMMDD') THEN
      v_Anno := '20'||SUBSTR(v_CF,7,2);
    ELSE
      -- ALTRIMENTI L'ANNO è 19XX
      v_ANNO := '19'||SUBSTR(v_CF,7,2);
    END IF;
  END IF;  
  
  p_Data := LsTime.ENCODEDATE(to_number(v_ANNO),v_MM,v_GG);     
 
  -- codice di 4 caratteri del Comune di Nascita incastonato nel Codice Fiscale
  p_CodCit := LsStr.Copy(v_CF,12,1)||CharOmoCodiciToValue(LsStr.Copy(v_CF,13,1))||CharOmoCodiciToValue(LsStr.COpy(v_CF,14,1))||CharOmoCodiciToValue(LsStr.Copy(v_CF,15,1));
  -- decodifica effettuata
  RETURN True;
END;

FUNCTION CognomeForCF(P_COGNOME VARCHAR2) RETURN VARCHAR2
  IS
    i NUMBER;
    y NUMBER;
    z NUMBER;
    n_ascii NUMBER;
    v_cara VARCHAR2(1);
    v_vocali VARCHAR2(3000);
    v_consonanti VARCHAR2(3);
    v_cod_fis VARCHAR2(3000);
  BEGIN
      i := 0;
      y := 0; 
      z := 0;
     
      while i < length(P_COGNOME) and y <> 3 loop
        v_cara  := substr(upper(P_COGNOME), i+1, 1); -- estraggo il carattere
        n_ascii := ascii(v_cara); -- estraggo il codice ascii   
        -- controllo se il codice ascii appartiene al range di valori accettati compreso fra 65 e 90
        if(n_ascii > 64 and n_ascii < 91) then
        -- controllo se il codice ascii è una vocale
          if(n_ascii = 65 or n_ascii = 69 or n_ascii = 73 or n_ascii = 79 or n_ascii = 85 ) then
           -- if(trova_doppioni(v_vocali,v_cara) = TRUE) then
                v_vocali:=v_vocali||v_cara;
          --   end if;
          else
           --  if(trova_doppioni(v_consonanti,v_cara) = TRUE) then
              v_consonanti:=v_consonanti||v_cara;
              y := y + 1;
           --   end if;
          end if;  
        end if;
        i := i + 1;
       end loop;
        --assegno il valore del codice fiscale
        v_cod_fis := substr(v_consonanti|| v_vocali, 1, 3);
        while length(v_cod_fis) < 3  loop 
          v_cod_fis := v_cod_fis || 'X';
        end loop;
        --dbms_output.put_line('Codice Fiscale:' || v_cod_fis); 
        return(v_cod_fis);
    EXCEPTION
      WHEN OTHERS THEN      
        RETURN('');
   END ;

  FUNCTION NomeForCF(P_NOME VARCHAR2) RETURN VARCHAR2
  IS
    i NUMBER;
    y NUMBER;
    n_ascii NUMBER;
    v_cara VARCHAR2(1);
    v_vocali VARCHAR2(3000);
    v_consonanti VARCHAR2(4);
    v_cod_fis VARCHAR2(3000);
  BEGIN
      i := 0;
      y := 0; 
     
      while i < length(P_NOME) and y <> 4 loop
        v_cara  := substr(upper(P_NOME), i+1, 1); -- estraggo il carattere
        n_ascii := ascii(v_cara); -- estraggo il codice ascii   
        -- controllo se il codice ascii appartiene al range di valori accettati compreso fra 65 e 90
        if(n_ascii > 64 and n_ascii < 91) then
        -- controllo se il codice ascii è una vocale
          if(n_ascii = 65 or n_ascii = 69 or n_ascii = 73 or n_ascii = 79 or n_ascii = 85 ) then
           --  if(trova_doppioni(v_vocali,v_cara) = TRUE) then 
              v_vocali:=v_vocali||v_cara;
           --  end if; 
          else
          --  if(trova_doppioni(v_consonanti,v_cara) = TRUE) then
              v_consonanti:=v_consonanti||v_cara;
              y := y + 1;
           --  end if; 
          end if;  
        end if;
        i := i + 1;
       end loop;
        --assegno il valore del codice fiscale
       -- dbms_output.put_line('Codice Fiscale:' || length(v_consonanti)); 
        IF( length(v_consonanti)>3 ) THEN
          v_cod_fis  := substr(upper(v_consonanti), 1, 1);
          v_cod_fis  := v_cod_fis || substr(upper(v_consonanti), 3, 2);
        ELSE  
            v_cod_fis := substr(v_consonanti|| v_vocali, 1, 3);
              while length(v_cod_fis) < 3  loop 
                v_cod_fis := v_cod_fis || 'X';
              end loop;
         END IF;      
        --dbms_output.put_line('Codice Fiscale:' || v_cod_fis); 
        return(v_cod_fis);
      EXCEPTION
      WHEN OTHERS THEN      
        RETURN(''); 
     END;


FUNCTION CheckNomeCognomeCF(
  -- ritorna 0 se i primi 6 caratteri del codice fiscle non sono validi
  P_CFISC VARCHAR2,
  P_NOME VARCHAR2, 
  P_COGNOME VARCHAR2) RETURN BOOLEAN
AS
  v_Result NUMBER(9);
  v_NomeCF VARCHAR2(10); 
  v_CognomeCF VARCHAR2(10);
  v_NomeCognomeCF VARCHAR2(10);
BEGIN
  v_NomeCF := NomeForCF(UPPER(P_NOME));
  v_CognomeCF := CognomeForCF(UPPER(P_COGNOME));
  v_NomeCognomeCF :=  v_CognomeCF || v_NomeCF;
  
  IF v_NomeCF = '' or v_CognomeCF = '' or P_CFISC = '' THEN
    RETURN false;
  END IF;  
  
  IF LSSTR.LEFTSTRING(UPPER(P_CFISC), 6) = v_NomeCognomeCF THEN 
    RETURN true;
  END IF;  
  
  RETURN false; 
END;

FUNCTION CharOmoCodiciToValue(
  -- ritorna il valore numerico del carattere C prelevato da un Codice Fiscale omocodice;
  -- ritorna il carattere C 
  p_C VARCHAR2
) RETURN VARCHAR2
AS
  v_Result VARCHAR2(1);
BEGIN
  CASE
    WHEN UPPER(p_C) = 'L' THEN v_Result := '0';
    WHEN UPPER(p_C) = 'M' THEN v_Result := '1';
    WHEN UPPER(p_C) = 'N' THEN v_Result := '2';
    WHEN UPPER(p_C) = 'P' THEN v_Result := '3';
    WHEN UPPER(p_C) = 'Q' THEN v_Result := '4';
    WHEN UPPER(p_C) = 'R' THEN v_Result := '5';
    WHEN UPPER(p_C) = 'S' THEN v_Result := '6';
    WHEN UPPER(p_C) = 'T' THEN v_Result := '7';
    WHEN UPPER(p_C) = 'U' THEN v_Result := '8';
    WHEN UPPER(p_C) = 'V' THEN v_Result := '9';
    ELSE v_Result := p_C;
  END CASE;
  
  RETURN v_Result;
END;

FUNCTION DecodeMese_CF(
  -- ritorna il numero del mese corrispondente al carattere passato nel parametro M prelevato da un Codice Fiscale;
  -- ritorna 0 se non trova una corrispondenza
  p_M VARCHAR2
) RETURN NUMBER
AS
  v_Result NUMBER(9);
BEGIN
  CASE
    WHEN UPPER(p_M) = 'A' THEN v_Result := 1;
    WHEN UPPER(p_M) = 'B' THEN v_Result := 2;
    WHEN UPPER(p_M) = 'C' THEN v_Result := 3;
    WHEN UPPER(p_M) = 'D' THEN v_Result := 4;
    WHEN UPPER(p_M) = 'E' THEN v_Result := 5;
    WHEN UPPER(p_M) = 'H' THEN v_Result := 6;
    WHEN UPPER(p_M) = 'L' THEN v_Result := 7;
    WHEN UPPER(p_M) = 'M' THEN v_Result := 8;
    WHEN UPPER(p_M) = 'P' THEN v_Result := 9;
    WHEN UPPER(p_M) = 'R' THEN v_Result := 10;
    WHEN UPPER(p_M) = 'S' THEN v_Result := 11;
    WHEN UPPER(p_M) = 'T' THEN v_Result := 12;
    ELSE v_Result := 0;
  END CASE;
  
  RETURN v_Result; 
END;


PROCEDURE DISPLAY_MSG (
  P_MSG VARCHAR2,
  P_DEF VARCHAR2 := '') IS
    V_MESSAGE VARCHAR2(32767);
  BEGIN
    v_message := to_char(LsTime.GetDateTime,'DD/MM/YY hh24:mi:ss');
    v_message := v_message ||': '||P_MSG;
    LsDebug.debugshowtext(v_message);
  END DISPLAY_MSG;

FUNCTION Func_Format(
    p_field_in       VARCHAR2,
    p_field_type     VARCHAR2,
    p_field_length   PLS_INTEGER
      )
    RETURN VARCHAR2
AS
  v_field_out VARCHAR2(2000);
  v_INTERO    NUMBER(9);
  v_DECIMALE  NUMBER(9);
  v_SeparatoreDecimale VARCHAR2(1);
BEGIN

  IF p_field_type = 'D' THEN
    -------------------
    -- Data DDMMYYYY --
    -------------------
    globals.LSERRORFMT (LsGestErrors.ERRORE_ELABORAZIONE,'globals.FUNC_FORMAT');
    
  elsif (p_field_type = 'P') then 
    -------------------
    -- Data YYYYMM   --
    -------------------
    globals.LSERRORFMT (LsGestErrors.ERRORE_ELABORAZIONE,'globals.FUNC_FORMAT');

  elsif (p_field_type in('1', 'T') ) then 
    -------------------
    -- Data YYYYMMDD --
    ------------------- 
    globals.LSERRORFMT (LsGestErrors.ERRORE_ELABORAZIONE,'globals.FUNC_FORMAT');

  elsif (p_field_type = 'T-' ) then 
    -------------------
    -- Data YYYY-MM-DD --
    ------------------- 
    globals.LSERRORFMT (LsGestErrors.ERRORE_ELABORAZIONE,'globals.FUNC_FORMAT');

  elsif (p_field_type = 'H') then 
    -------------------
    -- Data HHMMSS   --
    -------------------
    globals.LSERRORFMT (LsGestErrors.ERRORE_ELABORAZIONE,'globals.FUNC_FORMAT');

  elsif p_field_type = 'N' then 
    -------------------------------
    -- numerico (lung in input)  --
    -------------------------------
    v_field_out := LsStr.RIGHTSTRING(rtrim(LsStr.Replicate('0',p_field_length)||coalesce(p_field_in,'0')),p_field_length);
    -- sostituisce il separatore decimale usato con LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG 
    v_field_out := REPLACE( v_field_out, LsSQL.GetSessionDecimalSeparator, LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG );
  elsif p_field_type = 'A' then
    ------------------------------------
    -- alphanumerico (lung in input)  --
    ------------------------------------
    v_field_out := LsStr.LEFTSTRING(coalesce(p_field_in, ' ')||LsStr.Replicate(' ',p_field_length), p_field_length);
  elsif p_field_type = '%2' then
    ------------------------------------
    -- percentuali II,DD              --
    ------------------------------------
    
    -- verifica se il numero contenuto in p_field_in ha il punto o la virgola come separatore decimale
    if LsStr.LsINSTR(p_field_in,'.') > 0 then
      v_SeparatoreDecimale := '.';
    elsif LsStr.LsINSTR(p_field_in,',') > 0 then
      v_SeparatoreDecimale := ',';
    else
      v_SeparatoreDecimale := '.'; -- usa il separatore decimale che era utilizzato da questa funzione nella versione precedente 
    end if;
    
    v_intero   := LsStr.getstrpart(p_field_in, v_SeparatoreDecimale, 1);
    v_decimale := cast(LSSTR.LEFTSTRING(LsStr.getstrpart(p_field_in,v_SeparatoreDecimale, 2), 2) as number);
    
    if v_intero < 100 then 
      v_field_out := func_format(v_intero , 'N', 2)||','||func_format(v_decimale , 'N', 2);
    end if;  

  elsif p_field_type = 'AN' then 
    -----------------------------------------------------
    -- numerico/allineato a DX ma con spazi a sinistra --
    -----------------------------------------------------
    v_field_out := LsStr.RIGHTSTRING(rtrim(LsStr.Replicate(' ',p_field_length)||coalesce(p_field_in,'0')),p_field_length);
    -- sostituisce il separatore decimale usato con LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG 
    v_field_out := REPLACE( v_field_out, LsSQL.GetSessionDecimalSeparator, LsMultiLanguage.c_SEPARATORE_DECIMALE_ENG );
  elsif p_field_type = 'A0' then 
    -----------------------------------------------------
    -- allineato a SX e con ZERI a destra --
    -----------------------------------------------------
    v_field_out := LsStr.LEFTSTRING(coalesce(p_field_in,'0')||rtrim(LsStr.Replicate('0',p_field_length)),p_field_length);
  else
    v_field_out := 'ERROR';
  END IF;  
 
  RETURN v_field_out;

END;

FUNCTION Func_Format(
    p_field_in       DATE,
    p_field_type     VARCHAR2,
    p_field_length   PLS_INTEGER
      )
    RETURN VARCHAR2
AS
  v_field_out VARCHAR2(2000);
  v_INTERO    NUMBER(9);
  v_DECIMALE  NUMBER(9);
  
BEGIN

  IF p_field_type = 'D' THEN
    -------------------
    -- Data DDMMYYYY --
    -------------------
    if p_field_in is null then
       v_field_out := '00000000';
    else              
       v_field_out :=  LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.GETDAY(p_field_in), 2)) ,2)||
                       LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.GETMONTH(p_field_in), 2)) ,2)||
                       LsStr.RIGHTSTRING('0000'||ltrim(LsStr.str(LsTime.GETYEAR(p_field_in), 4)) ,4);
    end if;                   
  elsif (p_field_type = 'P') then 
    -------------------
    -- Data YYYYMM   --
    -------------------
    if (p_field_in is null) then
      v_field_out  := '000000';
    else
      v_field_out   := LsStr.RIGHTSTRING('0000'||ltrim(LsStr.str(LsTime.GETYEAR(p_field_in), 4)) ,4)||
                       LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.GETMONTH(p_field_in), 2)) ,2);
    end if;                   
  elsif (p_field_type in('1', 'T') ) then 
    -------------------
    -- Data YYYYMMDD --
    ------------------- 
    if (p_field_in is null) then
        v_field_out := '00000000';
    else
         v_field_out:= LsStr.RIGHTSTRING('0000'||ltrim(LsStr.str(LsTime.GETYEAR(p_field_in), 4)) ,4)||
                       LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.GETMONTH(p_field_in), 2)) ,2)||
                       LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.GETDAY(p_field_in), 2)) ,2);
    end if;  
  elsif (p_field_type = 'T-' ) then 
    -------------------
    -- Data YYYY-MM-DD --
    ------------------- 
    if (p_field_in is null) then
        v_field_out := '00000000';
    else
         v_field_out:= LsStr.RIGHTSTRING('0000'||ltrim(LsStr.str(LsTime.GETYEAR(p_field_in), 4)) ,4)||'-'||
                       LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.GETMONTH(p_field_in), 2)) ,2)||'-'||
                       LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.GETDAY(p_field_in), 2)) ,2);
    end if;
  elsif (p_field_type = 'H') then 
    -------------------
    -- Data HHMMSS   --
    -------------------
    if (p_field_in is null) then
        v_field_out := '000000';
    else
        v_field_out := LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.datepart (LsTime.GETHOURS(p_field_in), p_field_in))) ,2)||
                       LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.datepart(LsTime.GETMINUTES(p_field_in), p_field_in))) ,2)||
                       LsStr.RIGHTSTRING('00'||ltrim(LsStr.str(LsTime.datepart(LsTime.GETSECONDS(p_field_in), p_field_in))), 2);              
    end if;
  else
    v_field_out := 'ERROR';
  END IF;  
 
  RETURN v_field_out;

END;

PROCEDURE LsErrorTrace(p_SQLERRM VARCHAR2)
AS
  v_DefaultErrorCodeText  VARCHAR2(20);
  v_SQLERRM               VARCHAR2(32727);
BEGIN
  v_SQLERRM := p_SQLERRM;
  
  /* p_SQLERRM puo' essere gia' stato elaborato in modo da contenere il codice di errore 'ORA-20001' 
   * Controlla se contiene gia' il codice di errore, e in caso non lo riaggiunge
   */
  v_DefaultErrorCodeText := c_DefaultErrorCode||': ';    -- 'ORA-20001: '
  if (length(v_SQLERRM) > length(v_DefaultErrorCodeText) and substr(v_SQLERRM, 1, length(v_DefaultErrorCodeText)) = v_DefaultErrorCodeText ) then
    v_SQLERRM := substr(v_SQLERRM, length(v_DefaultErrorCodeText) + 1);
  end if;

  globals.LsError(v_SQLERRM||globals.c_CRLF||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE); 
END;

PROCEDURE LsErrorInsertUpdate(p_ErrorList VARCHAR2)
AS
BEGIN
  globals.LsError(globals.LSERRORINSUPD||globals.c_CRLF||p_ErrorList); 
END;

FUNCTION LSERRORINSUPD RETURN VARCHAR2
AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'LSERRORINSUPD', 'Errore di inserimento/modifica',
                                                                          'Errors inserting/updating:' );
END;


PROCEDURE Temp2Stor(p_Cdcmpany VARCHAR2,
                    p_TabTemp  VARCHAR2,
                    p_TabStor  VARCHAR2,
                    p_newProgr PLS_INTEGER,
                    p_FldProgr VARCHAR2,
                    p_FlgEmpty BOOLEAN,
                    p_WhereCond VARCHAR2 := NULL
                   )
--</PARAM>   
AS
-- variabili
  v_SqltextFldStor VARCHAR2(32767);
  v_SqltextFldTemp VARCHAR2(32767);
  v_SqltextWhrCond VARCHAR2(32767);
  v_NrField        NUMBER(5);
BEGIN
  -- 1. controllo esistenza tabelle o vista 
  if (not LsOraMetadata.IsTableExist(p_TabTemp)) AND (not LsOraMetadata.IsViewExist(p_TabTemp)) then
    globals.LsErrorFmt( LsGestErrors.TABELLA_NON_TROVATA, p_TabTemp);
  end if;
  if not LsOraMetadata.IsTableExist(p_TabStor ) then
    globals.LsErrorFmt( LsGestErrors.TABELLA_NON_TROVATA, p_TabStor );
  end if;
  

  -- 2. controllo esistenza campo progressivo
  if p_FldProgr is not null then
    if not LsOraMetadata.IsTableColumnExist(p_TabStor, p_FldProgr) then
      globals.LsErrorFmt( LsGestErrors.COLONNA_NON_TROVATA, p_TabStor||'.'||p_FldProgr );
    end if;
  end if;
  
  V_SqltextFldStor := 'INSERT INTO ' || p_TabStor || globals.C_CRLF || '( ' || globals.C_CRLF;
  V_SqltextFldTemp := 'SELECT' || globals.C_CRLF;

  -- dichiara il cursore
  v_nrfield := 0;
  FOR crCampi IN (SELECT COLUMN_NAME
                    FROM USER_TAB_COLUMNS 
                   WHERE TABLE_NAME = p_TabTemp
                   ORDER BY COLUMN_ID
                 )
  LOOP
    v_nrfield := v_nrfield + 1;
    -- controllo esistenza campo sulla tabella storica
    if LsOraMetadata.IsTableColumnExist(p_TabStor, crCampi.COLUMN_NAME) then
      if v_nrfield > 1 then
        V_SqltextFldStor := V_SqltextFldStor ||  ',';
        V_SqltextFldTemp := V_SqltextFldTemp ||  ',';
      end if;
      V_SqltextFldStor := V_SqltextFldStor ||  '  ' || crCampi.COLUMN_NAME || globals.C_CRLF;
      V_SqltextFldTemp := V_SqltextFldTemp ||  '  ' ||p_TabTemp||'.'|| crCampi.COLUMN_NAME || globals.C_CRLF;
     end if;
  END LOOP;
  if p_FldProgr is not null then
    V_SqltextFldStor := V_SqltextFldStor || ',  ' || p_FldProgr || globals.C_CRLF || ')' || globals.C_CRLF;
    V_SqltextFldTemp := V_SqltextFldTemp || ',  ' || p_newProgr || globals.C_CRLF || 'FROM ' || p_TabTemp || globals.C_CRLF;
  else
    V_SqltextFldStor := V_SqltextFldStor ||  ')' || globals.C_CRLF;
    V_SqltextFldTemp := V_SqltextFldTemp || globals.C_CRLF || 'FROM ' || p_TabTemp || globals.C_CRLF;
  end if;
  
  if p_WhereCond IS NOT NULL then
    if p_cdcmpany is not null AND NOT LsMatrice.c_MonoCompany then
      v_SqltextWhrCond := p_WhereCond || ' AND  '||p_TabTemp||'.CDCMPANY = ' ||  globals.C_APICE  || p_CdCmpany ||  globals.C_APICE ;
    else   
      v_SqltextWhrCond := p_WhereCond;
    end if;
  else    
    if p_cdcmpany is not null AND NOT LsMatrice.c_MonoCompany then
      v_SqltextWhrCond := p_WhereCond || ' WHERE  '||p_TabTemp||'.CDCMPANY = ' ||  globals.C_APICE  || p_CdCmpany ||  globals.C_APICE ;
    end if;
  end if;   
  
  
  -- 3. scrive sulla tabella storica
  DISPLAY_MSG('EXECUTE IMMEDIATE :---------------------------------------');
  DISPLAY_MSG(V_SqltextFldStor||V_SqltextFldTemp);
  DISPLAY_MSG('----------------------------------------------------------');

  EXECUTE IMMEDIATE (V_SqltextFldStor||V_SqltextFldTemp||v_SqltextWhrCond);
  --4. svuoto la tabella temporanea se il flag passato è 1
  IF p_FlgEmpty THEN
    --Se viene passata una where condition, si toglie la parola chiave 'WHERE' dalla stringa e si passa alla EMPTYTABELLA(che già la include)
    if LSSTR.STRCONTAINS('WHERE',v_SqltextWhrCond) then
      v_SqltextWhrCond := LSSTR.CopyByIndexes(v_SqltextWhrCond,7, LsStr.len(v_SqltextWhrCond)); 
    end if;
    LsOraMetadata.EmptyTabella(p_TabTemp, v_SqltextWhrCond);
  END IF;   
END; 

FUNCTION CleanDelphiParam(p_Param NUMBER) RETURN NUMBER
AS
  v_Bo_SessionId    VARCHAR2(200);
  v_CDCLIENTTYPE    SISESSION.CDCLIENTTYPE%TYPE;
BEGIN

  v_Bo_SessionId := LsSql.GetContextValue(globals.c_CONVAR_BOSESSIONID);
  if v_Bo_SessionId IS NULL then
    globals.LsError( LsMessages.SESSION_NOT_SPEC_IN_CONTEXT );
  end if;

  BEGIN
    SELECT SISESSION.CDCLIENTTYPE
      INTO v_CDCLIENTTYPE
      FROM SISESSION
     WHERE SISESSION.BO_SESSIONID = v_Bo_SessionId;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      globals.LsErrorFmt( LsMessages.SESSION_NOT_FOUND, v_Bo_SessionId );
  END;

  IF LsStr.SameText(v_CDCLIENTTYPE, LsDbConst.c_INTCLIENTTYPE_WINDOWS) THEN
    IF COALESCE(p_Param, 0) = 0 THEN
      RETURN -1;
    END IF;
  END IF;

  RETURN p_Param;
END;

FUNCTION c_DPAFAGT_FIRST_PAY RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_FIRST_PAY',  
  'Rata anticipata', 'First payment'  ); 
END;

FUNCTION c_DPAFAGT_PRE_PAY RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_PRE_PAY',  
  'Pre-ammortamento', 'Pre Payment'  ); 
END;

FUNCTION c_DPAFAGT_MORATORIA RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_MORATORIA',  
  'Moratoria', 'Grace period');
END;

FUNCTION c_DPAFAGT_PAY RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_PAY',  
  'Rata', 'Payment'  ); 
END;

FUNCTION c_DPAFAGT_ASS_RET RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_ASS_RET',  
  'Estinzione', 'Pay-off'  ); 
END;

FUNCTION c_DPAFAGT_ASS_SELLING RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_ASS_SELLING',  
  'Vendita', 'Buy-out'  ); 
END;

FUNCTION c_DPAFAGT_ASS_WRITE_OFF RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_ASS_WRITE_OFF',  
  'Radiazione', 'Write-off'  ); 
END;


FUNCTION c_DPAFAGT_RES_VAL RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_RES_VAL',  
  'Valore residuo', 'Residual value'  ); 
END;


FUNCTION c_DPAFAGT_INDEX RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_INDEX',  
  'Indicizzazione', 'Indexation'  ); 
END;


FUNCTION c_DPAFAGT_REVAL RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_REVAL',  
  'Rivalutazione', 'Revaluation'  ); 
END;

FUNCTION c_DPAFAGT_DEVAL RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_DEVAL',  
  'Svalutazione', 'Devaluation'  ); 
END;

FUNCTION c_DPAFAGT_COST_REVAL RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_COST_REVAL',  
  'Rivalutazione Costo', 'Cost Revaluation'  ); 
END;

FUNCTION c_DPAFAGT_RENEWAL RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_RENEWAL',  
  'Rata rinnovo', 'Renewal'  ); 
END;

FUNCTION c_DPAFAGT_BLD_DSC RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_BLD_DSC',  
  'Sconto finanziario', 'Rebate'  ); 
END;

FUNCTION c_DPAFAGT_PURCHASE RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_PURCHASE',  
  'Acquisto Bene', 'Purchase'  ); 
END;

FUNCTION c_DPAFAGT_DISBURS RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_DISBURS',  
  'Erogazione', 'Loan settlement'  ); 
END;


FUNCTION c_DPAFAGT_COMMISSION RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAFAGT_COMMISSION',  
  'Provvigione', 'Commission'  ); 
END;
 

FUNCTION c_DPAGAGT_COST RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_COST',  
  'Costo', 'Cost'  ); 
END;


FUNCTION c_DPAGAGT_FEE RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_FEE',  
  'Rimborso spese', 'Revenue'  ); 
END;


FUNCTION c_DPAGAGT_PENALTY RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua(c_UNIT_NAME , 'c_DPAGAGT_PENALTY',  
  'Mora', 'Penalty'  ); 
END;


FUNCTION c_DPAGAGT_PRINCIPAL_INCREASE RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_PRINCIPAL_INCREASE',  
  'Incremento capitale', 'Principal increase'  ); 
END;


FUNCTION c_DPAGAGT_PRINCIPAL_DECREASE RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_PRINCIPAL_DECREASE',  
  'Decremento capitale', 'Principal decrease'  ); 
END;


FUNCTION c_DPAGAGT_INTER_PRE_FIN RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_INTER_PRE_FIN',  
  'Interessi pre-finanziamento', 'Pre-financing Interests'  ); 
END;


FUNCTION c_DPAGAGT_INTER_PRE_FIN_ACCR RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_INTER_PRE_FIN_ACCR',  
  'Interessi pre-finanziamento (rateo)', 'Pre-financing Interests (portion)'  ); 
END;


FUNCTION c_DPAGAGT_INS_PREMIUM_RECEIV RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_INS_PREMIUM_RECEIV',  
  'Premio assicurativo', 'Insurance premium'  ); 
END;


FUNCTION c_DPAGAGT_INS_PREMIUM_COST RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_INS_PREMIUM_COST',  
  'Rimborso premio', 'Premium pay-back'  ); 
END;


FUNCTION c_DPAGAGT_INSURANCE_COMMISSION RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_INSURANCE_COMMISSION',  
  'Commissione su premio', 'Insurance commission'  ); 
END;


FUNCTION c_DPAGAGT_INS_COMMISSION_COST RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_INS_COMMISSION_COST',  
  'Provvigione assicurativa', 'Insurance commission cost'  ); 
END;


FUNCTION c_DPAGAGT_INS_PREMIUM_LESSOR RETURN VARCHAR2
AS 
BEGIN 
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME , 'c_DPAGAGT_INS_PREMIUM_LESSOR',  
  'Premio impagato', 'Overdue premium'  ); 
END;

FUNCTION c_DPAFAGT_SUNDRY_REVENUE_CAP RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_SUNDRY_REVENUE_CAP', 
  'Provento capitalizzato', 'Sundry revenue - capitalized' );
END;

FUNCTION c_DPAFAGT_SUNDRY_COST_CAP RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_SUNDRY_COST_CAP', 
  'Onere capitalizzato', 'Sundry cost - capitalized' );
END;

FUNCTION c_DPAFAGT_CHARGE_REV_SUNDRY RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_CHARGE_REV_SUNDRY', 
  'Provento capitalizzato rifatturato', 'Sundry revenue capitalized re-invoiced' );
END;
FUNCTION c_DPAFAGT_CREDIT_COST_SUNDRY RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_CREDIT_COST_SUNDRY', 
  'Onere capitalizzato rifatturato', 'Sundry cost capitalized re-invoiced' );
END;

FUNCTION c_DPAGAGT_INTER_DEFERRD         RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAGAGT_INTER_DEFERRD', 
  'Interessi di dilazione', 'Deferred Interests' );
END;

FUNCTION c_DPAFAGT_CREDIT_SETTLEMENT         RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_CREDIT_SETTLEMENT', 
  'Erogazione', 'Settlement' );
END;

FUNCTION c_DPAFAGT_ADVANCE_INT         RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_ADVANCE_INT', 
  'Interessi di anticipazione', 'Advance interests' );
END;

FUNCTION c_DPAFAGT_PRINCIPAL_REFUND    RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_PRINCIPAL_REFUND', 
  'Rimborso di capitale', 'Principal refund' );
END;

FUNCTION c_DPAFAGT_R_BLD_DSC    RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_R_BLD_DSC', 
  'Rettifica contributi finanziari', 'Rebate adjustment' );
END;

FUNCTION c_DPAFAGT_R_COMMISSION    RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_R_COMMISSION', 
  'Rettifica provvigioni', 'Commission adjustment' );
END;


FUNCTION c_DPAFAGT_A_BLD_DSC    RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_A_BLD_DSC', 
  'Aumento contributi finanziari', 'Rebate increase' );
END;

FUNCTION c_DPAFAGT_A_COMMISSION    RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_A_COMMISSION', 
  'Aumento provvigioni', 'Commission increase' );
END;

  FUNCTION c_DBALLOON_PAYMENT RETURN VARCHAR2 AS
  BEGIN
    RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DBALLOON_PAYMENTRETURN', 
    'Ultima rata', 'Balloon payment' );
  END;

FUNCTION c_DPAFAGT_R_BLD_DSC_M    RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_R_BLD_DSC_M', 
  'Rettifica negativa interessi maturati', 'Negative accrued interests adjustment' );
END;

FUNCTION c_DPAFAGT_R_COMMISSION_M   RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( SiwIntMessage.c_INTTPFLUSSI, 'c_DPAFAGT_R_COMMISSION_M', 
  'Rettifica positiva interessi maturati', 'Positive accrued interests adjustment' );
END;

FUNCTION c_BB_ANNULLA RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'c_BB_ANNULLA', 
  'Annulla', 'Cancel' );
END;

FUNCTION c_BB_ESCI RETURN VARCHAR2 AS
BEGIN
  RETURN LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'c_BB_ESCI', 
  'Esci', 'Exit' );
END;

--Controllo generale tra valori min e max di due campi
FUNCTION CheckMinMaxNum(p_TableMin   VARCHAR2,
                         p_FieldMin  VARCHAR2,
                         p_ValueMin  NUMBER,
                         p_TableMax  VARCHAR2,
                         p_FieldMax  VARCHAR2,
                         p_ValueMax  NUMBER,
                         p_ErrMsg    VARCHAR2,
                         p_SameValue BOOLEAN) RETURN VARCHAR2
AS
  v_DescFieldMin VARCHAR2(100);
  v_DescFieldMax VARCHAR2(100);  
  v_ErrorMsg VARCHAR2(32767);
  v_IsNotCheckOk NUMBER(1);                   
BEGIN
  v_ErrorMsg := '';
  v_DescFieldMin := LsSql.GetFieldDescription(p_TableMin, p_FieldMin);
  v_DescFieldMax := LsSql.GetFieldDescription(p_TableMax, p_FieldMax);
  
  --Se il valore dei due campi può essere uguale allora..
  if p_SameValue = true then
    v_IsNotCheckOk := globals.BOOLEANTOINT(not (p_ValueMin <= p_ValueMax));
  else
    v_IsNotCheckOk := globals.BOOLEANTOINT(not (p_ValueMin < p_ValueMax));
  end if;
  
  if v_IsNotCheckOk = 1 then
    v_ErrorMsg :=  LsStr.Format(p_ErrMsg,v_DescFieldMin||'|'||v_DescFieldMax);
  end if;
 
  RETURN v_ErrorMsg;
END;

-- Funzioni per traduzione dei numeri in Lettere 


function UNMILIARDO_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'UNMILIARDO_STR', 'unmiliardo', 'onebillion');
end;

function UNMILIONE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'UNMILIONE_STR', 'unmilione', 'onemilion');
end;

function MILLE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'MILLE_STR', 'mille', 'thousand');
end;

function UNO_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'UNO_STR', 'uno', 'one');
end;

function MILIARDI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'MILIARDI_STR', 'miliardi', 'billions');
end;

function MILIONI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'MILIONI_STR', 'milioni', 'milions');
end;

function MILA_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'MILA_STR', 'mila', 'thousand');
end;

function CENTO_STR RETURN VARCHAR2
AS
begin
  RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'CENTO_STR', 'cento', 'hundred');
end;

function DIECI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'DIECI_STR', 'dieci', 'ten');
end;

function UNDICI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'UNDICI_STR', 'undici', 'eleven');
end;

function DUE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'DUE_STR', 'due', 'two');
end;

function DODICI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'DODICI_STR', 'dodici', 'twelve');
end;

function VENTI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'VENTI_STR', 'venti', 'twenty');
end;

function TRE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'TRE_STR', 'tre', 'three');
end;

function TREDICI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'TREDICI_STR', 'tredici', 'thirteen');
end;

function TRENTA_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'TRENTA_STR', 'trenta', 'thirty');
end;

function QUATTRO_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'QUATTRO_STR', 'quattro', 'four');
end;

function QUATTORDICI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'QUATTORDICI_STR', 'quattordici', 'fourteen');
end;

function QUARANTA_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'QUARANTA_STR', 'quaranta', 'fourty');
end;

function CINQUE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'CINQUE_STR', 'cinque', 'five');
end;

function QUINDICI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'QUINDICI_STR', 'quindici', 'fifteen');
end;

function CINQUANTA_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'CINQUANTA_STR', 'cinquanta', 'fifty');
end;

function SEI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'SEI_STR', 'sei', 'six');
end;

function SEDICI_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'SEDICI_STR', 'sedici', 'sixteen');
end;

function SESSANTA_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'SESSANTA_STR', 'sessanta', 'sixty');
end;

function SETTE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'SETTE_STR', 'sette', 'seven');
end;

function DICIASSETTE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'DICIASSETTE_STR', 'diciassette', 'seventeen');
end;

function SETTANTA_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'SETTANTA_STR', 'settanta', 'seventy');
end;

function OTTO_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'OTTO_STR', 'otto', 'eight');
end;

function DICIOTTO_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'DICIOTTO_STR', 'diciotto', 'eighteen');
end;

function OTTANTA_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'OTTANTA_STR', 'ottanta', 'eighty');
end;

function NOVE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'NOVE_STR', 'nove', 'nine');
end;

function DICIANNOVE_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'DICIANNOVE_STR', 'diciannove', 'nineteen');
end;

function NOVANTA_STR RETURN VARCHAR2
AS
begin
    RETURN  LsMultiLanguage.GetMsgMultiLingua( c_UNIT_NAME, 'NOVANTA_STR', 'novanta', 'ninety');
end;

function VUOTO_STR  RETURN VARCHAR2
AS
begin
  RETURN '';
end;

FUNCTION Num2Let(
p_Importo         FLOAT,
p_nDecimali       NUMBER,
p_EliminaDecimali NUMBER := 0 
) RETURN VARCHAR2 
AS
  c_Let      t_Decodifica_Numeri; 
  c_Uno      t_Arr_Uno; 
  c_Tanti    t_Arr_Tanti; 
  a_Num      t_Arr_Num;
  
  v_nMaxLen    NUMBER ;   
  v_cNumero    VARCHAR2(3000);
  v_nNum       NUMBER;
  v_nCentinaia NUMBER; --//è il valore delle sole centinaia 
  v_nDecine    NUMBER; --//contiene decine+unità (per gestione numeri da 10 a 20) 
  v_nUnita     NUMBER; --//è il valore delle sole unità 
  v_lMaxLen    BOOLEAN;
  v_nNumero    NUMBER(9);
  v_nDecimale  FLOAT;
  v_Result     VARCHAR2(500);
  
  v_importo    NUMBER(18,4);
  v_IntPower   NUMBER;
  
begin
  
  c_Let   := t_Decodifica_Numeri(); 
  c_Uno   := t_Arr_Uno();
  c_Tanti := t_Arr_Tanti();
  a_Num   := t_Arr_Num();
  
  v_nMaxLen := 131;
  
  c_Uno.EXTEND;
  c_Uno(1).Col_1 := globals.UNMILIARDO_STR;
  c_Uno.EXTEND;
  c_Uno(2).Col_1 := globals.UNMILIONE_STR;
  c_Uno.EXTEND;
  c_Uno(3).Col_1 := globals.MILLE_STR;
  c_Uno.EXTEND;
  c_Uno(4).Col_1 := globals.UNO_STR;
  
  c_Tanti.EXTEND;
  c_Tanti(1).Col_1 := globals.MILIARDI_STR;
  c_Tanti.EXTEND;
  c_Tanti(2).Col_1 := globals.MILIONI_STR;
  c_Tanti.EXTEND;
  c_Tanti(3).Col_1 := globals.MILA_STR;
  c_Tanti.EXTEND;
  c_Tanti(4).Col_1 := globals.VUOTO_STR;
          
  c_Let.EXTEND;
  c_Let(1).Col_1 := globals.VUOTO_STR;
  c_Let(1).Col_2 := globals.DIECI_STR;
  c_Let(1).Col_3 := globals.VUOTO_STR;
  
  c_Let.EXTEND;  
  c_Let(2).Col_1 := globals.VUOTO_STR;
  c_Let(2).Col_2 := globals.UNDICI_STR;
  c_Let(2).Col_3 := globals.VUOTO_STR;  
  
  c_Let.EXTEND;  
  c_Let(3).Col_1 := globals.DUE_STR;
  c_Let(3).Col_2 := globals.DODICI_STR;
  c_Let(3).Col_3 := globals.VENTI_STR;  
    
  c_Let.EXTEND;
  c_Let(4).Col_1 := globals.TRE_STR;
  c_Let(4).Col_2 := globals.TREDICI_STR;
  c_Let(4).Col_3 := globals.TRENTA_STR;
    
  c_Let.EXTEND;
  c_Let(5).Col_1 := globals.QUATTRO_STR;
  c_Let(5).Col_2 := globals.QUATTORDICI_STR;
  c_Let(5).Col_3 := globals.QUARANTA_STR;
    
  c_Let.EXTEND;
  c_Let(6).Col_1 := globals.CINQUE_STR;
  c_Let(6).Col_2 := globals.QUINDICI_STR;
  c_Let(6).Col_3 := globals.CINQUANTA_STR;
  
  c_Let.EXTEND;  
  c_Let(7).Col_1 := globals.SEI_STR;
  c_Let(7).Col_2 := globals.SEDICI_STR;
  c_Let(7).Col_3 := globals.SESSANTA_STR;
    
  c_Let.EXTEND;  
  c_Let(8).Col_1 := globals.SETTE_STR;
  c_Let(8).Col_2 := globals.DICIASSETTE_STR;
  c_Let(8).Col_3 := globals.SETTANTA_STR;
    
  c_Let.EXTEND;  
  c_Let(9).Col_1 := globals.OTTO_STR;
  c_Let(9).Col_2 := globals.DICIOTTO_STR;
  c_Let(9).Col_3 := globals.OTTANTA_STR;
    
  c_Let.EXTEND;  
  c_Let(10).Col_1 := globals.NOVE_STR;
  c_Let(10).Col_2 := globals.DICIANNOVE_STR;
  c_Let(10).Col_3 := globals.NOVANTA_STR;
    
  
  v_lMaxLen := FALSE;
  v_cNumero   := '';
  v_Result   := '';
  
  v_Importo := p_Importo;
  v_nNumero := LsNumeric.LsInt(v_Importo);  --//prende la parte intera   
 
  if p_nDecimali = 1 then
   v_IntPower := 10;
  elsif p_nDecimali = 2 then
   v_IntPower := 100;
  elsif p_nDecimali = 3 then
   v_IntPower := 1000;  
  elsif p_nDecimali = 4 then
   v_IntPower := 10000;  
  elsif p_nDecimali = 5 then
   v_IntPower := 100000;    
  elsif p_nDecimali = 6 then
   v_IntPower := 1000000;
  elsif p_nDecimali = 7 then
   v_IntPower := 10000000;
  elsif p_nDecimali = 8 then
   v_IntPower := 100000000;
  elsif p_nDecimali = 9 then
   v_IntPower := 1000000000;
  else
   v_IntPower := 10000000000;
  end if;
   
  v_nDecimale :=  LsNumeric.LsFrac(v_Importo)*v_IntPower; --//prende la parte decimale
  
  a_Num.EXTEND;
  a_Num(1).Col_1 := LsNumeric.LsTrunc(v_nNumero/1000000000);
  a_Num.EXTEND;
  a_Num(2).Col_1 := LsNumeric.LsTrunc((v_nNumero/1000000)-(a_Num(1).Col_1*1000));
  a_Num.EXTEND;
  a_Num(3).Col_1 := LsNumeric.LsTrunc((v_nNumero/1000)-(a_Num(1).Col_1*1000000)-(a_Num(2).Col_1*1000));
  a_Num.EXTEND;
  a_Num(4).Col_1 := LsNumeric.LsTrunc(v_nNumero-(a_Num(1).Col_1*1000000000)-(a_Num(2).Col_1*1000000)-(a_Num(3).Col_1*1000));

  --//4 cicli per scansione del numero a gruppi di 3 cifre
  
  if (v_nNumero <= 0) or (v_nNumero > 999999999999) then
    v_cNumero := 'ZERO'; 
    v_Result := v_Result||v_cNumero;
  else

    FOR v_i IN 1..4
    
    LOOP

      v_cNumero    := '';
      v_nNum       := a_Num(v_i).Col_1;
      v_nCentinaia := LsNumeric.LsTrunc(v_nNum/100);
      v_nDecine    := v_nNum - v_nCentinaia*100;
      v_nUnita     := v_nDecine - LsNumeric.LsTrunc(v_nDecine/10)*10;

      if v_nNum = 1 then
       v_cNumero := v_cNumero||c_Uno(v_i).Col_1;
      elsif v_nNum <> 0 then

        --// gestione centinaia
       if v_nCentinaia <> 0 then
          v_cNumero := v_cNumero||c_Let(v_nCentinaia+1).Col_1||globals.CENTO_STR;
       end if;
       
        --// gestione decine
        if (v_nDecine >= 10) and (v_nDecine <=19) then
          v_cNumero := v_cNumero||c_Let(v_nDecine-9).Col_2;
        else

          IF (v_nDecine > 19) then
            v_cNumero := v_cNumero||c_Let(LsNumeric.LsTrunc(v_nDecine/10)+1).Col_3;
            if (v_nUnita = 1) or (v_nUnita = 8) then
       --       //toglie l'ultima lettera (es. venti -> vent ) 
              v_cNumero := SUBSTR(v_cNumero,1,length(v_cNumero)-1);
            end if;
          end if;
        --  // gestione unita (se non già compresa nelle decine) 
          if (v_nUnita = 1) then
            v_cNumero := v_cNumero||globals.UNO_STR;
          elsif (v_nUnita > 1) then
            v_cNumero := v_cNumero||c_Let(v_nUnita+1).Col_1;
          end if;
          
        end if;
        
        v_cNumero := v_cNumero||c_Tanti(v_i).Col_1;
        
      end if;
          
      if (Length(v_Result)+Length(v_cNumero)+(4-v_i)*4) > v_nMaxLen or(v_lMaxLen) then
        v_lMaxLen := true;
        v_Result := v_Result||LsStr.TrimLeft(LsStr.tostring(v_nNum));
      else
        v_Result := v_Result||v_cNumero;
      end if;
    
    END LOOP; 
    
  end if;
  
  --//-- Decimali in numero
  if  p_EliminaDecimali = 0 then
  
     v_Result := v_Result||'/'||LsStr.PADL(LsStr.ToString(LsNumeric.LsTrunc(v_nDecimale)), p_nDecimali, '0');--SUBSTR(CAST(LsNumeric.LsFrac(p_Importo) AS VARCHAR2), 2, p_nDecimali);
            
  end if;  
    

  RETURN UPPER(v_Result);
  
END;

FUNCTION Num2NumberAdjIta(
p_Numero          NUMBER,
p_Genere          VARCHAR2 := 'M',
p_Plurale         NUMBER   := 0 
) RETURN VARCHAR2 
AS
    v_Result       VARCHAR2(500);
    v_conversione  VARCHAR2(500);
    v_lunghezza    NUMBER;
BEGIN

    if p_Numero = 1 then
        v_Result := 'Primo';
    elsif p_Numero = 2 then
        v_Result := 'Secondo';
    elsif p_Numero = 3 then
        v_Result := 'Terzo';
    elsif p_Numero = 4 then
        v_Result := 'Quarto';
    elsif p_Numero = 5 then
        v_Result := 'Quinto';
    elsif p_Numero = 6 then
        v_Result := 'Sesto';
    elsif p_Numero = 7 then
        v_Result := 'Settimo';
    elsif p_Numero = 8 then
        v_Result := 'Ottavo';
    elsif p_Numero = 9 then
        v_Result := 'Nono';
    elsif p_Numero = 10 then
        v_Result := 'Decimo';
    elsif p_Numero > 10 then
        v_conversione := globals.Num2Let(p_Numero,0,1);
        v_lunghezza   := length(v_conversione);
        if substr(v_conversione,v_lunghezza-2,3) in ('TRE','SEI') then
            v_Result := v_conversione||'esimo';
        elsif substr(v_conversione,v_lunghezza-3,4) = 'MILA' then
            v_Result := substr(v_conversione,1,v_lunghezza-1)||'lesimo';
        else
            v_Result := substr(v_conversione,1,v_lunghezza-1)||'esimo';
        end if;
    end if;

    if p_Genere = 'F' and p_Plurale = 0 then
       v_Result := substr(v_Result,1,length(v_Result)-1)||'a';
    end if;

    if p_Genere = 'M' and p_Plurale = 1 then
       v_Result := substr(v_Result,1,length(v_Result)-1)||'i';
    end if;

    if p_Genere = 'F' and p_Plurale = 1 then
       v_Result := substr(v_Result,1,length(v_Result)-1)||'e';
    end if;
      
    RETURN UPPER(v_Result);
    
END;

FUNCTION GET_DICT_COLUMN_DATA(
  p_tablename in varchar2
) RETURN SYS_REFCURSOR
is
  v_cur   SYS_REFCURSOR;
begin
/*
This procedure must read from Oracle's dictionary views. Do NOT use LS_USER_%
replica tables because thay could be not up-to-date when this procedure is running.
*/
  OPEN v_cur FOR
  select a.column_name
       , a.data_type
       , case 
           when pkey.column_name is null 
           then 0 
           else 1 
         end pkey
    from user_tab_columns a
    left join (select b.column_name
                 from user_constraints a
                inner join user_cons_columns b
                   on b.constraint_name = a.constraint_name 
                   where a.constraint_type = 'P'
                     and a.table_name = p_tablename
               ) pkey
         on pkey.column_name = a.column_name
   where table_name = p_tablename
   order by column_id;
   
  return v_cur;
end;


FUNCTION getStepsCursor(
  p_FromValue NUMBER,
  p_ToValue NUMBER,
  p_Step NUMBER,
  p_Pattern VARCHAR2,
  p_OrderBy VARCHAR2
)RETURN SYS_REFCURSOR
AS
  v_Count NUMBER(9);
  v_SQL VARCHAR2(32767);
  v_Cursor SYS_REFCURSOR;
  v_StepNum NUMBER(9);
BEGIN
  v_StepNum := trunc((p_ToValue - p_FromValue)/p_Step);
  FOR v_Count IN 0 .. v_StepNum 
  LOOP
    IF v_SQL is not null THEN
      v_SQL := v_SQL || '
      UNION ALL 
      ';
    END IF;
    v_SQL := v_SQL || 'SELECT ' || TO_CHAR(p_FromValue + (p_Step * v_Count)) || ' ELEMENTVALUE FROM DUAL';
  END LOOP;
  v_SQL := REPLACE( p_Pattern, ':getStepsCursorLIST', v_SQL);
  --dbms_output.put_line(v_SQL);
  OPEN v_Cursor FOR v_SQL;
  RETURN v_Cursor;
END;

FUNCTION GetTrimestre(p_Mese PLS_INTEGER) RETURN PLS_INTEGER
AS
BEGIN
  if COALESCE(p_Mese,0) NOT BETWEEN 1 AND 12 then
    globals.LsErrorFmt( LSGESTERRORS.PARAMETRO_NON_CORRETTO, 'p_Mese' );
  end if;
    
  RETURN TRUNC((p_Mese-1) / 3) + 1;
END;

FUNCTION ExtractFileName(p_FileNameWithPath VARCHAR2) RETURN VARCHAR2
AS
  v_file VARCHAR2(32767);
BEGIN
  -- Parse string for UNIX system
  IF instr(p_FileNameWithPath,'/') > 0 THEN
      v_file := substr(p_FileNameWithPath,(instr(p_FileNameWithPath,'/',-1,1)+1),length(p_FileNameWithPath));

  -- Parse string for Windows system
  ELSIF instr(p_FileNameWithPath,'\') > 0 THEN
      v_file := substr(p_FileNameWithPath,(instr(p_FileNameWithPath,'\',-1,1)+1),length(p_FileNameWithPath));

  ELSIF instr(p_FileNameWithPath,':') > 0 THEN
      v_file := substr(p_FileNameWithPath,(instr(p_FileNameWithPath,':',-1,1)+1),length(p_FileNameWithPath));

  -- If no slashes were found, return the original string
  ELSE
      v_file := p_FileNameWithPath;
  END IF;

  RETURN v_file;
END;


FUNCTION ExtractFilePath(p_FileNameWithPath VARCHAR2) RETURN VARCHAR2
AS
   v_dir VARCHAR2(1500);

BEGIN
  -- Parse string for UNIX system
  IF instr(p_FileNameWithPath,'/') > 0 THEN
      v_dir := substr(p_FileNameWithPath,1,(instr(p_FileNameWithPath,'/',-1,1)));

  -- Parse string for Windows system
  ELSIF instr(p_FileNameWithPath,'\') > 0 THEN
      v_dir := substr(p_FileNameWithPath,1,(instr(p_FileNameWithPath,'\',-1,1)));

  ELSIF instr(p_FileNameWithPath,':') > 0 THEN
      v_dir := substr(p_FileNameWithPath,1,(instr(p_FileNameWithPath,':',-1,1)));

  -- If no slashes were found, return blank string (no path found)
  ELSE
      v_dir := '';
  END IF;

  RETURN v_dir;

END;


FUNCTION RemoveFileExt(p_FileName VARCHAR2) RETURN VARCHAR2
AS
   v_FileName VARCHAR2(32767);
BEGIN
  -- Parse string for UNIX system
  if INSTR(p_FileName,'.') > 0 then
    v_FileName := SUBSTR(p_FileName,1,(INSTR(p_FileName,'.',-1,1)-1));
  else
  -- If no dots were found, return the original string
    v_FileName := p_FileName;
  end if;

  RETURN v_FileName;
END;

-- Ritorna l'estensione di p_FileName, compreso il punto.
-- Ritorna la stringa vuota (NULL) se p_FileName non ha estensione.
-- Ritorna la stringa vuota (NULL) se p_FileName termina con il punto (e quindi non ha estensione).
FUNCTION ExtractFileExt(p_FileName VARCHAR2) RETURN VARCHAR2
AS
  v_PosDot NUMBER(9);
BEGIN
  v_PosDot := INSTR(p_FileName,'.',-1,1); 
  if v_PosDot > 0 then
    if v_PosDot = LENGTH(p_FileName) then -- il punto è l'ultimo carattere di p_FileName, quindi p_FileName non ha estensione
      RETURN ''; -- p_FileName non ha estensione
    else
      RETURN SUBSTR(p_FileName,v_PosDot); -- ritorna l'estensione di p_FileName, compreso il punto
    end if;
  else
    RETURN ''; -- p_FileName non ha estensione
  end if;
END;

-- ChangeFileExt takes the file name passed in p_FileName and changes the extension of the file name to the extension passed in p_Extension.  
-- p_Extension specifies the new extension, including the initial dot character.
-- NOTE: ChangeFileExt does not rename the actual file, it just creates a new file name string.
FUNCTION ChangeFileExt(p_FileName VARCHAR2, p_Extension VARCHAR2) RETURN VARCHAR2
AS
BEGIN
  RETURN RemoveFileExt(p_FileName)||CASE WHEN p_Extension = '.' THEN '' ELSE p_Extension END; -- se l'estensione è solo il punto, non deve essere riportata nel risultato
END;

-- Ritorna il BLOB corrispondente al CLOB p_SourceClob. 
-- p_SourceClob è codificato nel CharSet del database.
-- Il BLOB ritornato sarà codificato nel CharSet p_BlobCharSet (valori possibili: NULL, LsSQL.c_ISO_CHARSET, LsSQL.c_WIN_CHARSET, LsSQL.c_AL32UTF8_CHARSET ...)
-- Se p_BlobCharSet è NULL, il BLOB ritornato sarà uguale a p_SourceClob senza alcuna conversione di caratteri o byte.
-- Se la conversione di qualche carattere non riesce, il carattere non convertito verrà sostituito con un carattere simile o con un punto di domanda rovesciato (byte BF).
FUNCTION ClobToBlob( p_SourceClob CLOB, p_BlobCharSet VARCHAR2 := NULL ) RETURN BLOB
AS
  v_DEST_OFFSET INTEGER;
  v_SRC_OFFSET INTEGER;
  v_LANG_CONTEXT INTEGER;
  v_BLOB_CSID NUMBER;
  v_WARNING INTEGER;
  v_DestBlob BLOB;
  v_Result BLOB;
BEGIN
  v_DEST_OFFSET := 1;
  v_SRC_OFFSET  := 1;
  v_LANG_CONTEXT := 0;
  if p_BlobCharSet IS NULL then
    v_BLOB_CSID := 0; -- usa lo stesso CharSet del LOB sorgente
  else
    v_BLOB_CSID := nls_charset_id(p_BlobCharSet); 
    if v_BLOB_CSID IS NULL then
      globals.LsErrorFmt( LsMessages.CANNOT_CALC_ID_FOR_CHARSET, p_BlobCharSet );
    end if;
  end if;

  DBMS_LOB.CREATETEMPORARY( v_DestBlob, TRUE, DBMS_LOB.CALL );
  DBMS_LOB.CONVERTTOBLOB( v_DestBlob, p_SourceClob, DBMS_LOB.LOBMAXSIZE, v_DEST_OFFSET, v_SRC_OFFSET, v_BLOB_CSID, v_LANG_CONTEXT, v_WARNING );
  if v_WARNING <> 0 then
    globals.LsError( LsMessages.ERR_CONV_CLOB_TO_BLOB );
  end if;
  
  v_Result := v_DestBlob; -- copia v_DestBlob perché verrà distrutto all'uscita di questa funzione
  
  RETURN v_Result;
END;

-- Ritorna il CLOB corrispondente al BLOB p_SourceBlob.
-- Il CLOB ritornato sarà codificato nel CharSet del database.
-- Il BLOB p_SourceBlob è codificato nel CharSet p_BlobCharSet (valori possibili: NULL, LsSQL.c_ISO_CHARSET, LsSQL.c_WIN_CHARSET, LsSQL.c_AL32UTF8_CHARSET ...)
-- Se p_BlobCharSet è NULL, il CLOB ritornato sarà uguale a p_SourceClob senza alcuna conversione di caratteri o byte.
-- Se la conversione di qualche carattere non riesce e p_RaiseException è TRUE, verrà sollevata un'eccezione,
-- altrimenti il carattere non convertito verrà sostituito con un punto di domanda all'interno di un rombo nero (sequenza di bytes EF BF BD) se il DB è UTF-8.
FUNCTION BlobToClob( p_SourceBlob BLOB, p_BlobCharSet VARCHAR2 := NULL, p_RaiseException BOOLEAN := TRUE ) RETURN CLOB
AS
  v_DEST_OFFSET INTEGER;
  v_SRC_OFFSET INTEGER;
  v_LANG_CONTEXT INTEGER;
  v_BLOB_CSID NUMBER;
  v_WARNING INTEGER;
  v_DestClob CLOB;
  v_Result CLOB;
BEGIN
  v_DEST_OFFSET := 1;
  v_SRC_OFFSET  := 1;
  v_LANG_CONTEXT := 0;
  if p_BlobCharSet IS NULL then
    v_BLOB_CSID := 0; -- usa lo stesso CharSet del LOB sorgente
  else
    v_BLOB_CSID := nls_charset_id(p_BlobCharSet); 
    if v_BLOB_CSID IS NULL then
      globals.LsErrorFmt( LsMessages.CANNOT_CALC_ID_FOR_CHARSET, p_BlobCharSet );
    end if;
  end if;

  DBMS_LOB.CREATETEMPORARY( v_DestClob, TRUE, DBMS_LOB.CALL );
  DBMS_LOB.CONVERTTOCLOB( v_DestClob, p_SourceBlob, DBMS_LOB.LOBMAXSIZE, v_DEST_OFFSET, v_SRC_OFFSET, v_BLOB_CSID, v_LANG_CONTEXT, v_WARNING );
  if p_RaiseException and v_WARNING <> 0 then
    globals.LsError( LsMessages.ERR_CONV_BLOB_TO_CLOB );
  end if;
  
  v_Result := v_DestClob; -- copia v_DestClob perché verrà distrutto all'uscita di questa funzione

  RETURN v_Result;
END;

-- Ritorna il CLOB p_SourceClob in un BLOB codificato con il CharSet windows-1252 (Windows Europa Occidentale).
-- Il BLOB ritornato potrà poi essere salvato su un file di testo Windows senza problemi di conversione di caratteri.
-- Se un carattere di p_SourceClob non può essere codificato con il CharSet windows-1252, verrà sostituito con un carattere simile o con un punto di domanda rovesciato (byte BF). 
FUNCTION ClobToTextFileWindows( p_SourceClob CLOB ) RETURN BLOB
AS
BEGIN
  RETURN ClobToBlob( p_SourceClob, LsSQL.c_WIN_CHARSET );
END;

--Ritorna il sesso della persona a partire da un Codice Fiscale
FUNCTION CFisc_GetSesso(p_CFisc  VARCHAR2) RETURN VARCHAR2
AS
  v_Result VARCHAR2(1);
  v_GG     NUMBER(9);  
BEGIN
  
  BEGIN
    v_GG := LsStr.StrToInt(CharOmoCodiciToValue(LsStr.COPY(p_CFisc,10,1))||CharOmoCodiciToValue(LsStr.COPY(p_CFisc,11,1)));
  EXCEPTION
    WHEN OTHERS THEN
      v_Result := '';
  END;

  -- calcola sesso
  if v_GG > 40 then 
    v_Result := LsDbConst.C_FEMMINA;
  else
    v_Result := LsDbConst.C_MASCHIO;
  end if;  
 
  RETURN v_Result;  

END;

-- Ritorna il BLOB corrispondente al CLOB p_Clob che è codificato in base64.
-- Ritorna NULL se p_Clob è NULL.
-- NOTA: prima di essere codificato in base64, dal p_Clob vengono eliminati tutti i caratteri CR, LF, SPAZI e TAB eventualmente presenti.   
FUNCTION Decode_Base64(p_Clob in CLOB) RETURN BLOB 
AS
  -- costanti
  c_BUFFER_SIZE   CONSTANT PLS_INTEGER := 48;

  -- variabili
  v_CleanClob CLOB;
  v_Blob BLOB;
  v_Result BLOB;
  v_OffSet INTEGER;
  v_Buffer_Size BINARY_INTEGER;
  v_Buffer VARCHAR2(50  );
  v_Buffer_Raw RAW(50);
BEGIN
  v_Buffer_Size := c_Buffer_Size;
  
  v_CleanClob := replace( p_clob,      globals.c_CR, null );
  v_CleanClob := replace( v_CleanClob, globals.c_LF, null );
  v_CleanClob := replace( v_CleanClob, globals.c_SPAZIO, null );
  v_CleanClob := replace( v_CleanClob, globals.c_TAB, null );
  
  if v_CleanClob is null then
    return null;
  end if;
  
  dbms_lob.createtemporary(v_Blob, true);
  v_OffSet := 1;
  
  for i in 1 .. ceil(dbms_lob.getlength(v_CleanClob) / v_Buffer_Size)
    loop
      dbms_lob.read(v_CleanClob, v_Buffer_Size, v_OffSet, v_Buffer);
      v_Buffer_Raw := utl_raw.cast_to_raw(v_Buffer);
      v_Buffer_Raw := utl_encode.base64_decode(v_Buffer_Raw);
      dbms_lob.writeappend(v_Blob, utl_raw.length(v_Buffer_Raw), v_Buffer_Raw);
      v_OffSet := v_OffSet + v_Buffer_Size;
    end loop;
  
  v_Result := v_Blob;
  dbms_lob.freetemporary(v_Blob);
  return v_Result;
END;

-- Ritorna il CLOB codificato in base64 corrispondente al BLOB p_blob.
-- Ritorna NULL se p_blob è NULL.
-- Se p_result_with_newlines è TRUE,  il CLOB risultante sarà formato da N linee separate da CRLF, ognuna delle quali lunga 64 caratteri + il CRLF (tranne l'ultima).
-- Se p_result_with_newlines è FALSE, il CLOB risultante sarà formato da un'unica linea senza caratteri di fine-linea.
FUNCTION Encode_Base64(p_blob BLOB, p_result_with_newlines BOOLEAN := FALSE) RETURN CLOB 
AS
  -- variabili
  l_clob                 clob;
  l_step                 pls_integer := 22500; -- make sure you set a multiple of 3 not higher than 24573
  l_converted            varchar2(32767);
  l_buffer_size_approx   pls_integer := 1048576;
  l_buffer               clob;
BEGIN
  if p_blob is null then
    return null;
  end if;

  dbms_lob.createtemporary(l_clob, true);
  dbms_lob.createtemporary(l_buffer, true, dbms_lob.call);

  for i in 0 .. trunc((dbms_lob.getlength(p_blob) - 1 )/l_step) 
  loop
    l_converted := utl_raw.cast_to_varchar2(utl_encode.base64_encode(dbms_lob.substr(p_blob, l_step, i * l_step + 1)));
    dbms_lob.writeappend(l_buffer, length(l_converted), l_converted);

    if dbms_lob.getlength(l_buffer) >= l_buffer_size_approx then
      dbms_lob.append(l_clob, l_buffer);
      dbms_lob.trim(l_buffer, 0);
    end if;
  end loop;

  dbms_lob.append(l_clob, l_buffer);

  dbms_lob.freetemporary(l_buffer);
  
  if coalesce(p_result_with_newlines,false) = false then
    l_clob := replace( l_clob, globals.c_CR, null ); 
    l_clob := replace( l_clob, globals.c_LF, null ); 
  end if;
  
  return l_clob;
END;

-- Ritorna, in formato Base64, il corrispondente valore esadecimale contenuto in p_Hex.
-- Ritorna NULL se p_Hex è NULL.
-- Solleva un'eccezione se p_Hex non contiene un valore esadecimale.
-- NOTA: in p_Hex possono essere usate lettere esadecimali maiuscole o minuscole.
FUNCTION HexToBase64( p_Hex VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  if p_Hex IS NULL then
    RETURN NULL;
  end if;
  
  RETURN UTL_RAW.CAST_TO_VARCHAR2( UTL_ENCODE.BASE64_ENCODE( HEXTORAW(p_Hex) ) );
END;

-- Ritorna, in formato esadecimale (maiuscolo), il corrispondente valore base64 contenuto in p_Base64.
-- Ritorna NULL se p_Base64 è NULL.
-- Solleva un'eccezione se p_Base64 non contiene un valore base64.
FUNCTION Base64ToHex( p_Base64 VARCHAR2 ) RETURN VARCHAR2
AS
BEGIN
  if p_Base64 IS NULL then
    RETURN NULL;
  end if;
  
  RETURN RAWTOHEX( UTL_ENCODE.BASE64_DECODE( UTL_RAW.CAST_TO_RAW(p_Base64) ) );
END;

FUNCTION GetSqlErrmFormatted RETURN VARCHAR2
AS
BEGIN
  RETURN SQLERRM||globals.c_CRLF||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;
END;

END globals;
