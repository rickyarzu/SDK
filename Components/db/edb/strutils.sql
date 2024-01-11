CREATE OR REPLACE PACKAGE strutils IS

TYPE t_Lines IS TABLE OF VARCHAR2(32767); -- Collection di linee ognuna delle quali può essere lunga 32767 caratteri

TYPE t_ArrayOfString IS TABLE OF VARCHAR2(32767); -- simula il tipo Delphi TArrayOfString

PROCEDURE SwapStr(p_S1 IN OUT NOCOPY VARCHAR2, p_S2 IN OUT NOCOPY VARCHAR2);

FUNCTION Copy(p_S VARCHAR2,p_StartIndex PLS_INTEGER,p_Count PLS_INTEGER) RETURN VARCHAR2;

FUNCTION CopyByIndexes(p_S VARCHAR2,p_StartIndex PLS_INTEGER,p_EndIndex PLS_INTEGER) RETURN VARCHAR2;

FUNCTION CopyToEnd(p_S VARCHAR2,p_StartIndex PLS_INTEGER) RETURN VARCHAR2;

FUNCTION DecimalSeparatorOfLanguage( p_Language VARCHAR2 ) RETURN VARCHAR2;
FUNCTION DecimalSeparator RETURN VARCHAR2;

FUNCTION ThousandSeparatorOfLanguage( p_Language VARCHAR2 ) RETURN VARCHAR2;
FUNCTION ThousandSeparator RETURN VARCHAR2;

FUNCTION GetStringPart(P_string VARCHAR2,P_count NUMBER,P_separator VARCHAR2) RETURN VARCHAR2;

FUNCTION CountSubstrings(p_Separator VARCHAR2, p_S VARCHAR2) RETURN PLS_INTEGER;
FUNCTION CountSubstringsCLOB(p_Separator VARCHAR2, p_S CLOB) RETURN PLS_INTEGER;

FUNCTION IsAlpha(p_C VARCHAR2) RETURN BOOLEAN;
FUNCTION IsRegExpLike( p_Str VARCHAR2, p_RegExp VARCHAR2) RETURN BOOLEAN;

FUNCTION IsDigit(p_Ch VARCHAR2) RETURN BOOLEAN;

FUNCTION IsStringOfDigit(p_Str VARCHAR2) RETURN BOOLEAN;

FUNCTION IsEmpty(p_S VARCHAR2) RETURN BOOLEAN;

FUNCTION IsEqual(p_S1 VARCHAR2,p_S2 VARCHAR2) RETURN BOOLEAN;

FUNCTION IsUguali(
  p_S1 VARCHAR2,
  p_S2 VARCHAR2
) RETURN NUMBER;

FUNCTION IsDifferent(p_S1 VARCHAR2,p_S2 VARCHAR2) RETURN BOOLEAN;

FUNCTION IsDifferenti(
  p_S1 VARCHAR2,
  p_S2 VARCHAR2
) RETURN NUMBER;

FUNCTION LeftString(p_S VARCHAR2,p_NumCaratteri  PLS_INTEGER) RETURN VARCHAR2;

FUNCTION RightString(p_S VARCHAR2,p_NumCaratteri  PLS_INTEGER) RETURN VARCHAR2;

FUNCTION Len(p_S VARCHAR2) RETURN PLS_INTEGER;

FUNCTION LetteraToNumero(p_Lettera VARCHAR2) RETURN PLS_INTEGER;

FUNCTION NumeroToLettera(p_Numero PLS_INTEGER) RETURN VARCHAR2;

FUNCTION PAD(p_STR VARCHAR2,p_STRCHAR VARCHAR2,p_SIZE PLS_INTEGER,p_RIGHT BOOLEAN := TRUE) RETURN VARCHAR2;

FUNCTION PAD_NUM(p_STR VARCHAR2,p_STRCHAR VARCHAR2,p_SIZE PLS_INTEGER,p_RIGHT NUMBER := 1) RETURN VARCHAR2;

FUNCTION PadL(p_InString VARCHAR2,p_Len PLS_INTEGER,p_FChar VARCHAR2) RETURN VARCHAR2;

FUNCTION PadR(p_InString VARCHAR2,p_Len PLS_INTEGER,p_FChar VARCHAR2) RETURN VARCHAR2;

FUNCTION PadRFixed( p_InString VARCHAR2, p_Len PLS_INTEGER, p_FChar VARCHAR2 ) RETURN VARCHAR;

FUNCTION PadLFixed( p_InString VARCHAR2, p_Len PLS_INTEGER, p_FChar VARCHAR2 ) RETURN VARCHAR;

FUNCTION Replicate(p_Str VARCHAR2,p_Num PLS_INTEGER) RETURN VARCHAR2;

FUNCTION SameText(p_S1 VARCHAR2,p_S2 VARCHAR2) RETURN BOOLEAN;

FUNCTION STR(p_Valore FLOAT,p_Lunghezza PLS_INTEGER := 10,p_CifreDecimali PLS_INTEGER := 0) RETURN VARCHAR2;

FUNCTION StrSoloDigitAndChar(p_Str VARCHAR2) RETURN BOOLEAN;

FUNCTION IntToStr(p_I PLS_INTEGER) RETURN VARCHAR2;

FUNCTION StrToInt(p_S VARCHAR2) RETURN PLS_INTEGER;

FUNCTION StrToIntDef(p_S VARCHAR2,p_DefaulValue PLS_INTEGER) RETURN PLS_INTEGER;

FUNCTION StrToIntDelphi(
  p_S VARCHAR2
) RETURN PLS_INTEGER;

FUNCTION StrToIntDefDelphi(
  p_S           VARCHAR2,
  p_DefaulValue PLS_INTEGER
) RETURN PLS_INTEGER;

FUNCTION TryStrToInt(
  p_S           VARCHAR2,
  p_Value       OUT NOCOPY PLS_INTEGER
) RETURN BOOLEAN;

FUNCTION FORMAT_DECIMAL_BASE(
  p_Valore                FLOAT,
  p_CifreDecimali         PLS_INTEGER,
  p_SeparatoreDecimale    VARCHAR2,
  p_SeparatoreMigliaia    VARCHAR2,
  p_Arrotonda             BOOLEAN := TRUE,
  p_ConSeparatoreMigliaia BOOLEAN := TRUE,
  p_AddDecimalZeros       BOOLEAN := FALSE
) RETURN VARCHAR2;

FUNCTION FORMAT_DECIMAL(
  p_Valore                FLOAT,
  p_CifreDecimali         PLS_INTEGER,
  p_Arrotonda             BOOLEAN := TRUE,
  p_ConSeparatoreMigliaia BOOLEAN := TRUE,
  p_FormatoInglese        BOOLEAN := FALSE,
  p_AddDecimalZeros       BOOLEAN := FALSE,
  p_Language              VARCHAR2 := NULL
) RETURN VARCHAR2;

FUNCTION FORMAT_DECIMAL_NUMBER(
  p_Valore                FLOAT,
  p_CifreDecimali         PLS_INTEGER,
  p_Arrotonda_Num             NUMBER:= 1,
  p_ConSeparatoreMigliaia_Num NUMBER:= 1,
  p_FormatoInglese_Num        NUMBER:= 0,
  p_AddDecimalZeros_Num       NUMBER:= 0,
  p_Language                  VARCHAR2 := NULL
) RETURN VARCHAR2;

FUNCTION FORMAT_MONEY(
  p_Valore                NUMBER,
  p_CifreDecimali         PLS_INTEGER,
  p_Arrotonda             BOOLEAN := TRUE,
  p_ConSeparatoreMigliaia BOOLEAN := TRUE,
  p_FormatoInglese        BOOLEAN := FALSE,
  p_AddDecimalZeros       BOOLEAN := FALSE,
  p_Language              VARCHAR2 := NULL
) RETURN VARCHAR2;

FUNCTION Format(
  p_String  VARCHAR2, -- stringa contenente il testo e le seguenti stringhe di formattazione: %d, %u, %e, %f, %g, %n, %m, %p, %s, %x.
  p_Values  VARCHAR2  -- contiene i valori (separati dal carattere LsGlobal.c_PARAMETERS_SEPARATOR) da sostituire alle stringhe di formattazione.
) RETURN VARCHAR2;

FUNCTION LsFormat(
  p_String  VARCHAR2, -- stringa contenente il testo e le seguenti stringhe di formattazione: %d, %u, %e, %f, %g, %n, %m, %p, %s, %x.
  p_Values  VARCHAR2  -- contiene i valori (separati dal carattere LsGlobal.c_PARAMETERS_SEPARATOR) da sostituire alle stringhe di formattazione.
) RETURN VARCHAR2;

FUNCTION AppendLine(
  p_source  VARCHAR2, -- stringa base
  p_add  VARCHAR2     -- stringa da aggiungere su nuova riga
) RETURN VARCHAR2;

FUNCTION AppendLine(
  p_source  CLOB, -- stringa base
  p_add  CLOB     -- stringa da aggiungere su nuova riga
) RETURN CLOB;

FUNCTION AppendLine(
  p_source  CLOB, -- stringa base
  p_add  VARCHAR2 -- stringa da aggiungere su nuova riga
) RETURN CLOB;

FUNCTION StrAppendLine(
  p_source  VARCHAR2, -- stringa base
  p_add  VARCHAR2     -- stringa da aggiungere su nuova riga
) RETURN VARCHAR2;

FUNCTION StrAppendLine(
  p_source  CLOB, -- stringa base
  p_add  CLOB     -- stringa da aggiungere su nuova riga
) RETURN CLOB;

FUNCTION StrAppendLine(
  p_source  CLOB, -- stringa base
  p_add  VARCHAR2 -- stringa da aggiungere su nuova riga
) RETURN CLOB;

FUNCTION InsertFirstLine(
  p_source  VARCHAR2,    -- stringa base
  p_firstLine  VARCHAR2  -- stringa da aggiungere all'inizio
) RETURN VARCHAR2;

FUNCTION InsertFirstLine(
  -- Ritorna la stringa da aggiungere in prima riga, un new line (LsGlobal.c_CRLF) e la stringa passata
  p_source  CLOB,    -- stringa base
  p_firstLine  CLOB  -- stringa da aggiungere all'inizio
) RETURN CLOB;

FUNCTION StrInsertFirstLine(
  p_source  VARCHAR2, -- stringa base
  p_firstLine  VARCHAR2     -- stringa da aggiungere all'inizio
) RETURN VARCHAR2;

FUNCTION CifraToValore(
  p_Cifra VARCHAR2
) RETURN PLS_INTEGER;

FUNCTION ValoreToCifra(
  p_Valore PLS_INTEGER
) RETURN VARCHAR2;

FUNCTION Pos(
  p_SubStr        VARCHAR2,
  p_S             VARCHAR2
) RETURN PLS_INTEGER;

FUNCTION StrContains(
  p_SubStr        VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE)
RETURN BOOLEAN;

FUNCTION PosStr(
  p_SubStr        VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE,
  p_StartIndex    PLS_INTEGER := 1
) RETURN PLS_INTEGER;

FUNCTION PosStrBack(
  p_SubStr        VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE,
  p_StartIndex    PLS_INTEGER := 32767
) RETURN PLS_INTEGER;

FUNCTION PosChar( p_Ch VARCHAR2, p_S VARCHAR2, p_CaseSensitive BOOLEAN := FALSE, p_StartIndex PLS_INTEGER := 1 ) RETURN PLS_INTEGER;

FUNCTION PosWord(
  p_WordStr       VARCHAR2,
  p_S             VARCHAR2,
  p_CaseSensitive BOOLEAN := FALSE,
  p_StartIndex    PLS_INTEGER := 1
) RETURN PLS_INTEGER;

FUNCTION DuplicateChar( p_S VARCHAR2, p_C VARCHAR2 ) RETURN VARCHAR2;

FUNCTION QuotedStr(
  p_S VARCHAR2
) RETURN VARCHAR2;

FUNCTION DoubleQuote( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION FloatToStrOfLanguage(
  p_Value FLOAT,
  p_Language VARCHAR2
) RETURN VARCHAR2;

FUNCTION FloatToStr(
  p_Value FLOAT
) RETURN VARCHAR2;

FUNCTION StrToFloat(
  p_Value VARCHAR2
) RETURN FLOAT;

FUNCTION FloatToStrIta(
  p_Value FLOAT
) RETURN VARCHAR2;

FUNCTION StrToFloatIta(
  p_Value VARCHAR2
) RETURN FLOAT;

FUNCTION FloatToStrEng(
  p_Value FLOAT
) RETURN VARCHAR2;

FUNCTION StrToFloatEng(
  p_Value VARCHAR2
) RETURN FLOAT;

FUNCTION StrToFloatEngIta(
  p_Value VARCHAR2
) RETURN FLOAT;

FUNCTION CurrToStrOfLanguage(
  p_Value NUMBER,
  p_Language VARCHAR2
) RETURN VARCHAR2;

FUNCTION CurrToStr(
  p_Value NUMBER
) RETURN VARCHAR2;

FUNCTION StrToCurr(
  p_Value VARCHAR2
) RETURN NUMBER;

FUNCTION CurrToStrEng(
  p_Value NUMBER
) RETURN VARCHAR2;

FUNCTION StrToCurrEng(
  p_Value VARCHAR2
) RETURN NUMBER;

FUNCTION CurrToStrIta(
  p_Value NUMBER
) RETURN VARCHAR2;

FUNCTION StrToCurrIta(
  p_Value VARCHAR2
) RETURN NUMBER;

FUNCTION StrToCurrEngIta(
  p_Value VARCHAR2
) RETURN NUMBER;

FUNCTION StrToBoolean( p_S VARCHAR2 ) RETURN BOOLEAN;

FUNCTION BooleanToStr( p_B BOOLEAN ) RETURN VARCHAR2;

FUNCTION BooleanToStrAlphabetic( p_B NUMBER ) RETURN VARCHAR2;

FUNCTION Get_LIKE( p_Field VARCHAR2, p_Value VARCHAR2 ) RETURN VARCHAR2;

FUNCTION Get_LIKE_BOTH_PERC( p_Field VARCHAR2, p_Value VARCHAR2 ) RETURN VARCHAR2;

FUNCTION ImportoDivisaToStr( p_Importo NUMBER, p_Sigla VARCHAR2, p_NumDecimali PLS_INTEGER := globals.c_CURRENCY_DISPLAY_DECIMALS ) RETURN VARCHAR2;

FUNCTION ImportoDivisaToStrNULL( p_Importo NUMBER, p_Sigla VARCHAR2, p_NumDecimali PLS_INTEGER := globals.c_CURRENCY_DISPLAY_DECIMALS ) RETURN VARCHAR2;

FUNCTION ImportoDivisaToStrENG( p_Importo NUMBER, p_Sigla VARCHAR2, p_NumDecimali PLS_INTEGER := globals.c_CURRENCY_DISPLAY_DECIMALS ) RETURN VARCHAR2;

FUNCTION StringOfChar( p_Ch VARCHAR2, p_Count PLS_INTEGER ) RETURN VARCHAR2;

FUNCTION CleanStr( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION CleanWithSpaces( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION Clean( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION CleanControlsChars( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION CleanWhitespaceChars( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION CleanNoAscii( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION ReplaceNoAscii( p_S VARCHAR2, p_StrReplaceValue VARCHAR2 := ' ' ) RETURN VARCHAR2;
FUNCTION ReplaceNoAnsi( p_S VARCHAR2, p_StrReplaceValue VARCHAR2 := ' ', p_Preserve_CR_LF_TAB NUMBER/*Boolean*/ := 0/*FALSE*/ ) RETURN VARCHAR2;

FUNCTION CleanMemo( p_Memo CLOB ) RETURN CLOB;

FUNCTION TrimLeft( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION TrimRight( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION GetStrSenzaAccenti( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION GetStrConSoleLettere( p_S VARCHAR2 ) RETURN VARCHAR2 DETERMINISTIC;

FUNCTION SPACE( p_N PLS_INTEGER ) RETURN VARCHAR2;

FUNCTION IsStringOfDigitSQL(p_Str VARCHAR2) RETURN NUMBER;

FUNCTION AddBackSlash(p_S VARCHAR2) RETURN VARCHAR2;

FUNCTION RemoveBackSlash(p_S VARCHAR2) RETURN VARCHAR2;

FUNCTION GetFixedStr( p_S VARCHAR2, p_FixedLen PLS_INTEGER ) RETURN VARCHAR;

FUNCTION GetFixedInt( p_N PLS_INTEGER, p_FixedLen PLS_INTEGER ) RETURN VARCHAR2;

FUNCTION GetFixedFloat( p_N FLOAT, p_FixedLen PLS_INTEGER, p_Decimals PLS_INTEGER ) RETURN VARCHAR2;

FUNCTION VerificaStrSoloChar(  p_Str VARCHAR2)RETURN BOOLEAN;

FUNCTION VerificaStrSoloDigit(  p_Str VARCHAR2)RETURN BOOLEAN;

function ReplaceWord( p_S VARCHAR2,
                      p_OldWord VARCHAR2,
                      p_NewWord VARCHAR2,
                      p_CaseSensitive  BOOLEAN := False
                      ) return varchar2;

function ReplaceWordForSql(
  p_S              IN VARCHAR2,
  p_OldWordArr     IN t_ArrayOfString,
  p_NewWordArr     IN t_ArrayOfString,
  p_CaseSensitive  IN BOOLEAN := False
) return varchar2;

function ReplaceWordForSql(
  p_S              IN VARCHAR2,
  p_OldWord        IN VARCHAR2,
  p_NewWord        IN VARCHAR2,
  p_CaseSensitive  IN BOOLEAN := False
) return varchar2;

FUNCTION LsINSTR( p_String     VARCHAR2,
                  p_SubString  VARCHAR2,
                  p_Position   PLS_INTEGER := 1,
                  p_Occurrence PLS_INTEGER := 1 )
RETURN PLS_INTEGER;

FUNCTION CHARINDEX( p_expression1 VARCHAR2, p_expression2 VARCHAR2, p_start_location PLS_INTEGER := 1 ) RETURN PLS_INTEGER;

FUNCTION CLOBtoVARCHAR2( p_Clob CLOB, p_MaxLength NUMBER := 32767, p_AddEllipsis NUMBER := 0/*Boolean*/ ) RETURN VARCHAR2;

FUNCTION dump_query_to_csv (
     p_query      IN   CLOB,
     p_DateFormat IN VARCHAR2 := NULL,
     p_separator     VARCHAR2 := '',
     p_Delimitatore  VARCHAR2 := ''
  ) RETURN CLOB;

FUNCTION GetLinesFromCLOB( p_CLOB CLOB ) RETURN t_Lines;
FUNCTION CountLinesFromCLOB( p_CLOB CLOB, p_LINELIMIT NUMBER := NULL ) RETURN NUMBER;

FUNCTION GetCLOBwithCRLF( p_CLOB CLOB ) RETURN CLOB;
FUNCTION GetCLOBwithoutCTRLZ( p_CLOB CLOB ) RETURN CLOB;

FUNCTION ToString(p_InputValue VARCHAR2) RETURN VARCHAR2;
FUNCTION ToString(p_InputValue PLS_INTEGER) RETURN VARCHAR2;
FUNCTION ToString(p_InputValue NUMBER) RETURN VARCHAR2;
-- FUNCTION ToString(p_InputValue DATE) RETURN VARCHAR2;
--FUNCTION ToString(p_InputValue FLOAT) RETURN VARCHAR2;
FUNCTION ToString(p_InputValue BOOLEAN) RETURN VARCHAR2;

FUNCTION CountChars(
  p_Str VARCHAR2,
  p_Chr VARCHAR2
) RETURN NUMBER;

FUNCTION GetStrPart(
  p_Stringa    VARCHAR2,
  p_Separatore VARCHAR2:= '|',
  p_Posizione  PLS_INTEGER
) RETURN VARCHAR2;

FUNCTION GetStrPart(
  p_Stringa    CLOB,
  p_Separatore VARCHAR2 := '|',
  p_Posizione  INTEGER -- numero del campo voluto
) RETURN CLOB;

FUNCTION StringReplace( p_S VARCHAR2, p_OldPattern VARCHAR2, p_NewPattern VARCHAR2,
                        p_rfReplaceAll BOOLEAN := FALSE, p_rfIgnoreCase BOOLEAN := FALSE ) RETURN VARCHAR2;

FUNCTION FirstStringReplace( p_S CLOB, p_OldPattern CLOB, p_NewPattern CLOB ) RETURN CLOB;

FUNCTION GetLikeOrExactMatch( p_Field VARCHAR2, p_Value VARCHAR2 ) RETURN VARCHAR2;


FUNCTION LsLike(p_FieldValue VARCHAR2, p_LikeCond VARCHAR2) RETURN BOOLEAN;


FUNCTION formatNumberToStrFromSession(
  p_BO_SessionID VARCHAR2,
  p_Number NUMBER
) RETURN VARCHAR2;

FUNCTION ValidFileName_Number(p_FileName VARCHAR2, p_ValidChar VARCHAR2 := '_', p_SpaceIsValid NUMBER := 0) RETURN VARCHAR2;

FUNCTION ValidFileName(p_FileName VARCHAR2, p_ValidChar VARCHAR2 := '_', p_SpaceIsValid BOOLEAN := False) RETURN VARCHAR2;

FUNCTION isValidFileName(p_FileName VARCHAR2, p_ListNotValidChar OUT NOCOPY VARCHAR2)RETURN BOOLEAN;

FUNCTION GetPrefissoIndirizzo(p_Indirizzo VARCHAR2, p_MaxLength NUMBER) RETURN VARCHAR2;

FUNCTION UpperToLowerCap( p_Stringa VARCHAR2 ) RETURN VARCHAR2;

FUNCTION AddPrefixToAllLines( p_Prefix VARCHAR2, p_S CLOB ) RETURN CLOB;

FUNCTION ToString(p_InputValue TIMESTAMP) RETURN VARCHAR2;

FUNCTION StrToUni( p_S VARCHAR2 ) RETURN VARCHAR2;

FUNCTION TrimLeftPad( p_S VARCHAR2, p_P CHAR ) RETURN VARCHAR2;

FUNCTION TrimRightPad( p_S VARCHAR2, p_P CHAR ) RETURN VARCHAR2;

FUNCTION AppendStr(
  p_source  VARCHAR2, -- stringa base
  p_add  VARCHAR2     -- stringa da aggiungere 
) RETURN VARCHAR2;

FUNCTION VerificaZeroInString( p_String    VARCHAR2 ) RETURN BOOLEAN;

FUNCTION GetUniversalStr( p_IntegerValue PLS_INTEGER ) RETURN VARCHAR2;
FUNCTION GetUniversalStr( p_NumberValue NUMBER ) RETURN VARCHAR2;
--FUNCTION GetUniversalStr( p_DateValue DATE ) RETURN VARCHAR2;
FUNCTION GetUniversalStr( p_TimeStampValue TIMESTAMP ) RETURN VARCHAR2;
FUNCTION GetUniversalStr( p_BooleanValue BOOLEAN ) RETURN VARCHAR2;

FUNCTION formatForHistorical(p_Var NUMBER) RETURN VARCHAR2;
FUNCTION formatForHistorical(p_Var DATE) RETURN VARCHAR2;
FUNCTION formatForHistorical(p_Var VARCHAR) RETURN VARCHAR2;

PROCEDURE CheckStrValue( p_Str VARCHAR2, p_StrDesc VARCHAR2, p_ValoreObbligatorio BOOLEAN := FALSE, p_MinLen PLS_INTEGER := 0, p_MaxLen PLS_INTEGER := globals.c_MAX_INTEGER, p_ValoriAmmessi VARCHAR2 := NULL, p_Separatore VARCHAR2 := ';', p_CaseSensitive BOOLEAN := FALSE );

FUNCTION Stuff( p_InputString VARCHAR2, p_Start PLS_INTEGER, p_Length PLS_INTEGER, p_ReplaceString VARCHAR2 ) RETURN VARCHAR;

FUNCTION CompareStr( p_S1 VARCHAR2, p_S2 VARCHAR2 ) RETURN PLS_INTEGER;
FUNCTION CompareText( p_S1 VARCHAR2, p_S2 VARCHAR2 ) RETURN PLS_INTEGER;

PROCEDURE SubstChar( p_S IN OUT NOCOPY VARCHAR2, p_Index PLS_INTEGER, p_NewChar VARCHAR2 );

FUNCTION ReplaceSubStr( p_S VARCHAR2, p_OldPattern VARCHAR2, p_NewPattern VARCHAR2,
                        p_SoloLaPrima NUMBER := 1/*Boolean*/, p_CaseSensitive NUMBER := 0/*Boolean*/ ) RETURN VARCHAR2;

FUNCTION CurrencyToStrWithDecimalPoint( p_Valore NUMBER, p_CifreDecimali PLS_INTEGER := 4 ) RETURN VARCHAR2;
FUNCTION EliminaSeparatoriDaValori(p_Valore VARCHAR2) RETURN VARCHAR2; 

FUNCTION IsControlChar( p_Char VARCHAR2 ) RETURN BOOLEAN;
FUNCTION IsWhiteSpaceChar( p_Char VARCHAR2 ) RETURN BOOLEAN;

-- Funzioni per il tipo t_ArrayOfString (simulano le relative funzioni Delphi sull'array dinamico TArrayOfString: Length, SetLength, lettura/scrittura elemento, Low, High ) 
FUNCTION ArrayLength( p_Array t_ArrayOfString ) RETURN PLS_INTEGER;
PROCEDURE ArraySetLength( p_Array IN OUT NOCOPY t_ArrayOfString, p_NewLength PLS_INTEGER );
FUNCTION ArrayGetElement( p_Array t_ArrayOfString, p_Index PLS_INTEGER ) RETURN VARCHAR2;
PROCEDURE ArraySetElement( p_Array IN OUT NOCOPY t_ArrayOfString, p_Index PLS_INTEGER, p_Value VARCHAR2 );
FUNCTION ArrayLow( p_Array t_ArrayOfString ) RETURN PLS_INTEGER;
FUNCTION ArrayHigh( p_Array t_ArrayOfString ) RETURN PLS_INTEGER;

FUNCTION IsValidEmailAddress( p_Email VARCHAR2 ) RETURN BOOLEAN;
--Come la IsValidEmailAddress ma può ricevere più indirizzi email separati da p_separator, validando tutti gli indirizzi mail contenuti in p_EMail. Ritorna True se tutti sono ok.
FUNCTION IsValidMultiEmailAddress( p_Email VARCHAR2, p_Separator VARCHAR2 ) RETURN BOOLEAN;


FUNCTION CheckChar( p_field_in VARCHAR2) RETURN NUMBER;

FUNCTION StrBeginWith( p_S VARCHAR2, p_BeginStr VARCHAR2, p_CaseSensitive BOOLEAN := FALSE ) RETURN BOOLEAN;
FUNCTION StrEndWith( p_S VARCHAR2, p_EndingStr VARCHAR2, p_CaseSensitive BOOLEAN := FALSE ) RETURN BOOLEAN;

FUNCTION StrToArrayOfStr( p_Separator VARCHAR2, p_S VARCHAR2, p_A IN OUT NOCOPY t_ArrayOfString, p_TrimStrings BOOLEAN := TRUE ) RETURN PLS_INTEGER;
FUNCTION StrDigitAndChar(p_Str VARCHAR2) RETURN BOOLEAN;

END strutils;
