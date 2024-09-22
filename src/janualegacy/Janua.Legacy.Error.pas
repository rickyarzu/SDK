unit Janua.Legacy.Error;

{ generic exception handler component }

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB, Menus, Grids,
  Printers, Janua.Legacy.Logger, TaskDialog, TaskDialogEx, Janua.Core.Classes;

type
  TExceptionHandler = class(TJanuaCoreComponent)
  private
    { Private declarations }
    FLogFileName: string;
    FSilent: boolean;
    FRiga: string;
    FContenuto: string;
    FEsteso: string;
    procedure SetLogFileName(const Value: string);
    procedure ErrorMessageExtended;
    procedure SetSilent(const Value: boolean);
    Function SpiegaOracle(stringa: string; analisi: string; extended: string): boolean;
    Function SpiegaKey: boolean;
    function SpiegaAccess: boolean;
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure OnDo(Sender: TObject; E: Exception); virtual;
    function OpenDataset(Dataset: TDataset): boolean;
  published
    { Published declarations }
    property LogFileName: string read FLogFileName write SetLogFileName;
    property Silent: boolean read FSilent write SetSilent;
  end;

implementation

function TExceptionHandler.SpiegaAccess: boolean;
begin
  FRiga := (
    'Attenzione errore di sovraccarico memoria del programma, potrebbe essere necessario riavviare Console');
  FContenuto := 'ERRORE DI ACCESSO ALLA MEMORIA : ' + #13 +
    'Generalmente questo errore si verifica in due casi :' + #13 +
    '1. La memoria del sistema non è sufficiente a gestire le applicazioni attualmente attive.' + #13 +
    '2. Il programma ha cercato di accedere ad una componente che non è stata trovata.' + #13 +
    'In entrambi i casi consigliamo di:' + #13 +
    '1. Uscire immediatamente dal programma e di chiudere tutte le applicazioni attive nel computer' + #13 +
    '2. Verificare che altre postazioni di lavoro collegate in rete siano "ferme" nessun programma attivo' +
    #13 + '3. Riavviare il computer' + #13 +
    '4. Se possibile lanciare la procedura di verifica degli archivi "TABLESCANNER" appositamente studiata per questi casi'
    + #13 + '5. Entrare nel programma e verificare le funzionalità principali' + #13 +
    '6. Se qualcosa non sembra funzionare regolarmente chiamare immediatamente il servizio assistenza e attendere l''intervento';
  Result := True;
end;

Function TExceptionHandler.SpiegaOracle(stringa: string; analisi: string; extended: string): boolean;
var
  errore: string;
begin
  // **************************************************************************
  // *** Gli errori oracle sono divis in catgegorie  ........................
  // ***  01400 = constraint: capisco che erorre dare dalla pos di un campo x
  // ***  00001 = chiave PK-UK: capisco che erroredare dal nome della chiave UP
  // ***  00001 = chiave PK-UK: capisco che erroredare dal nome della chiave UP
  // ***  02292 = chiave FK: decido il messaggio dal nome della chiave
  // esempio: chiamo la chiave TRATORD_FK il messaggio sarà
  // atenzione non potete eliminare una tratativa legata ad un ordine ...

  /// però mettiamo ance quello per la fattura duplicata sullo stesso forn che serve
  /// sì ma lì sarà credo un tipo di coidce errore ora-xxxx diferente 0001 credo
  /// lì devi trovare il nome della chiave di errore ok? dal log
  ///

  errore := copy(stringa, 5, 5);
  if errore = '01400' then
  begin
    if (pos('AN_PI_CF', stringa) > 0) and (pos('"PI_CF"', stringa) > 0) then
      FRiga := ('Attenzione inserita una FRiga nulla in tabella anagrafica partita iva. Tabella:AN_PI_CF' +
        #13 + 'premere Esc per annullare l''inserimento')
    else if (pos('DOC_PASSANGER_LIST', stringa) > 0) and (pos('"ETA"', stringa) > 0) then
      FRiga := (
        'Attenzione inserito un passeggero in polizza senza specificare età. (ORA-01400) Tabella:DOC_PASSANGER_LIST'
        + #13 + 'premere Esc per annullare l''inserimento')
    else if (pos('ANAGRAFICA', stringa) > 0) and (pos('"COGNOME"', stringa) > 0) then
      FRiga := ('Attenzione inserito cognome nullo o non valido. (ORA-01400) Tabella:ANAGRAFICA' + #13 +
        'premere Esc per annullare l''inserimento')
    else if (pos('ANAGRAFICA', stringa) > 0) and (pos('"ANAGRAFICA_ID"', stringa) > 0) then
      FRiga := (
        'Attenzione inserita FRiga nulla in scheda anagrafica, contattare assistenza. (ORA-01400) Tabella:ANAGRAFICA'
        + #13 + 'premere Esc per annullare l''inserimento')
    else if (pos('AN_PASSANGER_LIST', stringa) > 0) and (pos('"SESSO"', stringa) > 0) then
      FRiga := (
        'Attenzione inserita FRiga in passanger List senza specificare il sesso. (ORA-01400) Tabella:ANAGRAFICA'
        + #13 + 'premere Esc per annullare l''inserimento oppure compilare correttamente la colonna sesso')
    else
      FRiga := (
        'Attenzione, non è stato compilato un campo o non è stato completato un passaggio nell''inserimento del record.'
        + #13 + 'Provate a ripeter il passaggio che stavate eseguendo o premete il pulsante "Esc" sulla tastiera o il comando annulla del documento che stavate realizzando.');

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
        'Attenzione, è stato immesso un valore duplicato nella tabella, forse avete inserito due volte la stessa famiglia.'
        + #13 + 'premere Esc per annullare l''inserimento')
    else if pos('COND_APPL_PK', stringa) > 0 then
      FRiga := (
        'Attenzione, è stato immesso un valore duplicato nella tabella, forse avete inserito due volte lo stesso termine di pagamento.'
        + #13 + 'premere Esc per annullare l''inserimento')
    else if pos('DOCPASS_PK', stringa) > 0 then
      FRiga := ('Attenzione, è stato immesso un nome duplicato in passanger list, omonimo e della stessa età.'
        + #13 + 'premere Esc per annullare l''inserimento')
    else if pos('NUOVA_TARGA', stringa) > 0 then
      FRiga := ('Attenzione, è stata immessa una targa omonima nella polizza. (codice: NUOVA_TARGA J001)' +
        #13 + 'premere Esc per annullare l''inserimento')
    else if pos('ORDVEI_TARGA_UK', stringa) > 0 then
      FRiga := ('Attenzione, è stata immessa una targa omonima nella prenotazione.' + #13 +
        '(ORA-00001 prenotazioni veicoli) premere Esc per annullare l''inserimento')
    else if pos('ORDPASS_PK', stringa) > 0 then
      FRiga := (
        'Attenzione, è stato immesso un nome duplicato in passanger list, omonimo con stessa data di nascita.'
        + #13 + '(ORA-00001 ordini pass. list) premere Esc per annullare l''inserimento')
    else if pos('ANPICF_PK', stringa) > 0 then
      FRiga := ('Attenzione, è stata immessa una partita iva duplicata (ORA-00001 AN_PI_CF).' + #13 +
        'premere Esc per annullare l''inserimento')
    else if pos('ESERCIZI_PK', stringa) > 0 then
      FRiga := ('Attenzione, è stato immesso un anno duplicato nella tabella esercizio (ORA-00001 ESERCIZI).'
        + 'premere Esc per annullare l''inserimento')
    else if pos('SHLINPERDISC_PK', stringa) > 0 then
      FRiga := (
        'Attenzione, è stato immesso uno sconto duplicato nella tabella degli sconti stagionali (ORA-00001 SCONTI PER LINEA E STAGIONE).'
        + #13 + 'premere Esc per annullare l''inserimento')
      // ****** messaggio di errore documenti duplicati ************************
      // *** ora dai log devi trovare il mesaggio di erorre chiave dei doc....
      // per trovare ilnome chiave occorre trovare il logo  o legere il trigger
      // da documenti....
    else if pos('NUMERO_DUPLICATO', stringa) > 0 then
      FRiga := (
        'Attenzione, si sta cercando di inserire un documento già presente in archivio(ORA-00001 DOCUMENTO GIA'' INSERITO).'
        + #13 + 'premere Esc per annullare l''inserimento')
    else
      FRiga := (
        'Attenzione, è stata inserita una FRiga duplicata (ORA-00001), premere Esc per annullare l''inserimento');
    Result := True;
  end
  else if errore = '00942' then
  begin
    FRiga := ('Attenzione, il sistema non trova una tabella.' + #13 +
      'Probabilmente il vostro sistema va aggiornato. Contattate immediatamente studio Arduino riferendo il seguente errore:');
    Result := True;
  end
  else if errore = '01017' then
  begin
    FRiga := ('Attenzione, è stato inserito un utente o una password errata.' + #13 +
      'è possibile eseguire non più di 3 tentativi.....:');
    Result := True;
  end
  else if errore = '02291' then
  begin
    FRiga := ('Attenzione, è stato inserito un valore non presente in una tabella di decodifica.' + #13 +
      'Il valore che è stato inserito non è valido, non corrisponde a un valore riconosciuto dal sistema'

      );
    Result := True;
  end
  else if errore = '02292' then
  begin

    if pos('ACPDCATEG_ATE_FK', stringa) > 0 then
      FRiga := (' non si può cancellare questa famiglia perché possiede dei record collegati in catalogo.')
    else if pos('AC_CATEGORIE_FAMIGLIE_FK', stringa) > 0 then
      FRiga := (' non si può cancellare questa famiglia perché possiede dei record collegati in catalogo.')
    else if pos('MOV_CTLG_FK', stringa) > 0 then
      FRiga := ('Attenzione, si è cercato di cancellare un prodotto già impiegato in ricevute/fatture')
    else if pos('DOC_ANAGRAFICA_FK', stringa) > 0 then
      FRiga := (
        'Attenzione, si è cercato di cancellare una scheda anagrafica da cui dipendono dei documenti (fatture, ricevute, documenti di trasporto).')
    else
      FRiga := (
        'Attenzione si è cercato di cancellare una FRiga in una tabella dalla quale dipendono altri dati presenti nel programma.'
        + #13 + 'FRiga NON CANCELLABILE');
    Result := True;
  end
  // --------------- errori di console in oracle ------------------------//
  else if errore = '20110' then
  begin
    FRiga := ('Attenzione state cercando modficare una polizza già contabilizzata.' + #13 +
      'Questo errore si verifica quando una polizza è già stata passata in contabilità.' + #13 +
      'Se è necessario effettuare una modifica potete richiederla in sede ...' + #13 +
      'Per contattare assistenza comunicare codice errore:  (ORA-20110 DOCUMENTI)');
    Result := True;
  end
  else if errore = '20112' then
  begin
    FRiga := ('Attenzione state cercando di realizzare un ritorno non valido.' + #13 +
      'Questo errore si verifica quando esiste già una prenotazione di ritorno valida.' + #13 +
      'Oppure esiste una prenotazione di ritorno chiusa ...' + #13 +
      'Per contattare assistenza comunicare codice errore:  (ORA-20112 SH_PKG)'

      );
    Result := True;
  end
  else if errore = '20111' then
  begin
    FRiga := ('Attenzione state cercando di realizzare un ritorno non valido. (ORA-20111 SH_PKG)' + #13 +
      'Questo errore si verifica quando esiste già una polizza di ritorno valida.' + #13 +
      'Oppure esiste una polizza di ritorno stampata ...' + #13 +
      'Per contattare assistenza comunicare codice errore:  (ORA-20111 SH_PKG)');
    Result := True;
  end
  else if errore = '20114' then
  begin
    FRiga := ('Attenzione state cercando di ELIMINARE o annullare un documento contabilizzato.' + #13 +
      'Questo errore si verifica quando è già stato inviato in contabilità o prima nota.' + #13 +
      'Richiedere in ufficio lo sblocco del documento ...' + #13 +
      'Per contattare assistenza comunicare codice errore:  (ORA-20115 DOCUMENTI)');
    Result := True;
  end
  else if errore = '20115' then
  begin
    FRiga := ('Attenzione state cercando di modificare o annullare un documento contabilizzato.' + #13 +
      'Questo errore si verifica quando è già stato inviato in contabilità o prima nota.' + #13 +
      'Richiedere in ufficio lo sblocco del documento ...' + #13 +
      'Per contattare assistenza comunicare codice errore:  (ORA-20115 DOCUMENTI)'

      );
    Result := True;
  end
  else if errore = '20118' then
  begin
    FRiga := ('Attenzione state cercando di modificare o cancellare una scrittura in prima nota.' + #13 +
      'La scrittura è in un mese già chiuso e contabilizzato.' + #13 +
      'Per poterla cambiare dovete riaprire il mese ...' + #13 +
      'Per contattare assistenza comunicare codice errore:  (ORA-20118 AC_PRIMANOTA)'

      );
    Result := True;
  end
  // --------------- errori di fail over di sistema ---------------------//
  else if errore = '01012' then
  begin
    FRiga := ('Attenzione questo client non è collegato ad Oracle. (ORA-01012)' + #13 +
      'Questo errore si verifica in caso di tentata connessione con utente errato.' + #13 +
      'Oppure manca la linea di collegamento...'

      );
    Result := True;
  end
  else if errore = '01033' then
  begin
    FRiga := ('Attenzione questo client non è collegato ad Oracle. (ORA-01033)' + #13 +
      'Oracle è in fase di avvio, attendere cinque minuti e riavviare.'

      );
    Result := True;
  end
  else if errore = '03113' then
  begin
    FRiga := ('Attenzione questo client non è collegato ad Oracle. (ORA-03113)' + #13 +
      'è caduta la linea di collegamento.');
    Result := True;
  end
  else if errore = '03114' then
  begin
    FRiga := ('Attenzione questo client non è collegato ad Oracle. (ORA-03114)' + #13 +
      'è caduta la linea di collegamento.');
    Result := True;
  end
  else if errore = '12571' then
  begin
    FRiga := ('Attenzione questo client non è collegato ad Oracle. (ORA-12571)' + #13 +
      'è caduta la linea di collegamento, non è possibile registrare dati sul server.'

      );
    Result := True;
  end
  else
  begin
    FRiga := ('Attenzione Errore di Database o di Gestione Dati: ' + #13 + stringa);
    Result := True;
  end;

  // --------------------------------------------------------------------//
end;

Function TExceptionHandler.SpiegaKey: boolean;
begin
  FContenuto := 'Istruzioni : ' + #13 +
    'Questo errore si verifica quando si cerca di inserire un codice o un nome già esistente nel database.' +
    #13 + 'Se l''errore si verifica in seguito a una modifica o a un inserimento di un dato, nella maggiorparte dei casi conviene seguire i punti sottoelencati:'
    + #13 + '1. Verificare i campi chiave (di solito campi "Codice", "Targa",  "Matricola"), per rendersi conto se si è cercato di inserire un codice già presente'
    + #13 + '2. La verifica può essere fatta variando anche solo un carattere del campo chiave e provando a confermare la modifica con il segno di spunta presente nella pulsantiera.'
    + #13 + '3. Se il messaggio di errore persiste, provare ad annullare la modifica cliccando sul tasto "X" presente sulla pulsantiera (da non confondere con il tasto "Chiudi" che presenta una X rossa).'
    + #13 + '4. Se anche con questo sistema non si risolve il problema contattare il servizio assistenza che vi guiderà alla soluzione.';

  FRiga := 'Attenzione si è cercato di inserire un valore duplicato in una tabella';
  Result := (True);
end;

procedure TExceptionHandler.ErrorMessageExtended;
var
  TaskDialog1: TAdvTaskDialogEx;
begin
  if not FSilent then
  begin
    TaskDialog1 := TAdvTaskDialogEx.Create(nil);
    try
      TaskDialog1.Title := 'Attenzione Errore nell''applicazione';

      TaskDialog1.Instruction := FRiga;
      TaskDialog1.Icon := tiError;
      TaskDialog1.Content := FContenuto;
      TaskDialog1.ExpandedText := FEsteso;
      TaskDialog1.ExpandControlText := 'Premi qui per nascondere';

      TaskDialog1.CustomButtons.Clear;
      TaskDialog1.CustomButtons.Add('Termina Programma');
      TaskDialog1.CustomButtons.Add('OK');
      TaskDialog1.DefaultButton := 101;

      // TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
      // TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
      // TaskDialog1.FooterIcon := tfiWarning;
      if TaskDialog1.Execute = 100 then
        Application.Terminate;
    finally
      FreeAndNil(TaskDialog1);
    end;
  end;
end;

procedure TExceptionHandler.OnDo(Sender: TObject; E: Exception);
Var
  ErrFile: TextFile;
  Componente: TComponent;
  risultato: boolean;
  Errore2: EDatabaseError;
  StringaErrore: String;
begin

  Assignfile(ErrFile, FLogFileName);

  risultato := False;

  If FileExists(FLogFileName) then
    Append(ErrFile)
  else
    Rewrite(ErrFile);

  FEsteso := 'ore: ' + DateTimeToStr(Now) + #13 + 'messaggio: ' + E.message + #13 + 'locazione: "' +
    Sender.ClassName + '", ';

  FRiga := E.message;

  if Sender is TComponent then
  begin
    Componente := Sender as TComponent;
    Repeat
      FEsteso := FEsteso + ',' + Componente.Name;
      Componente := Componente.Owner;
    until Componente = nil;
  end;

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
    FRiga := ('Tentativo di rilascio oggetto già liberato')
    { Errori di accesso ai dispositivi di sistema }
    { Errori relativi alla gestione di grafica ed immagini }
  else if E is EInvalidGraphic then
    FRiga := ('Avete cercato di caricare una immagine di formato non riconosciuto')
  else if E is EInvalidGraphicOperation then
    FRiga := ('Non è consentito modificare questo disegno')
    { Errori di conversione }
  else if E is EInvalidCast then
    FRiga := ('Errore di conversione ' + E.Message)
  else if E is EConvertError then
    FRiga := ('Errore di conversione Dati ' + E.Message)

    { Errori di tipo Hardware e dispositivi o periferiche }
  else if E is EPrinter then
    FRiga := ('Errore di comunicazione con la stampante')
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
    { Errori sui Menu }
  else if E is EMenuError then
    FRiga := ('Questa voce di menu non è ancora attivata o non punta a nulla')
    { Errori nelle griglie }
  else if E is EInvalidGridOperation then
    FRiga := (
      'Si è cercato di accedere a questa griglia in modo sbagliato o sono stati inseriti dati non corretti')
  else if E is EStringListError then
    FRiga := ('Problemi interni al sistema nella gestione delle liste, selezionato oggetto inesistente.')

    { Errore collegamento del DDE }

    { Errori di Windows }
    // else if E is EGPFault then FRiga := ('Errore di protezione generale di sistema, accesso illegale alla memoria, probabile uso di un puntatore non inizializzato')
  else if E is EInvalidGridOperation then
    FRiga := (
      'Si è cercato di accedere a questa griglia in modo sbagliato o sono stati inseriti dati non corretti')
    // else if E is EStackFault then FRiga := ('Errore di accesso allo Stack di sistema.')
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
      FRiga := ('Esiste già una scheda con questo Indice: VIOLAZIONE DI CHIAVE')
    else if StringaErrore = 'Lock Violation' then
      FRiga := ('Questa scheda è in uso da un alto utente')
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
      FRiga := ('Non è possibile accedere ai dati per un errore del programma, riavviare il sistema.')
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





  // ------------------------------------------------------------------------------


  // ---- insieme di messaggi di errore gestibili dal programma ------------------

  // --------- gestore degli errori su campi obbligatori già da specifiche delphi
  if (pos('Field', E.message) > 0) and (pos('must have a value', E.message) > 0) then
  begin
    if pos('AGG', E.message) > 0 then
    begin
      FRiga := ('Attenzione si è cercato di inserire una nuova targa senza specificarne il tipo di veicolo');
      risultato := True
    end;
    if pos('NOME', E.message) > 0 then
    begin
      FRiga := ('Attenzione si è cercato di inserire un passeggero in elenco senza indicare il nome');
      risultato := True;
    end;
    if pos('COGNOME', E.message) > 0 then
    begin
      FRiga := ('Attenzione si è cercato di inserire un passeggero in elenco senza indicare il cognome');
      risultato := True;
    end;
    if pos('SESSO', E.message) > 0 then
    begin
      FRiga := ('Attenzione si è cercato di inserire un passeggero in elenco senza indicare il sesso');
      risultato := True;
    end;
    if pos('TARGA', E.message) > 0 then
    begin
      FRiga := (
        'Attenzione si è cercato di inserire una nuova targa senza scrivere correttamente la targa stessa');
      risultato := True;
    end;
    if pos('NASCITA_CITTA', E.message) > 0 then
    begin
      FRiga := (
        'Attenzione si è cercato di inserire un passeggero in elenco senza indicare il luogo di nascita');
      risultato := True;
    end;
    if pos('NASCITA_DATA', E.message) > 0 then
    begin
      FRiga := (
        'Attenzione si è cercato di inserire un passeggero in elenco senza indicare la data di nascita');
      risultato := True;
    end;
    if pos('TELEFONO', E.message) > 0 then
    begin
      FRiga := (
        'Attenzione si è cercato di inserire una scheda priva del numero di Telefono, campo obbligatorio');
      risultato := True;
    end;
  end;

  if (pos(' is not a valid floating point value for field', E.message) > 0) then
  begin
    if (pos('%', E.message) > 0) then
    begin
      FRiga := (
        'Attenzione state inserendo un valore in un campo percentuale, il valore che state scrivendo non può contenere il simbolo %. '
        + #13 + 'Questo simbolo verrà aggiunto dal programma ma non può essere inserito dall''utente. Cancellatelo e riprovate');
      risultato := True
    end
    else if (pos('.', E.message) > 0) then
    begin
      FRiga := (
        'Attenzione state inserendo un valore in un campo numerico con virgola è ammesso l''inserimento di "," come separatore '
        + #13 + 'Ma voi avete inserito un punto: ".", non sono ammessi punti nei campi di valore numerico né come separatori di migliaia né come separatori decimali.');
      risultato := True
    end
    else
    begin
      FRiga := (
        'Attenzione, state srivendo su un campo numerico, avete inserito una lettera o un simbolo che non sono validi. '
        + #13 + 'Controllate l''inserimento dell''ultima FRiga inserita e correggetelo.');
      risultato := True
    end

  end;

  if (pos('DisposeBuf failed', E.message) > 0) then
  begin
    FRiga := (
      'Attenzione, errore di gestione della memoria dati di windows, per continuare il vostro lavoro dovete chiudere e riavviare la console'
      + #13 + 'Altrimenti i vostri inserimenti successivi non potranno essere più passati in archivio. Errore: DisposeBuf failed');
    risultato := True
  end;

  if (pos('There is no default printer currently selected', E.message) > 0) then
  begin
    FRiga := (
      'Attenzione, il sistema di stampa non è al momento pronto o è occupato, nessuna stampante utilizzabile'
      + #13 + 'Il sistema attenderà 10 secondi per continuare, se questo errore dovesse continuare controllate la cartela stampanti'
      + #13 + 'Se l''errore persiste terminate il programma');
    risultato := True;
  end;

  if (pos('System Error.  Code: 1722', E.message) > 0) then
  begin
    FRiga := (
      'Attenzione le risorse di Stampa sono momentaneamente impegnate, la stampa sarà ritardata di 10 secondi'
      + #13 + 'Se il problema dovesse persistere contattate l''assistenza o TERMINATE il programma');
    risultato := True;
  end;

  if not risultato then
    FRiga := ('Si è verificato un errore:' + #13 + FRiga + #13 +
      'Se non siete in grado ancora di gestire questo Contattare l''assistenza.');

  ErrorMessageExtended;

end;

function TExceptionHandler.OpenDataset(Dataset: TDataset): boolean;
Var
  ErrFile: TextFile;
  Componente: TComponent;
begin

  Result := True;

  try

  except
    on E: Exception do
    begin
      Assignfile(ErrFile, FLogFileName);

      If FileExists(FLogFileName) then
        Append(ErrFile)
      else
        Rewrite(ErrFile);

      FEsteso := 'ore: ' + DateTimeToStr(Now) + #13 + 'messaggio: ' + E.message + #13 + 'locazione: "' +
        Dataset.ClassName + '", ' + sLineBreak + 'Componente: ' + Dataset.Name + sLineBreak;

      Componente := Dataset;
      Repeat
        FEsteso := FEsteso + ',' + Componente.Name;
        Componente := Componente.Owner;
      until Componente = nil;

      FRiga := 'Attenzioen Errore di Apertura Dataset: ' + Dataset.Name +
        'Riportare l''errore all''assistenza';

      FContenuto := E.message;

      WriteLn(ErrFile, FEsteso);
      CloseFile(ErrFile);

      Result := False;

      if not FSilent then
        ErrorMessageExtended;
    end;

  end;

end;

procedure TExceptionHandler.SetLogFileName(const Value: string);
begin
  FLogFileName := Value;
end;

procedure TExceptionHandler.SetSilent(const Value: boolean);
begin
  FSilent := Value;
end;

end.
