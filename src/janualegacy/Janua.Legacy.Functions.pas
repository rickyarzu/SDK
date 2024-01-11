unit Janua.Legacy.Functions;

interface

uses
  // System
  System.SysUtils, System.Classes, System.Math,
  // VCL
  VCL.Imaging.pngimage, VCL.ExtCtrls, VCL.Controls, VCL.Forms, VCL.StdCtrls, VCL.Graphics, VCL.ExtDlgs,
  VCL.Dialogs, DBCtrls, ComCtrls, Mask, Windows, Messages, Buttons,
  // TMS
  AdvGlowButton, JvExStdCtrls, JvEdit,
  // JANUA
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.CustomControls, Janua.Unidac.Connection,
  // JanuaVCL
  Janua.VCL.dlgInputNumber, Janua.VCL.dlgServer, Janua.VCL.dlgLogin, Janua.VCL.dlgInputDate,
  {Janua.VCL.dlgInputText,} {Janua.VCL.Dialogs,}
  // Jedi
  JvDBSearchEdit, JvDBLookupComboEdit, JvExMask, JvDBLookup, JvToolEdit, JvComponent, JvDBControls,
  // Data
  Data.db, Datasnap.DBClient, MemDS,
  // Quick Report
  QuickRpt, QRPDFFilt,
  {
    Types, Classes,
    Grids, DBGrids, dbcgrids,  DBAccess, Uni,
    MemDS, Menus, CRGrid,
  }
  // Devart
  VirtualTable, UniScript, Uni;

// ------------------------------------------------------------------------------
{
  // Function declaration for CIA_CALC( ) - which is in the DLL
  function CIA_CALC(Msg: PAnsiChar; RMsg: PAnsiChar; RText: PAnsiChar;
  BType: PAnsiChar; var RMsgLen: Integer; var RTextLen: Integer): Integer;
  stdcall; external 'CIABAR32.DLL' name 'CIA_CALC';

  // Function declaration for CIA_ERR( ) - which is in the DLL
  function CIA_ERR(errCode: Integer; BType: PAnsiChar; errMsg: PAnsiChar;
  reqLen: Integer): Integer;
  stdcall; external 'CIABAR32.DLL' name 'CIA_ERR';

  // Here is a Delphi helper function; pass a string and it returns a bar code string.
  // Bar code fonts are used to print or display the returned string as a barcode.
  function Barcode(MyFld: PAnsiChar; BType: PAnsiChar; useMsgBox: Integer): PAnsiChar;

}
// ---------------- barcode funcntions end --------------------------------------
function EncryptStr(source: string): string;
// cripta una stringa
function DecryptStr(source: string): string;
// descripta sulla stessa base la stringa
function KeyGenerator(number: string): string;
// genera un codice chiave su un numero di riferimento
function KeyControl(number: string; key: string): boolean;
// verifica il codice chiave immesso in base al numero di riferimento
function parambyname(dataset: TClientDataset; strParam: string; value: string): boolean; overload;
function parambyname(dataset: TClientDataset; strParam: string; value: TDateTime): boolean; overload;
// imposta un parametro per un client dataset basandosi sul nome del parametro..
// funzione che esegue un arrotondamento esatto su un numero doppia precisione
// function FRound(number: Double; digits: integer): Double;
// funzione che verifica una partita iva
function FPartitaIva(piva: string; var Error: string; var specification: string): boolean;
// funzione che cerca e sostituisce un testo all'intero di un richEdit ........
function Search_And_Replace(RichEdit: TRichEdit; SearchText, ReplaceText: string): boolean;

function OpenDatasetInternal(dataset: TDataSet; raiser: boolean): boolean;
function OpenDataset(dataset: TDataSet): boolean;
function TestDataset(dataset: TDataSet): boolean;

// funzione che riscrive una cella in una grid
procedure DrawField(const value: String; const Rect: TRect; vCanvas: TCanvas; vFont: TFont;
  vAlignment: TAlignment; FontStyle: TFontStyles; FontColor: TColor; BGColor: TColor);

procedure colorEnter(Sender: TObject);
// funzione che colora un oggetto.....

procedure colorExit(Sender: TObject);
// funzione che colora un oggetto.....

procedure lookupSetup(Sender: TJvDBLookupCombo);
// imposta il default di un lookup
procedure SetColorEnter(Sender: TObject);
procedure SetColorExit(Sender: TObject);

// ******** janua dialogs
{
  procedure JShowMessage(smessage: string; sExtra: string; sHelp: string);
  procedure JShowWarning(smessage: string; sExtra: string; sHelp: string);
  procedure JShowError(smessage: string; sExtra: string; sHelp: string);
  function JMessageDlg(smessage: string): boolean;
}
// ******** Verifica Codice Fiscale spostato sul 'Core'..................
(*
  function Valctrl(resto: integer): string;
  function ValPari(carattere: char): integer;
  function ValDispari(carattere: char): integer;
  function VerificaCodFisc(const Codfiscale: String; var strErrore: string): boolean;
*)
// function IsValidEmail(const value: string): boolean;
// xml creation functions for dataset streams......
(*
  function MakeXML(dataset: TDataSet): string;
  function MakeTag(TagName, value: String): string;
*)
// function InputInteger(inputtext: string): integer;
// function InputPassword(MessageText: string): String;
// function SelectMultiString(const caption: string; const a: array of string): integer;
// function StripString(const strStringa: string): string;
// funzione che legge un parametro e ne ritorna un default basandosi su un dataset
function ReadParam(parDataset: TDataSet; const sKey: string; const sDefault: string): string;
// function VerificaMail(email: string): boolean;
procedure LockControl(lock: boolean; control: TObject; color: TColor);
procedure SetEditDataModule(DataModule: TDataModule);
procedure SetDefaultSession(DataModule: TDataModule; Session: TJanuaUniConnection);
function ReadAnagraphBarcode(strCodice: string): int64;
function VerificaRegioneRicetta(ricetta: string): boolean;
{ function BarcodeGenerator(header: string; firstnum: string; firstdigits: string;
  secondnum: string; seconddigits: string;
  thirdnum: string; thirddigists: string): string; }
// procedure CloneDataset(dataset: TDataSet; dataclone: TClientDataset); overload;
// Spostato su JanuaCoreFunctions ................................................
procedure CloneRecord(dataset: TDataSet; dataclone: TDataSet);
function ExistField(dataset: TDataSet; Field: widestring): boolean;

// System Related Functions
// Utility function to get the tmp folder
function GetTempPath: String;

procedure PDFExport(Filename: String; Report: TQuickRep);

function VerificaCodFisc(const Codfiscale: String; var strErrore: string): boolean;

procedure CloneDataset(dataset: TDataSet; dataclone: TClientDataset); overload;
procedure CloneDataset(dataset: TDataSet; dataclone: TVirtualTable); overload;

implementation

uses
  AdvPanel, Shader, Janua.Core.Functions;

procedure CloneDataset(dataset: TDataSet; dataclone: TVirtualTable);
begin
  try
    if not dataset.Active then
      dataset.open;
    if dataset is TMemDataSet then
    begin
      dataclone.Assign(dataset);
      if not dataclone.Active then
        dataclone.open;
    end
    else
    begin
      if not dataclone.Active then
        dataclone.open;
      if dataset.RecordCount > 0 then
      begin
        dataset.Last;
        dataset.First;
        while not dataset.Eof do
        begin
          dataclone.Append;
          CopyRecord(dataset, dataclone);
          dataset.Next;
        end;
      end;
    end;
  except
    on e: exception do
      raise exception.Create('Error Clone ' + dataset.ClassName + '.' + dataset.Name + ' ' + e.Message);
  end;

end;

procedure CopyRecord(dataset: TDataSet; dataclone: TDataSet); overload;
var
  i: integer;
begin
  if dataclone.Active and dataset.Active and (dataset.RecordCount > 0) then
  begin
    dataclone.Edit;
    for i := 0 to dataset.FieldCount - 1 do
      if Assigned(dataclone.FindField(dataset.Fields[i].FieldName)) then
        dataclone.FieldByName(dataset.Fields[i].FieldName).value := dataset.Fields[i].value;
    dataclone.Post;
  end;
end;

procedure InternalCloneDataset(dataset: TDataSet; dataclone: TClientDataset);
begin
  if dataclone.Active then
    dataclone.Close;

  {
    for i := 0 to dataset.FieldCount - 1 do
    if dataset.Fields[i].DataType = ftWideString then
    begin
    dataclone.Fields[i].Size := dataset.Fields[i].Size;
    dataclone.Fields[i].DisplayWidth := dataset.Fields[i].DisplayWidth;
    end;
  }

  if not dataclone.Active then
    dataclone.CreateDataSet;

  if dataset.RecordCount > 0 then
  begin
    dataset.Last;
    dataset.First;
    while not dataset.Eof do
    begin
      dataclone.Append;
      CopyRecord(dataset, dataclone);
      dataset.Next;
    end;
  end;
end;

function VerificaCodFisc(const Codfiscale: String; var strErrore: string): boolean;
begin
  Result := VerifyFiscalCode(Codfiscale, strErrore);
end;

procedure PDFExport(Filename: String; Report: TQuickRep);
var
  pdfFilter: TQRPDFDocumentFilter;
begin

  pdfFilter := TQRPDFDocumentFilter.Create(Filename);
  // PDFFilter.Filename:='test.pdf';
  Report.ExportToFilter(pdfFilter);

end;

function ExistField(dataset: TDataSet; Field: widestring): boolean;
var
  i: integer;
begin
  Result := False;
  for i := 0 to dataset.FieldCount - 1 do
    if dataset.Fields[i].FieldName = Field then
      Result := True;
end;

procedure CloneRecord(dataset: TDataSet; dataclone: TDataSet);
var
  i: integer;
begin
  if not(dataclone.State in [dsEdit, dsInsert]) then
    dataclone.Edit;
  for i := 0 to dataset.FieldCount - 1 do
    if ExistField(dataclone, dataset.Fields[i].FieldName) then
      dataclone.FieldByName(dataset.Fields[i].FieldName).value := dataset.Fields[i].value;
  dataclone.Post;
end;

procedure CloneDataset(dataset: TDataSet; dataclone: TClientDataset);
begin
  if not dataset.Active then
    OpenDataset(dataset);
  InternalCloneDataset(dataset, dataclone);
  if (dataset is TCustomUniDataset) then
  begin
    if TCustomUniDataset(dataset).Prepared then
      TCustomUniDataset(dataset).UnPrepare;
  end;
  dataset.Close;
end;

procedure GestisciErrore(Sender: TDataSet; e: exception);
Var
  ErrFile: TextFile;
  Esteso: String;
  Componente: Tcomponent;
begin
  if not DirectoryExists('c:\januaproject\log') then
    CreateDir('c:\januaproject\log');
  Assignfile(ErrFile, 'c:\januaproject\log\JanuaDatasetError.log');
  If FileExists('c:\januaproject\log\JanuaDatasetError.log') then
    Append(ErrFile)
  else
    Rewrite(ErrFile);
  Esteso := 'ore: ' + DateTimeToStr(Now()) + sLineBreak + 'messaggio: ' + e.Message + sLineBreak +
    'locazione: "' + Sender.ClassName + '" ';

  if Sender is Tcomponent then
  begin
    Componente := Sender as Tcomponent;
    Repeat
      Esteso := Esteso + ',' + Componente.Name;
      Componente := Componente.Owner;
    until Componente = nil;
  end;

  if (Sender is TCustomUniDataset) then
  begin
    if Assigned(TCustomUniDataset(Sender).Connection) then
    begin
      Esteso := Esteso + sLineBreak + 'Server: ' + (TCustomUniDataset(Sender)).Connection.Server + ', ' +
        'User: ' + (TCustomUniDataset(Sender)).Connection.Username + ', ' + 'Schema: ' +
        (TCustomUniDataset(Sender)).Connection.Database + ', ';
    end;
  end;

  if (Sender is TUniQuery) then
    Esteso := Esteso + sLineBreak +
      'SQL**************************************************************************' + sLineBreak +
      TUniQuery(Sender).SQL.Text + sLineBreak +
      '*****************************************************************************';

  if (Sender is TUniTable) then
    Esteso := Esteso + sLineBreak +
      'Tabella**********************************************************************' + sLineBreak +
      TUniTable(Sender).TableName + sLineBreak + TUniTable(Sender).SQL.Text + sLineBreak +
      '*************************************.****************************************';

  JShowError('Errore di Apertura Dataset: ' + Sender.Name, Esteso, '');

  WriteLn(ErrFile, Esteso);
  CloseFile(ErrFile);
end;

function OpenDatasetInternal(dataset: TDataSet; raiser: boolean): boolean;
begin
  try
    dataset.open;
    Result := True;
  except
    on e: exception do
    begin
      GestisciErrore(dataset, e);
      Result := False;
      if raiser then
        raise;
    end;
  end;
end;

function OpenDataset(dataset: TDataSet): boolean;
begin
  Result := OpenDatasetInternal(dataset, True);
end;

function TestDataset(dataset: TDataSet): boolean;
begin
  Result := OpenDatasetInternal(dataset, False);
end;

{ function BarcodeGenerator(header: string; firstnum: string; firstdigits: string;
  secondnum: string; seconddigits: string;
  thirdnum: string; thirddigists: string): string;
  var
  barcode: string;
  begin
  barcode := header + lpad(firstnum, firstdigits, '0');
  if seconddigits > 0 then  barcode := barcode + lpad(secondnm, seconddigits, '0');
  if thirsdigits > 0 then  barcode := barcode + lpad(thirsnm, thirsdigits, '0');

  checksum := 0;
  for posizione := 1 to 12 do
  if posizione mod 2 = 0 then
  checksum := checksum + StrToInt(copy(barcode,posizione,1)) * 3
  else
  checksum := checksum + StrToInt(copy(barcode,posizione,1));

  checksum := checksum mod 10;
  checksum := 10 - checksum;
  if checksum = 10 then checksum := 0;

  barcode := barcode + IntToStr(checksum);
  end;
}

const
  cryptOffs: array [1 .. 20] of integer = (75, 64, 70, 67, 71, 65, 73, 74, 66, 69, 68, 72, 64, 67, 65, 74, 69,
    72, 75, 70);

function VerificaRegioneRicetta(ricetta: string): boolean;
var
  regione: string;
begin
  regione := copy(ricetta, 1, 3);
  Result := not((regione <> '010') and (regione <> '020') and (regione <> '030') and (regione <> '040') and
    (regione <> '050') and (regione <> '060') and (regione <> '070') and (regione <> '080') and
    (regione <> '090') and (regione <> '100') and (regione <> '110') and (regione <> '120') and
    (regione <> '130') and (regione <> '140') and (regione <> '150') and (regione <> '160') and
    (regione <> '170') and (regione <> '180') and (regione <> '190') and (regione <> '200') and
    (regione <> '999'));

end;

function ReadAnagraphBarcode(strCodice: string): int64;
var
  codice: int64;
begin
  if (length(strCodice) > 12)
  // and (copy(strCodice,1 ,1 ) = '0')
  then
    strCodice := copy(strCodice, 1, length(strCodice) - 1);

  // personale := False;
  // sistema EAN 13 custom, uso il barcode 'liscio'
  if strCodice > '' then
  begin
    codice := StrToInt64(strCodice);
    strCodice := IntToStr(codice);
  end
  else
    codice := 0;

  Result := codice;
end;

procedure SetDefaultSession(DataModule: TDataModule; Session: TJanuaUniConnection);
var
  j: integer;
  Temp: Tcomponent;
begin
  for j := DataModule.ComponentCount - 1 downto 0 do
  begin
    Temp := DataModule.Components[j];
    if Temp is TUniQuery then
      (Temp as TUniQuery).Connection := Session
    else if Temp is TUniTable then
      (Temp as TUniTable).Connection := Session
    else if Temp is TUniStoredProc then
      (Temp as TUniStoredProc).Connection := Session
      // TUniScript
    else if Temp is TUniScript then
      (Temp as TUniScript).Connection := Session
  end;
end;

procedure SetEditDataModule(DataModule: TDataModule);
var
  j, i: integer;
  Temp: Tcomponent;
begin
  for j := DataModule.ComponentCount - 1 downto 0 do
  begin
    Temp := DataModule.Components[j];
    if Temp is TFloatField then
    begin
      if TFloatField(Temp).EditFormat = '' then
        TFloatField(Temp).EditFormat := '##0.##';
    end
  end;
end;

{
  function JanuainputText(sTitle: string; sCaption:
  string; sDefault: string): string;
  var
  vdlgInput: TdlgInputText;
  begin
  Result := sDefault;
  vdlgInput := TdlgInputText.Create(nil);
  try
  vdlgInput.Label1.Caption := sCaption;
  vdlgInput.Caption := sTitle;
  vdlgInput.Edit1.Text := sDefault;
  vdlgInput.ShowModal;
  if vdlgInput.ModalResult = mrOK then Result := vdlgInput.Edit1.Text;
  finally
  vdlgInput.Free;
  end;
  end;
}




// ------------------------------------------------------------------------------

procedure LockControl(lock: boolean; control: TObject; color: TColor);
begin
  if control is TJvDBComboEdit and lock then
  begin
    TJvDBComboEdit(control).color := color;
    TJvDBComboEdit(control).TabStop := False;
    TJvDBComboEdit(control).ReadOnly := True;
  end
  else if control is TJvDBComboEdit and not lock then
  begin
    TJvDBComboEdit(control).color := clWhite;
    TJvDBComboEdit(control).TabStop := True;
    TJvDBComboEdit(control).ReadOnly := False;
  end
  else if control is TDBEdit and lock then
  begin
    TDBEdit(control).color := color;
    TDBEdit(control).TabStop := False;
    TDBEdit(control).ReadOnly := True;
  end
  else if control is TJvDBComboEdit and not lock then
  begin
    TDBEdit(control).color := clWhite;
    TDBEdit(control).TabStop := True;
    TDBEdit(control).ReadOnly := False;
  end;

end;



// ------------------------------------------------------------------------------

function ReadParam(parDataset: TDataSet; const sKey: string; const sDefault: string): string;
var
  valore: string;
begin
  // ******* Specifiche 2008-0002 lettura parametro locale *******************
  // ******************** funzione di scrittura impostazioni su db  *************
  // questa funzione legge una stringa dal registro nell'area del programma
  // la string a? collegata ad un terminale tramite un codice ufficio
  // campo office_id
  // ******************************************************************************
  if not parDataset.Active then
    parDataset.open;

  if parDataset.Locate('OFF_KEY', sKey, []) then
    valore := parDataset.FieldByName('OFF_VALUE').value
  else
  begin
    valore := sDefault;
    // WriteString(chiave, Stringa,  valore,  False);
    // NOTA: quando possibile verr? registrato un valore di default su db
    // cosa ora non possibile..
  end;

  Result := valore;
end;

// ------------------------------------------------------------------------------
(*
  function StripString(const strStringa: string): string;
  var
  strTemp: string;
  begin
  strTemp := strStringa;
  strTemp := StringReplace(strTemp, '<', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '>', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '.', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ' ', '%', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ',', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '-', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '/', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '\', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '@', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '*', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ':', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '&', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '(', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, ')', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '=', '', [rfReplaceAll, rfIgnoreCase]);
  strTemp := StringReplace(strTemp, '?', '', [rfReplaceAll, rfIgnoreCase]);
  Result := strTemp;
  end;
*)

// Utility function to get the tmp folder
function GetTempPath: String;
var
  Len: integer;
  S: String;
begin
  Len := Windows.GetTempPath(0, nil);
  if Len > 0 then
  begin
    SetLength(S, Len);
    Len := Windows.GetTempPath(Len, PChar(S));
    SetLength(S, Len);
    if (copy(S, Len, 1) <> '\') then
      S := S + '\';
    Result := S;
  end
  else
    raise exception.Create('Can''t find the TEMP folder');
end;

(*
  function MakeTag(TagName, value: String): string;
  begin
  // ******** questa funzione genera un tag xml da una string tag+value ******
  Result := '<' + TagName + '>' + value + '</' + TagName + '>';
  end;

  function MakeXML(dataset: TDataSet): string;
  var
  i: integer;
  begin
  Result := '';
  if (not dataset.Active) or (dataset.IsEmpty) then
  Exit;
  Result := Result + '<' + dataset.Name + '>';
  dataset.First;
  while not dataset.Eof do
  begin
  Result := Result + '<RECORD>';
  for i := 0 to dataset.Fields.Count - 1 do
  Result := Result + MakeTag(dataset.Fields[i].Name, dataset.Fields[i].Text);
  Result := Result + '</RECORD>';
  dataset.Next;
  end;
  Result := Result + '</' + dataset.Name + '>';
  end;
*)

// ------------------------------------------------------------------------------

{
  procedure JShowMessage(smessage: string; sExtra: string; sHelp: string);
  var
  TaskDialog1: TAdvTaskDialogEx;
  begin
  TaskDialog1 := nil;
  try
  TaskDialog1 := TAdvTaskDialogEx.Create(Application);
  TaskDialog1.Title := 'Informazione';
  TaskDialog1.Instruction := smessage;
  TaskDialog1.Icon := tiInformation;
  TaskDialog1.ExpandedText := sExtra;
  TaskDialog1.ExpandControlText := 'Premi qui per nascondere';
  TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
  TaskDialog1.Footer := sHelp;
  TaskDialog1.FooterIcon := tfiInformation;
  TaskDialog1.Execute;
  finally
  TaskDialog1.Free;
  end;
  end;

  procedure JShowWarning(smessage: string; sExtra: string; sHelp: string);
  var
  TaskDialog1: TAdvTaskDialogEx;
  begin
  TaskDialog1 := nil;
  try
  TaskDialog1 := TAdvTaskDialogEx.Create(Application);
  TaskDialog1.Title := 'Attenzione';
  TaskDialog1.Instruction := smessage;
  TaskDialog1.Icon := tiWarning;
  TaskDialog1.ExpandedText := sExtra;
  TaskDialog1.Execute;
  finally

  TaskDialog1.Free;
  end;
  end;

  procedure JShowError(smessage: string; sExtra: string; sHelp: string);
  var
  TaskDialog1: TAdvTaskDialogEx;
  begin
  TaskDialog1 := nil;
  try
  TaskDialog1 := TAdvTaskDialogEx.Create(Application);
  TaskDialog1.Title := 'Attenzione';
  TaskDialog1.Instruction := smessage;
  TaskDialog1.Icon := tiError;
  TaskDialog1.ExpandedText := sExtra;
  TaskDialog1.Execute;
  finally
  TaskDialog1.Free;
  end;
  end;
}

// ____________________ funzione search and replace rich edit ___________________

function Search_And_Replace(RichEdit: TRichEdit; SearchText, ReplaceText: string): boolean;
var
  startpos, Position, endpos: integer;
begin
  Result := True;
  startpos := 0;
  with RichEdit do
  begin
    endpos := length(RichEdit.Text);
    Lines.BeginUpdate;
    while FindText(SearchText, startpos, endpos, [stMatchCase]) <> -1 do
    begin
      endpos := length(RichEdit.Text) - startpos;
      Position := FindText(SearchText, startpos, endpos, [stMatchCase]);
      Inc(startpos, length(SearchText));
      SetFocus;
      SelStart := Position;
      SelLength := length(SearchText);
      RichEdit.clearselection;
      SelText := ReplaceText;
    end;
    Lines.EndUpdate;
  end;
end;


// --------------------- funzione di verifica della correttezza di una mail -----
(*
  function IsValidEmail(const value: string): boolean;
  function CheckAllowed(const S: string): boolean;
  var
  i: integer;
  begin
  Result := False;
  for i := 1 to length(S) do
  if not(S[i] in ['a' .. 'z', 'A' .. 'Z', '0' .. '9', '_', '-', '.']) then
  Exit;
  Result := True;
  end;
  var
  i: integer;
  NamePart, ServerPart: string;
  begin
  Result := False;
  i := pos('@', value);
  if i = 0 then
  Exit;
  NamePart := copy(value, 1, i - 1);
  ServerPart := copy(value, i + 1, length(value));
  if (length(NamePart) = 0) or ((length(ServerPart) = 0)) then
  Exit;
  i := pos('.', ServerPart);
  if (i = 0) or (i > (length(ServerPart) - 2)) then
  Exit;
  Result := CheckAllowed(NamePart) and CheckAllowed(ServerPart);
  end;


  // ------------------------------------------------------------------------------

  // ------------------- funzioni di verifica codice fiscale italiano -------------

  // ------------------------------------------------------------
  function Valctrl(resto: integer): string;
  begin
  case (resto) of
  0:
  Valctrl := ('A');
  1:
  Valctrl := ('B');
  2:
  Valctrl := ('C');
  3:
  Valctrl := ('D');
  4:
  Valctrl := ('E');
  5:
  Valctrl := ('F');
  6:
  Valctrl := ('G');
  7:
  Valctrl := ('H');
  8:
  Valctrl := ('I');
  9:
  Valctrl := ('J');
  10:
  Valctrl := ('K');
  11:
  Valctrl := ('L');
  12:
  Valctrl := ('M');
  13:
  Valctrl := ('N');
  14:
  Valctrl := ('O');
  15:
  Valctrl := ('P');
  16:
  Valctrl := ('Q');
  17:
  Valctrl := ('R');
  18:
  Valctrl := ('S');
  19:
  Valctrl := ('T');
  20:
  Valctrl := ('U');
  21:
  Valctrl := ('V');
  22:
  Valctrl := ('W');
  23:
  Valctrl := ('X');
  24:
  Valctrl := ('Y');
  25:
  Valctrl := ('Z');
  else
  Valctrl := ('-1');
  end;
  end;

  function ValPari(carattere: char): integer;
  // var
  // a: integer;
  begin
  // a := ord((carattere));

  case carattere of
  'A':
  ValPari := (0);
  'B':
  ValPari := (1);
  'C':
  ValPari := (2);
  'D':
  ValPari := (3);
  'E':
  ValPari := (4);
  'F':
  ValPari := (5);
  'G':
  ValPari := (6);
  'H':
  ValPari := (7);
  'I':
  ValPari := (8);
  'J':
  ValPari := (9);
  'K':
  ValPari := (10);
  'L':
  ValPari := (11);
  'M':
  ValPari := (12);
  'N':
  ValPari := (13);
  'O':
  ValPari := (14);
  'P':
  ValPari := (15);
  'Q':
  ValPari := (16);
  'R':
  ValPari := (17);
  'S':
  ValPari := (18);
  'T':
  ValPari := (19);
  'U':
  ValPari := (20);
  'V':
  ValPari := (21);
  'W':
  ValPari := (22);
  'X':
  ValPari := (23);
  'Y':
  ValPari := (24);
  'Z':
  ValPari := (25);

  '0':
  ValPari := (0);
  '1':
  ValPari := (1);
  '2':
  ValPari := (2);
  '3':
  ValPari := (3);
  '4':
  ValPari := (4);
  '5':
  ValPari := (5);
  '6':
  ValPari := (6);
  '7':
  ValPari := (7);
  '8':
  ValPari := (8);
  '9':
  ValPari := (9);
  else
  ValPari := (-1);
  end;

  end;

  function ValDispari(carattere: char): integer;
  begin
  case (carattere) of

  'A':
  ValDispari := (1);
  'B':
  ValDispari := (0);
  'C':
  ValDispari := (5);
  'D':
  ValDispari := (7);
  'E':
  ValDispari := (9);
  'F':
  ValDispari := (13);
  'G':
  ValDispari := (15);
  'H':
  ValDispari := (17);
  'I':
  ValDispari := (19);
  'J':
  ValDispari := (21);
  'K':
  ValDispari := (2);
  'L':
  ValDispari := (4);
  'M':
  ValDispari := (18);
  'N':
  ValDispari := (20);
  'O':
  ValDispari := (11);
  'P':
  ValDispari := (3);
  'Q':
  ValDispari := (6);
  'R':
  ValDispari := (8);
  'S':
  ValDispari := (12);
  'T':
  ValDispari := (14);
  'U':
  ValDispari := (16);
  'V':
  ValDispari := (10);
  'W':
  ValDispari := (22);
  'X':
  ValDispari := (25);
  'Y':
  ValDispari := (24);
  'Z':
  ValDispari := (23);

  '0':
  ValDispari := (1);
  '1':
  ValDispari := (0);
  '2':
  ValDispari := (5);
  '3':
  ValDispari := (7);
  '4':
  ValDispari := (9);
  '5':
  ValDispari := (13);
  '6':
  ValDispari := (15);
  '7':
  ValDispari := (17);
  '8':
  ValDispari := (19);
  '9':
  ValDispari := (21);
  else
  ValDispari := (-1);
  end;
  end;

  function VerificaCodFisc(const Codfiscale: String; var strErrore: string): boolean;
  var
  somma, i, resto: integer;
  begin
  strErrore := '';

  somma := 0;
  if length(Codfiscale) = 16 then
  begin // esegue la verifica del codice fiscale solo se questo ?
  // lungo 16
  for i := 1 to 15 do
  begin
  resto := (i mod 2);

  if resto = 0 then
  somma := somma + ValPari(Codfiscale[i])
  else
  somma := somma + ValDispari(Codfiscale[i]);
  end;
  resto := (somma mod 26);
  if (Valctrl(resto) = Codfiscale[16]) then
  VerificaCodFisc := True
  else
  begin
  VerificaCodFisc := False;
  strErrore := ('Attenzione Codice fiscale formalmente errato');
  end;
  end
  else
  begin
  VerificaCodFisc := False;
  strErrore := ('Attenzione Errata lunghezza del codice fiscale.');
  end;
  end;

  // fine funzioni di verifica del codice fiscale.....
  // ------------------------------------------------------------------------------
*)

{ TODO -oRiccardo -cControlli :
  Creare una funzione che controlli in base al carattere impiegato, iso stato partita iva o codice fiscale
  Insieme }

procedure SetColorEnter(Sender: TObject);
begin
  if (Sender is TDBEdit) then
    (Sender as TDBEdit).color := clYellow
  else if (Sender is TDBComboBox) then
    (Sender as TDBComboBox).color := clYellow
  else if (Sender is TJvDBDateEdit) then
    (Sender as TJvDBDateEdit).color := clYellow
  else if (Sender is TJvDBCAlcEdit) then
    (Sender as TJvDBCAlcEdit).color := clYellow
  else if (Sender is TDBLookUpComboBox) then
    (Sender as TDBLookUpComboBox).color := clYellow
  else if (Sender is TDBMemo) then
    (Sender as TDBMemo).color := clYellow
  else if (Sender is TJvComboEdit) then
    (Sender as TJvComboEdit).color := clYellow
end;

procedure SetColorExit(Sender: TObject);
begin
  if (Sender is TDBEdit) then
    (Sender as TDBEdit).color := clWhite
  else if (Sender is TDBComboBox) then
    (Sender as TDBComboBox).color := clWhite
  else if (Sender is TJvDBDateEdit) then
    (Sender as TJvDBDateEdit).color := clWhite
  else if (Sender is TJvDBCAlcEdit) then
    (Sender as TJvDBCAlcEdit).color := clWhite
  else if (Sender is TDBLookUpComboBox) then
    (Sender as TDBLookUpComboBox).color := clWhite
  else if (Sender is TDBMemo) then
    (Sender as TDBMemo).color := clWhite
  else if (Sender is TJvComboEdit) then
    (Sender as TJvComboEdit).color := clWhite
end;

procedure lookupSetup(Sender: TJvDBLookupCombo);
begin
  if Assigned(Sender.LookupSource) and Assigned(Sender.LookupSource.dataset) and (Sender.LookupField > '')
  then
    Sender.value := Sender.LookupSource.dataset.FieldByName(Sender.LookupField).AsString;
end;

procedure colorEnter(Sender: TObject);
begin
  if Sender is TEdit then
    (Sender as TEdit).color := clYellow
  else if Sender is TDBEdit then
    (Sender as TDBEdit).color := clYellow
  else if Sender is TJvDBComboEdit then
    (Sender as TJvDBComboEdit).color := clYellow
  else if Sender is TJvDBDateEdit then
    (Sender as TJvDBDateEdit).color := clYellow
  else if Sender is TDBMemo then
    (Sender as TDBMemo).color := clYellow
end;

procedure colorExit(Sender: TObject);
begin
  if Sender is TEdit then
    (Sender as TEdit).color := clWhite
  else if Sender is TDBEdit then
    (Sender as TDBEdit).color := clWhite
  else if Sender is TJvDBComboEdit then
    (Sender as TJvDBComboEdit).color := clWhite
  else if Sender is TJvDBDateEdit then
    (Sender as TJvDBDateEdit).color := clWhite
  else if Sender is TDBMemo then
    (Sender as TDBMemo).color := clWhite
end;

{ This is the workhorse routine that does the drawing. }
procedure DrawField(const value: String; const Rect: TRect; vCanvas: TCanvas; vFont: TFont;
  vAlignment: TAlignment; FontStyle: TFontStyles; FontColor: TColor; BGColor: TColor);
var
  i: integer;
begin
  i := 0;

  // First, fill in the background color of the cell
  vCanvas.Brush.color := BGColor;
  vCanvas.FillRect(Rect);
  // SetBkMode ensures that the background is transparent
  SetBkMode(vCanvas.Handle, TRANSPARENT);

  // Set the passed font properties
  vCanvas.Font := vFont;
  vCanvas.Font.color := FontColor;
  vCanvas.Font.Style := vCanvas.Font.Style + FontStyle;

  // Set Text Alignment
  case vAlignment of
    taRightJustify:
      begin
        SetTextAlign(vCanvas.Handle, TA_RIGHT);
        i := Rect.Right - 2;
      end;

    taLeftJustify:
      begin
        SetTextAlign(vCanvas.Handle, TA_LEFT);
        i := Rect.Left + 2;
      end;

    taCenter:
      begin
        SetTextAlign(vCanvas.Handle, TA_CENTER);
        i := (Rect.Right + Rect.Left) DIV 2;
      end;
  end; { case }

  // Draw the text
  vCanvas.TextRect(Rect, i, Rect.Top + 2, value);
  SetTextAlign(vCanvas.Handle, TA_LEFT);
end;

function FPartitaIva(piva: string; var Error: string; var specification: string): boolean;
var
  i: integer;
  S: integer;
  c: integer;
  r: integer;
begin
  S := 0;
  Error := '';
  specification := '';

  if length(trim(piva)) <> 11 then
  begin
    Result := False;
    Error := 'Attenzione inserita partita iva di lunghezza errata!';
    specification := 'La partita iva italiana deve essere di 11 caratteri questa ? invece di: ' +
      IntToStr(length(trim(piva)));
  end
  else
  begin
    for i := 1 to 11 do
    begin
      if (copy(piva, i, 1) < '0') or (copy(piva, i, 1) > '9') then
      begin
        Error := 'La partita iva contiene caratteri non ammessi';
        specification := 'la parita iva deve essere di 11 caratteri numerici';
        Result := False;
        Exit;
      end;

      if i / 2 = trunc(i / 2) then
      begin
        c := StrToInt(copy(piva, i, 1)) * 2;
        if c > 9 then
          c := c - 9;
        S := S + c;
      end
      else if i < 11 then
        S := S + StrToInt(copy(piva, i, 1));
    end;
    r := S - 10 * trunc(S / 10);
    if r = 0 then
      c := 0
    else
      c := 10 - r;

    if copy(piva, 11, 1) <> IntToStr(c) then
    begin
      Error := 'La partita iva immessa non risulta compatibile';
      specification := 'dalla verifica effettuata uno dei caratteri della partita iva ? errato';
      Result := False;
    end
    else if piva = '00000000000' then
    begin
      Error := 'La partita iva immessa non risulta compatibile, ? composta solo da 0';
      specification := 'la partita iva 00000000000 non risulta essere esistente.....';
      Result := False;
    end
    else
      Result := True;
  end;
end;

(*
  function FRound(number: Double; digits: integer): Double;
  begin
  Result := Janua.Core.Functions.FRound(number, digits);
  end;
*)

function parambyname(dataset: TClientDataset; strParam: string; value: string): boolean; overload;
var
  i: integer;
begin
  Result := False;
  for i := 0 to dataset.Params.Count - 1 do
    if UpperCase(dataset.Params[i].Name) = UpperCase(strParam) then
    begin
      try
        Result := True;
        dataset.Params[i].AsString := value;
      except
        Result := False;
      end;
    end;
  if Result = False then
    ShowMessage('Impossibile impostare il parametro ' + strParam);
end;

function parambyname(dataset: TClientDataset; strParam: string; value: TDateTime): boolean; overload;
var
  i: integer;
begin
  Result := False;
  for i := 0 to dataset.Params.Count - 1 do
    if UpperCase(dataset.Params[i].Name) = UpperCase(strParam) then
    begin
      try
        Result := True;
        dataset.Params[i].AsDateTime := value;
      except
        Result := False;
      end;
    end;
  if Result = False then
    ShowMessage('Impossibile impostare il parametro ' + strParam);
end;

/// //////////////////////////////////////////////
// KeyControl
// this function verifies a string to a char key
// by comparing the character key and the original number

function KeyControl(number: string; key: string): boolean;
var
  i: integer;
  j: integer;
begin
  Result := (length(key) = length(number));
  for i := 1 TO length(number) do
  begin
    j := (length(number) - i + 1);
    // Showmessage( inttostr((strtoint(copy(number,I,1))+i)mod 9) + ' - ' + copy(key, j, 1) ) ;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 1) and not(copy(key, j, 1) = 'H') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 2) and not(copy(key, j, 1) = 'E') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 3) and not(copy(key, j, 1) = 'R') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 4) and not(copy(key, j, 1) = 'M') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 5) and not(copy(key, j, 1) = 'A') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 6) and not(copy(key, j, 1) = 'N') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 7) and not(copy(key, j, 1) = 'I') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 8) and not(copy(key, j, 1) = 'T') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 9) and not(copy(key, j, 1) = 'O') then
      Result := False;
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 0) and not(copy(key, j, 1) = 'S') then
      Result := False;

  end; // fine result
end;

/// //////////////////////////////////////////////
// KeyGenerator
// this function converts a string to a char key
// this uses the char value (number) and char position (intger)
function KeyGenerator(number: string): string;
var
  i: integer;
  j: integer;
  pippo: array [1 .. 20] of string;
begin
  for i := 1 to 20 do
    pippo[i] := '';
  Result := '';
  for i := 1 TO length(number) do
  begin
    j := (length(number) - i + 1);
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 1) then
      pippo[j] := 'H';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 2) then
      pippo[j] := 'E';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 3) then
      pippo[j] := 'R';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 4) then
      pippo[j] := 'M';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 5) then
      pippo[j] := 'A';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 6) then
      pippo[j] := 'N';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 7) then
      pippo[j] := 'I';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 8) then
      pippo[j] := 'T';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 9) then
      pippo[j] := 'O';
    if (trunc((StrToInt(copy(number, i, 1)) + i) mod 9) = 0) then
      pippo[j] := 'S';
  end; // fine result
  for i := 1 to 20 do
    Result := Result + pippo[i];

end;

/// //////////////////////////////////////////////
// EncryptStr
// Cripta una stringa di lunghezza N generando una
// stringa di lunghezza 2N contenente solo lettere maiuscole
function EncryptStr(source: string): string;
var
  i: integer;
  resultStr: string;
begin
  SetLength(resultStr, 2 * length(source));
  for i := 1 to length(source) do
  begin
    resultStr[2 * i - 1] := char((integer(source[i]) mod 16) + cryptOffs[i mod 21]);
    resultStr[2 * i] := char((integer(source[i]) div 16) + cryptOffs[i mod 21]);
  end;
  EncryptStr := resultStr;
end;

/// //////////////////////////////////////////////
// DecryptStr
// Decripta una stringa criptata con EncryptStr
function DecryptStr(source: string): string;
var
  i: integer;
  resultStr: string;
begin
  SetLength(resultStr, length(source) div 2);
  for i := 1 to (length(source) div 2) do
  begin
    resultStr[i] := char((integer(source[2 * i - 1]) - cryptOffs[i mod 21]) +
      (integer(source[2 * i]) - cryptOffs[i mod 21]) * 16);
  end;
  DecryptStr := resultStr;
end;

end.
