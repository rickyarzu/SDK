unit Janua.Core.Exceptions;

{ generic exception handler component }

interface

{$I JANUACORE.INC}

uses
  System.SysUtils, System.Classes,
  // Win Api only Win32/64 Systems.........................................
  Data.DB,
  Janua.Core.Classes;
// TaskDialog, TaskDialogEx;

type
  TCustomExceptionHandler = class(TJanuaCoreComponent)
  private
    { Private declarations }
    Function SpiegaOracle(stringa: string; analisi: string; extended: string): Boolean;
    Function SpiegaKey: Boolean;
    function SpiegaAccess: Boolean;
  strict protected
    FSilent: Boolean;
    FLogFileName: string;
    FRiga: string;
    FContenuto: string;
    FEsteso: string;
    FStackTrace: string;
    function GetLogFileName: string;
    procedure SetLogFileName(const Value: string);
    procedure SetSilent(const Value: Boolean);
  protected
    function InternalActivate: Boolean; override;
    { Protected declarations }
  public
    { Public declarations }
    procedure OnDo(Sender: TObject; E: Exception); virtual;
    function OpenDataset(Dataset: TDataset): Boolean;
    // procedure ExecuteProcedure(aProcedure: TUniStoredProc); overload;
    // procedure ExecuteProcedure(aProcedure: TOraStoredProc); overload;
    procedure ErrorMessageExtended; virtual; abstract;
    procedure ErrorMessage(smessage: string; sexplain: string); virtual; abstract;
    procedure ExceptionHandler(Sender: TObject; E: Exception);
  published
    { Published declarations }
    property LogFileName: string read FLogFileName write SetLogFileName;
    property Silent: Boolean read FSilent write SetSilent;
  end;

  { procedure ErrorMessage(smessage: string; sexplain: string);
    procedure ErrorMessageExtended(smessage: string; sexplain: string; sContext: string); }

type
  TJanuaCoreExceptionHandler = class(TCustomExceptionHandler);

implementation

uses System.IOUtils, Janua.Application.Framework, Janua.Core.Functions, Janua.Core.StackTrace;

function TCustomExceptionHandler.SpiegaAccess: Boolean;
begin
  FRiga := (
    'Attenzione errore di sovraccarico memoria del programma, potrebbe essere necessario riavviare Console');
  FContenuto := 'ERRORE DI ACCESSO ALLA MEMORIA : ' + sl +
    'Generalmente questo errore si verifica in due casi :' + sl +
    '1. La memoria del sistema non � sufficiente a gestire le applicazioni attualmente attive.' + sl +
    '2. Il programma ha cercato di accedere ad una componente che non � stata trovata.' + sl +
    'In entrambi i casi consigliamo di:' + sl +
    '1. Uscire immediatamente dal programma e di chiudere tutte le applicazioni attive nel computer' + sl +
    '2. Verificare che altre postazioni di lavoro collegate in rete siano "ferme" nessun programma attivo' +
    sl + '3. Riavviare il computer' + sl + '4. Entrare nel programma e verificare le funzionalit� principali'
    + sl + '5. Se qualcosa non sembra funzionare regolarmente chiamare immediatamente il servizio assistenza e attendere l''intervento';
  Result := True;
end;

Function TCustomExceptionHandler.SpiegaOracle(stringa: string; analisi: string; extended: string): Boolean;
var
  errore: string;
begin
  // **************************************************************************
  // *** Gli errori oracle sono divis in catgegorie  ........................
  // ***  01400 = constraint: capisco che erorre dare dalla pos di un campo x
  // ***  00001 = chiave PK-UK: capisco che erroredare dal nome della chiave UP
  // ***  00001 = chiave PK-UK: capisco che erroredare dal nome della chiave UP
  // ***  02292 = chiave FK: decido il messaggio dal nome della chiave
  // esempio: chiamo la chiave TRATORD_FK il messaggio sar�
  // atenzione non potete eliminare una tratativa legata ad un ordine ...

  /// per� mettiamo ance quello per la fattura duplicata sullo stesso forn che serve
  /// s� ma l� sar� credo un tipo di coidce errore ora-xxxx diferente 0001 credo
  /// l� devi trovare il nome della chiave di errore ok? dal log
  ///

  errore := copy(stringa, 5, 5);
  if errore = '01400' then
  begin
    if (pos('AN_PI_CF', stringa) > 0) and (pos('"PI_CF"', stringa) > 0) then
      FRiga := ('Attenzione inserita una FRiga nulla in tabella anagrafica partita iva. Tabella:AN_PI_CF' + sl
        + 'premere Esc per annullare l''inserimento')
    else if (pos('DOC_PASSANGER_LIST', stringa) > 0) and (pos('"ETA"', stringa) > 0) then
      FRiga := (
        'Attenzione inserito un passeggero in polizza senza specificare et�. (ORA-01400) Tabella:DOC_PASSANGER_LIST'
        + sl + 'premere Esc per annullare l''inserimento')
    else if (pos('ANAGRAFICA', stringa) > 0) and (pos('"COGNOME"', stringa) > 0) then
      FRiga := ('Attenzione inserito cognome nullo o non valido. (ORA-01400) Tabella:ANAGRAFICA' + sl +
        'premere Esc per annullare l''inserimento')
    else if (pos('ANAGRAFICA', stringa) > 0) and (pos('"ANAGRAFICA_ID"', stringa) > 0) then
      FRiga := (
        'Attenzione inserita FRiga nulla in scheda anagrafica, contattare assistenza. (ORA-01400) Tabella:ANAGRAFICA'
        + sl + 'premere Esc per annullare l''inserimento')
    else if (pos('AN_PASSANGER_LIST', stringa) > 0) and (pos('"SESSO"', stringa) > 0) then
      FRiga := (
        'Attenzione inserita FRiga in passanger List senza specificare il sesso. (ORA-01400) Tabella:ANAGRAFICA'
        + sl + 'premere Esc per annullare l''inserimento oppure compilare correttamente la colonna sesso')
    else
      FRiga := (
        'Attenzione, non � stato compilato un campo o non � stato completato un passaggio nell''inserimento del record.'
        + sl + 'Provate a ripeter il passaggio che stavate eseguendo o premete il pulsante "Esc" sulla tastiera o il comando annulla del documento che stavate realizzando.');

    Result := True;
  end;
  // fine errore campo non null
  if errore = '00001' then
  begin
    if (pos('PDMST_UK_AU_TRG', stringa) > 0) then
      FRiga := ('Attenzione inserita FRiga Duplicata in scheda scrittura. ' + sLineBreak +
        'Causa dell''errore: immesso un numero di documento identico per il medesimo fornitore nello stesso esercizio')
    else if pos('PLAN_FAMIGLIE_AREEES_PK', stringa) > 0 then
      FRiga := (
        'Attenzione, � stato immesso un valore duplicato nella tabella, forse avete inserito due volte la stessa famiglia.'
        + sl + 'premere Esc per annullare l''inserimento')
    else if pos('COND_APPL_PK', stringa) > 0 then
      FRiga := (
        'Attenzione, � stato immesso un valore duplicato nella tabella, forse avete inserito due volte lo stesso termine di pagamento.'
        + sl + 'premere Esc per annullare l''inserimento')
    else if pos('DOCPASS_PK', stringa) > 0 then
      FRiga := ('Attenzione, � stato immesso un nome duplicato in passanger list, omonimo e della stessa et�.'
        + sl + 'premere Esc per annullare l''inserimento')
    else if pos('NUOVA_TARGA', stringa) > 0 then
      FRiga := ('Attenzione, � stata immessa una targa omonima nella polizza. (codice: NUOVA_TARGA J001)' + sl
        + 'premere Esc per annullare l''inserimento')
    else if pos('ORDVEI_TARGA_UK', stringa) > 0 then
      FRiga := ('Attenzione, � stata immessa una targa omonima nella prenotazione.' + sl +
        '(ORA-00001 prenotazioni veicoli) premere Esc per annullare l''inserimento')
    else if pos('ORDPASS_PK', stringa) > 0 then
      FRiga := (
        'Attenzione, � stato immesso un nome duplicato in passanger list, omonimo con stessa data di nascita.'
        + sl + '(ORA-00001 ordini pass. list) premere Esc per annullare l''inserimento')
    else if pos('ANPICF_PK', stringa) > 0 then
      FRiga := ('Attenzione, � stata immessa una partita iva duplicata (ORA-00001 AN_PI_CF).' + sl +
        'premere Esc per annullare l''inserimento')
    else if pos('ESERCIZI_PK', stringa) > 0 then
      FRiga := ('Attenzione, � stato immesso un anno duplicato nella tabella esercizio (ORA-00001 ESERCIZI).'
        + 'premere Esc per annullare l''inserimento')
    else if pos('SHLINPERDISC_PK', stringa) > 0 then
      FRiga := (
        'Attenzione, � stato immesso uno sconto duplicato nella tabella degli sconti stagionali (ORA-00001 SCONTI PER LINEA E STAGIONE).'
        + sl + 'premere Esc per annullare l''inserimento')
      // ****** messaggio di errore documenti duplicati ************************
      // *** ora dai log devi trovare il mesaggio di erorre chiave dei doc....
      // per trovare ilnome chiave occorre trovare il logo  o legere il trigger
      // da documenti....
    else if pos('NUMERO_DUPLICATO', stringa) > 0 then
      FRiga := (
        'Attenzione, si sta cercando di inserire un documento gi� presente in archivio(ORA-00001 DOCUMENTO GIA'' INSERITO).'
        + sl + 'premere Esc per annullare l''inserimento')
    else
      FRiga := (
        'Attenzione, � stata inserita una FRiga duplicata (ORA-00001), premere Esc per annullare l''inserimento');
    Result := True;
  end
  else if errore = '00942' then
  begin
    FRiga := ('Attenzione, il sistema non trova una tabella.' + sl +
      'Probabilmente il vostro sistema va aggiornato. Contattate immediatamente studio Arduino riferendo il seguente errore:');
    Result := True;
  end
  else if errore = '01017' then
  begin
    FRiga := ('Attenzione, � stato inserito un utente o una password errata.' + sl +
      '� possibile eseguire non pi� di 3 tentativi.....:');
    Result := True;
  end
  else if errore = '02291' then
  begin
    FRiga := ('Attenzione, � stato inserito un valore non presente in una tabella di decodifica.' + sl +
      'Il valore che � stato inserito non � valido, non corrisponde a un valore riconosciuto dal sistema'

      );
    Result := True;
  end
  else if errore = '02292' then
  begin

    if pos('ACPDCATEG_ATE_FK', stringa) > 0 then
      FRiga := (' non si pu� cancellare questa famiglia perch� possiede dei record collegati in catalogo.')
    else if pos('AC_CATEGORIE_FAMIGLIE_FK', stringa) > 0 then
      FRiga := (' non si pu� cancellare questa famiglia perch� possiede dei record collegati in catalogo.')
    else if pos('MOV_CTLG_FK', stringa) > 0 then
      FRiga := ('Attenzione, si � cercato di cancellare un prodotto gi� impiegato in ricevute/fatture')
    else if pos('DOC_ANAGRAFICA_FK', stringa) > 0 then
      FRiga := (
        'Attenzione, si � cercato di cancellare una scheda anagrafica da cui dipendono dei documenti (fatture, ricevute, documenti di trasporto).')
    else
      FRiga := (
        'Attenzione si � cercato di cancellare una FRiga in una tabella dalla quale dipendono altri dati presenti nel programma.'
        + sl + 'FRiga NON CANCELLABILE');
    Result := True;
  end
  // --------------- errori di console in oracle ------------------------//
  else if errore = '20110' then
  begin
    FRiga := ('Attenzione state cercando modficare una polizza gi� contabilizzata.' + sl +
      'Questo errore si verifica quando una polizza � gi� stata passata in contabilit�.' + sl +
      'Se � necessario effettuare una modifica potete richiederla in sede ...' + sl +
      'Per contattare assistenza comunicare codice errore:  (ORA-20110 DOCUMENTI)');
    Result := True;
  end
  else if errore = '20112' then
  begin
    FRiga := ('Attenzione state cercando di realizzare un ritorno non valido.' + sl +
      'Questo errore si verifica quando esiste gi� una prenotazione di ritorno valida.' + sl +
      'Oppure esiste una prenotazione di ritorno chiusa ...' + sl +
      'Per contattare assistenza comunicare codice errore:  (ORA-20112 SH_PKG)'

      );
    Result := True;
  end
  else if errore = '20111' then
  begin
    FRiga := ('Attenzione state cercando di realizzare un ritorno non valido. (ORA-20111 SH_PKG)' + sl +
      'Questo errore si verifica quando esiste gi� una polizza di ritorno valida.' + sl +
      'Oppure esiste una polizza di ritorno stampata ...' + sl +
      'Per contattare assistenza comunicare codice errore:  (ORA-20111 SH_PKG)');
    Result := True;
  end
  else if errore = '20114' then
  begin
    FRiga := ('Attenzione state cercando di ELIMINARE o annullare un documento contabilizzato.' + sl +
      'Questo errore si verifica quando � gi� stato inviato in contabilit� o prima nota.' + sl +
      'Richiedere in ufficio lo sblocco del documento ...' + sl +
      'Per contattare assistenza comunicare codice errore:  (ORA-20115 DOCUMENTI)');
    Result := True;
  end
  else if errore = '20115' then
  begin
    FRiga := ('Attenzione state cercando di modificare o annullare un documento contabilizzato.' + sl +
      'Questo errore si verifica quando � gi� stato inviato in contabilit� o prima nota.' + sl +
      'Richiedere in ufficio lo sblocco del documento ...' + sl +
      'Per contattare assistenza comunicare codice errore:  (ORA-20115 DOCUMENTI)'

      );
    Result := True;
  end
  else if errore = '20118' then
  begin
    FRiga := ('Attenzione state cercando di modificare o cancellare una scrittura in prima nota.' + sl +
      'La scrittura � in un mese gi� chiuso e contabilizzato.' + sl +
      'Per poterla cambiare dovete riaprire il mese ...' + sl +
      'Per contattare assistenza comunicare codice errore:  (ORA-20118 AC_PRIMANOTA)'

      );
    Result := True;
  end
  // --------------- errori di fail over di sistema ---------------------//
  else if errore = '01012' then
  begin
    FRiga := ('Attenzione questo client non � collegato ad Oracle. (ORA-01012)' + sl +
      'Questo errore si verifica in caso di tentata connessione con utente errato.' + sl +
      'Oppure manca la linea di collegamento...'

      );
    Result := True;
  end
  else if errore = '01033' then
  begin
    FRiga := ('Attenzione questo client non � collegato ad Oracle. (ORA-01033)' + sl +
      'Oracle � in fase di avvio, attendere cinque minuti e riavviare.'

      );
    Result := True;
  end
  else if errore = '03113' then
  begin
    FRiga := ('Attenzione questo client non � collegato ad Oracle. (ORA-03113)' + sl +
      '� caduta la linea di collegamento.');
    Result := True;
  end
  else if errore = '03114' then
  begin
    FRiga := ('Attenzione questo client non � collegato ad Oracle. (ORA-03114)' + sl +
      '� caduta la linea di collegamento.');
    Result := True;
  end
  else if errore = '12571' then
  begin
    FRiga := ('Attenzione questo client non � collegato ad Oracle. (ORA-12571)' + sl +
      '� caduta la linea di collegamento, non � possibile registrare dati sul server.'

      );
    Result := True;
  end
  else
  begin
    FRiga := ('Attenzione Errore di Database o di Gestione Dati: ' + sl + stringa);
    Result := True;
  end;

  // --------------------------------------------------------------------//
end;

Function TCustomExceptionHandler.SpiegaKey: Boolean;
begin
  FContenuto := 'Istruzioni : ' + sl +
    'Questo errore si verifica quando si cerca di inserire un codice o un nome gi� esistente nel database.' +
    sl + 'Se l''errore si verifica in seguito a una modifica o a un inserimento di un dato, nella maggiorparte dei casi conviene seguire i punti sottoelencati:'
    + sl + '1. Verificare i campi chiave (di solito campi "Codice", "Targa",  "Matricola"), per rendersi conto se si � cercato di inserire un codice gi� presente'
    + sl + '2. La verifica pu� essere fatta variando anche solo un carattere del campo chiave e provando a confermare la modifica con il segno di spunta presente nella pulsantiera.'
    + sl + '3. Se il messaggio di errore persiste, provare ad annullare la modifica cliccando sul tasto "X" presente sulla pulsantiera (da non confondere con il tasto "Chiudi" che presenta una X rossa).'
    + sl + '4. Se anche con questo sistema non si risolve il problema contattare il servizio assistenza che vi guider� alla soluzione.';

  FRiga := 'Attenzione si � cercato di inserire un valore duplicato in una tabella';
  Result := (True);
end;

procedure TCustomExceptionHandler.ExceptionHandler(Sender: TObject; E: Exception);
begin
  if Active then
    self.OnDo(Sender, E)
  else
    raise (E);
end;

function TCustomExceptionHandler.GetLogFileName: string;
begin
  Result := TPath.Combine(TPath.Combine(TJanuaCoreOS.GetHomePath, TJanuaCoreOS.GetAppName), 'Error.log');
end;

function TCustomExceptionHandler.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Janua.Core.StackTrace.InstallExceptionCallStack
      end;
    except
      on E: Exception do
        RaiseException('TJanuaCloudComponent.InternalActivate', E, self);
    end;
end;

procedure TCustomExceptionHandler.OnDo(Sender: TObject; E: Exception);
Var
  ErrFile: TextFile;
  Componente: Tcomponent;
  risultato: Boolean;
  Errore2: EDatabaseError;
  StringaErrore: String;
begin
  if FLogFileName = '' then
  begin
    FLogFileName := tpl(TJanuaCoreOS.AppLogPath) + FormatDateTime('yyyymmddhnnsszzz', Now) +
      TJanuaCoreOS.AppName + '.err.txt';
  end;
  Assignfile(ErrFile, FLogFileName);

  risultato := False;

  If FileExists(FLogFileName) then
    Append(ErrFile)
  else
    Rewrite(ErrFile);

  FEsteso := 'ore: ' + DateTimeToStr(Now) + sl + 'messaggio: ' + E.message + sl + 'locazione: "' +
    Sender.ClassName + '";';

  if Sender is Tcomponent then
  begin
    Componente := Sender as Tcomponent;
    Repeat
      FEsteso := FEsteso + ',' + Componente.Name;
      Componente := Componente.Owner;
    until Componente = nil;
  end;

  FEsteso := FEsteso + sl + E.StackTrace + sl + TJanuaLogger.TailLog;

  FRiga := E.message;

  WriteLn(ErrFile, FEsteso);
  CloseFile(ErrFile);

  { Integer math exceptions }
  if E is EDivByZero then
    FRiga := ('Errore, divisione su zero')
  else if E is ERangeError then
    FRiga := ('Errore di range')
  else if E is EIntOverFlow then
    FRiga := ('Numero intero troppo lungo (di dimensioni eccessive).')
    { floating point math exceptions }
  else if E is EInvalidOp then
    FRiga := ('Operando non valido, errore nel puntatore.')
  else if E is EZeroDivide then
    FRiga := ('Errore, divisione per zero')
  else if E is EOverflow then
    FRiga := ('Errore, numero troppo lungo')
  else if E is EUnderflow then
    FRiga := ('EUnderflow')
    { eccezioni della RunTimeLibrary relative alla gestione Memoria }
  else if E is EOutOfMemory then
    FRiga := ('Memoria di sistema insufficiente')
  else if E is EOutOfResources then
    FRiga := ('Le risorse di sistema sono insufficienti, chiudete qualche applicazione')
  else if E is EInvalidPointer then
    FRiga := ('Tentativo di rilascio oggetto gi� liberato')
    { Errori di accesso ai dispositivi di sistema }
    { Errori relativi alla gestione di grafica ed immagini solo VCL e Solo FMX }
    {
      else if E is EInvalidGraphic then FRiga := ('Avete cercato di caricare una immagine di formato non riconosciuto')
      else if E is EInvalidGraphicOperation then FRiga := ('Non � consentito modificare questo disegno')
    }
    { Errori di conversione }
  else if E is EInvalidCast then
    FRiga := ('Errore di conversione')
  else if E is EConvertError then
    FRiga := ('Errore di conversione Dati')

    { Errori di tipo Hardware e dispositivi o periferiche }
    {
      else if E is EPrinter then
      FRiga := ('Errore di comunicazione con la stampante')
      // Errori sui Menu
      else if E is EMenuError then
      FRiga := ('Questa voce di menu non � ancora attivata o non punta a nulla')
      // Errori nelle griglie
      else if E is EInvalidGridOperation then
      FRiga := (
      'Si � cercato di accedere a questa griglia in modo sbagliato o sono stati inseriti dati non corretti')
    }

  else if E is EAccessViolation then
    FRiga := ('Accesso errato alla memoria di sistema')
  else if E is EcontrolC then
    FRiga := ('Istruzione fermata. Utente con i tasti CTRL+C')
  else if E is EInOutError then
    FRiga := ('Errore di comunicazione con periferica esterna')

    { Errori nell'architettura OLE }
  else if E is EPropReadonly then
    FRiga := ('Accesso negato al programma OLE chiamato in Windows, sola lettura')
  else if E is EPropWriteOnly then
    FRiga := ('Accesso negato al programma OLE chiamato in Windows, sola Scrittura')
    { Errori nelle Classi VCL }
  else if E is EFCreateError then
    FRiga := ('Accesso negato al disco o alla rete, non riesco a creare il file')
  else if E is EFOpenError then
    FRiga := ('Accesso negato al disco o alla rete, non riesco ad aprire il file')
  else if E is EInvalidImage then
    FRiga := ('Accesso negato al disco o alla rete, non trovo il file di risorse, contattare il rivenditore')
  else if E is EStringListError then
    FRiga := ('Problemi interni al sistema nella gestione delle liste, selezionato oggetto inesistente.')

    { Errore collegamento del DDE }

    { Errori di Windows }
    // else if E is EGPFault then FRiga := ('Errore di protezione generale di sistema, accesso illegale alla memoria, probabile uso di un puntatore non inizializzato')    // else if E is EStackFault then FRiga := ('Errore di accesso allo Stack di sistema.')
    // else if E is EPageFault then FRiga := ('Il sistema non riesce ad accedere alla memoria viruale, spegenere e riaccendere il computer')
    // else if E is EInvalidOpCode then FRiga := ('Il processore ha trovato una operazione non valida, forse mancano dei dati')
  else if E is EOutOfMemory then
    FRiga := ('Esaurita la memoria di windows')
  else if E is EInvalidPointer then
    FRiga := ('Errore di accesso alla memoria, puntatore non valido.')

    { Errori di cui non conosco il tipo }
  else if (copy(E.message, 1, 20) = 'Invalid input value.') then
    FRiga := ('Valore immesso non valido per questo campo, premere Esc per uscire.')
    { ****** Questa parte del programma cerca di analizzare gli errori generici di DB }
  else if E is EDatabaseError then
  begin
    Errore2 := (E As EDatabaseError);
    StringaErrore := Errore2.message;
    if StringaErrore = 'Dataset not in edit or insert mode' then
      FRiga := (
        'Archivio non aggiornato in quanto non sono state rilevate modifiche errore del software: DATASET NOT IN EDIT OR INSERT MODE, contattare ASSISTENZA')
    else if StringaErrore = 'Key violation' then
      FRiga := ('Esiste gi� una scheda con questo Indice: VIOLAZIONE DI CHIAVE')
    else if StringaErrore = 'Lock Violation' then
      FRiga := ('Questa scheda � in uso da un alto utente')
    else if StringaErrore = 'Network Error' then
      FRiga := ('Errore di connessione in rete')
    else if StringaErrore = 'Warning' then
      FRiga := ('Attenzione sistema sovraccarico')
    else if StringaErrore = 'Fail Open' then
      FRiga := ('Non trovo la locazione del file')
    else if StringaErrore = 'Lookup table not found or corrupt' then
      FRiga := ('Non riesco a caricare i dati di collegamento')
    else if StringaErrore = 'Cannot open system file' then
      FRiga := ('Errore nella gestione file del sistema operativo')
    else if StringaErrore = 'Insufficient memory for this operation' then
      FRiga := ('Memoria insufficiente per aggiornare i dati')
    else if StringaErrore = 'Read failure' then
      FRiga := ('Non riesco a leggere i dati dal disco')
    else if StringaErrore = 'Write failure' then
      FRiga := ('Non riesco a scrivere i dati su disco')
    else if StringaErrore = 'Cannot access directoruy' then
      FRiga := ('Non riesco ad accedere alla directory di archivio')
    else if StringaErrore = 'Access to table disabled because of previous error' then
      FRiga := ('Non � possibile accedere ai dati per un errore del programma, riavviare il sistema.')
    else if StringaErrore = 'Insufficient disk space' then
      FRiga := ('Spazio insufficiente su disco')
    else if StringaErrore = 'Cannot open file' then
      FRiga := ('Impossibile aprire il file di archivio')
    else if StringaErrore = 'Invalid password given' then
      FRiga := ('Non corrisponde la parola chiave di accesso')
    else
      FRiga := ('Errore di accesso su Archivio di tipo ' + StringaErrore)
  end;

  // *****************************************************************************
  // *** tutti i msg di eorrre che iniziano con ORA- sono errori oracle e
  // *** vengono passati d'ufficio alla procedura  SpiegaOracle
  // messaggio di tipo ORA-XXXXXX
  if copy(E.message, 0, 3) = 'ORA' then
    risultato := SpiegaOracle(E.message, FRiga, FEsteso);
  // *****************************************************************************

  // messaggio di violazione di chiave
  if E.message = 'Key violation.' then
    risultato := SpiegaKey;

  // errore di accesso alla memoria ....
  if pos('ACCESS', Uppercase(E.message)) > 0 then
    risultato := SpiegaAccess;

  // errora di scrittura file su disco
  if E.message = 'Stream write error' then
  begin
    FRiga := (
      'Attenzione, impossibile scrivere su un file. Possibili cause: memoria o disco del computer pieni');
    risultato := True;
  end;

  // ---- messaggi di tipo di errore standard di delphi:


  // ---- insieme di messaggi di errore gestibili dal programma ------------------

  // --------- gestore degli errori su campi obbligatori gi� da specifiche delphi
  if (pos('Field', E.message) > 0) and (pos('must have a value', E.message) > 0) then
  begin
    if pos('AGG', E.message) > 0 then
    begin
      FRiga := ('Attenzione si � cercato di inserire una nuova targa senza specificarne il tipo di veicolo');
      risultato := True
    end;
    if pos('NOME', E.message) > 0 then
    begin
      FRiga := ('Attenzione si � cercato di inserire un passeggero in elenco senza indicare il nome');
      risultato := True;
    end;
    if pos('COGNOME', E.message) > 0 then
    begin
      FRiga := ('Attenzione si � cercato di inserire un passeggero in elenco senza indicare il cognome');
      risultato := True;
    end;
    if pos('SESSO', E.message) > 0 then
    begin
      FRiga := ('Attenzione si � cercato di inserire un passeggero in elenco senza indicare il sesso');
      risultato := True;
    end;
    if pos('TARGA', E.message) > 0 then
    begin
      FRiga := (
        'Attenzione si � cercato di inserire una nuova targa senza scrivere correttamente la targa stessa');
      risultato := True;
    end;
    if pos('NASCITA_CITTA', E.message) > 0 then
    begin
      FRiga := (
        'Attenzione si � cercato di inserire un passeggero in elenco senza indicare il luogo di nascita');
      risultato := True;
    end;
    if pos('NASCITA_DATA', E.message) > 0 then
    begin
      FRiga := (
        'Attenzione si � cercato di inserire un passeggero in elenco senza indicare la data di nascita');
      risultato := True;
    end;
    if pos('TELEFONO', E.message) > 0 then
    begin
      FRiga := (
        'Attenzione si � cercato di inserire una scheda priva del numero di Telefono, campo obbligatorio');
      risultato := True;
    end;
  end;

  if (pos(' is not a valid floating point value for field', E.message) > 0) then
  begin
    if (pos('%', E.message) > 0) then
    begin
      FRiga := (
        'Attenzione state inserendo un valore in un campo percentuale, il valore che state scrivendo non pu� contenere il simbolo %. '
        + sl + 'Questo simbolo verr� aggiunto dal programma ma non pu� essere inserito dall''utente. Cancellatelo e riprovate');
      risultato := True
    end
    else if (pos('.', E.message) > 0) then
    begin
      FRiga := (
        'Attenzione state inserendo un valore in un campo numerico con virgola � ammesso l''inserimento di "," come separatore '
        + sl + 'Ma voi avete inserito un punto: ".", non sono ammessi punti nei campi di valore numerico n� come separatori di migliaia n� come separatori decimali.');
      risultato := True
    end
    else
    begin
      FRiga := (
        'Attenzione, state srivendo su un campo numerico, avete inserito una lettera o un simbolo che non sono validi. '
        + sl + 'Controllate l''inserimento dell''ultima FRiga inserita e correggetelo.');
      risultato := True
    end

  end;

  if (pos('DisposeBuf failed', E.message) > 0) then
  begin
    FRiga := (
      'Attenzione, errore di gestione della memoria dati di windows, per continuare il vostro lavoro dovete chiudere e riavviare la console'
      + sl + 'Altrimenti i vostri inserimenti successivi non potranno essere pi� passati in archivio. Errore: DisposeBuf failed');
    risultato := True
  end;

  if (pos('There is no default printer currently selected', E.message) > 0) then
  begin
    FRiga := (
      'Attenzione, il sistema di stampa non � al momento pronto o � occupato, nessuna stampante utilizzabile'
      + sl + 'Il sistema attender� 10 secondi per continuare, se questo errore dovesse continuare controllate la cartela stampanti'
      + sl + 'Se l''errore persiste terminate il programma');
    risultato := True;
  end;

  if (pos('System Error.  Code: 1722', E.message) > 0) then
  begin
    FRiga := (
      'Attenzione le risorse di Stampa sono momentaneamente impegnate, la stampa sar� ritardata di 10 secondi'
      + sl + 'Se il problema dovesse persistere contattate l''assistenza o TERMINATE il programma');
    risultato := True;
  end;

  if not risultato then
    FRiga := ('Si � verificato un errore:' + sl + FRiga + sl +
      'Se non siete in grado ancora di gestire questo Contattare l''assistenza.');

  ErrorMessageExtended;

end;

function TCustomExceptionHandler.OpenDataset(Dataset: TDataset): Boolean;
begin
  Result := True;
  try

  except
    on E: Exception do
    begin
      self.WriteError('Attenzioen Errore di Apertura Dataset: ' + Dataset.Name +
        'Riportare l''errore all''assistenza', E);
    end;
  end;

end;

procedure TCustomExceptionHandler.SetLogFileName(const Value: string);
begin
  FLogFileName := Value;
end;

procedure TCustomExceptionHandler.SetSilent(const Value: Boolean);
begin
  FSilent := Value;
end;

end.
