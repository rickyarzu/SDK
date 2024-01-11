unit Janua.VCL.Excel;

interface

uses
  // System Libraries ..............................................
  System.Classes, System.IOUtils, System.SysUtils, Generics.Collections, System.Math,
  System.UITypes, System.UIConsts, Winapi.Windows,

  // Database and Devart ...........................................
  Data.DB,

  // VCL Libraries
  Tabs, Grids, ExtCtrls, ComCtrls, ToolWin, Forms, Dialogs, ImgList, ActnList, StdCtrls,
  VCL.Graphics, VCL.ClipBrd,

  // TMS Components
  // Flexcel
  VCL.FlexCel.Core, FlexCel.XlsAdapter, FlexCel.Render,

  // Json Xml Libraries
  System.JSON, System.JSONConsts,

  // Janua Core Libraries
  Janua.Core.Excel, Janua.Core.Classes, Janua.Core.System, Janua.Core.Functions, Janua.VCL.Functions,
  Janua.Core.CustomControls, Janua.VCL.Dialogs, Winapi.ShellAPI;

Type
  TJanuaVCLExcel = Class(TJanuaCustomExcel)
  private
    FXls: TExcelFile;
    FOpenDialog: TOpenDialog;
    FJanuaDialogResult: TJanuaDialogResult;
    procedure SetXls(const Value: TExcelFile);
    procedure SetJanuaDialogResult(const Value: TJanuaDialogResult);
  protected
    function InternalActivate: boolean; override;
    function InternalOpenFile: boolean; override;
    function InternalSelectFile: boolean; override;
    function InternalReadValue(aRow, aColumn: integer): Variant; override;
    function InternalTabList: string; override;
  public
    function CellValueToJanuaCell(const v: TCellValue; const Row, Col: integer): TJanuaExcelCell;
    function FormatValue(const v: TCellValue; const Row, Col: integer): String;
    procedure DoPaste; override;
    procedure DoCopy; override;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy;
    procedure AnalizeFile(const Row, Col: integer); override;
    // This functions Select a Cell and returns its format string inside ...................
    function SelectedCellValue(const aCol, aRow: integer): TJanuaExcelCell;
  public
    property Xls: TExcelFile read FXls write SetXls;
  published
    property JanuaDialogResult: TJanuaDialogResult read FJanuaDialogResult write SetJanuaDialogResult;
  End;

Type
  TJanuaVCLFlexcelExport = Class(TJanuaCoreComponent)
  private
    FDataSource: TDataSource;
    FXls: TExcelFile;
    FJanuaDialog: TJanuaDialog;
    procedure SetDataSource(const Value: TDataSource);
    procedure SetXls(const Value: TExcelFile);
    procedure SetJanuaDialog(const Value: TJanuaDialog);
  protected
  public
    procedure FlExcelExport(Master: TDataset); overload;
    procedure FlExcelExport; overload;
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  public
    // property Xls: TExcelFile read FXls write SetXls;
  published
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property JanuaDialog: TJanuaDialog read FJanuaDialog write SetJanuaDialog;
  end;

function ValueToJanuaCell(const v: TCellValue; const Row, Col: integer; Xls: TExcelFile): TJanuaExcelCell;
function ElapsedTime(const et, st: TDateTime): string;
procedure PasteFromBiff8(const Xls: TExcelFile; const Row, Col: integer);
procedure CopyToClipboard(const DataFormat: TFlexCelClipboardFormat; const DataStream: TStream);
function JanuaCellValue(const aCol, aRow: integer; Xls: TExcelFile): TJanuaExcelCell;

implementation

function ValueToJanuaCell(const v: TCellValue; const Row, Col: integer; Xls: TExcelFile): TJanuaExcelCell;
var
  CellValue: String;
  Formatted: string;
  HasDate, HasTime: boolean;
  CellColor: TUIColor;
begin
  Result.Row := Row;
  Result.Col := Col;
  Result.Format := Xls.GetCellVisibleFormatDef(Row, Col).Format;

  case v.ValueType of
    TCellValueType.Empty:
      begin
        Result.Text := '';
        Result.Formula := '';
        Result.Value := '';
      end;

    TCellValueType.Boolean:
      begin
        Result.Text := (BoolToStr(v.AsBoolean, true));
        Result.Formula := (BoolToStr(v.AsBoolean, true));
        Result.Format := Xls.GetCellVisibleFormatDef(Row, Col).Format;
        Result.Value := v.AsBoolean;
      end;

    TCellValueType.Error:
      begin
        Result.Text := ('error: ' + TFormulaMessages.ErrString(v.AsError));
        Result.Format := Xls.GetCellVisibleFormatDef(Row, Col).Format;
        Result.Formula := (BoolToStr(v.AsBoolean, true));
        Result.Value := '';
      end;

    TCellValueType.Number:
      begin // Remember, dates are doubles with date format. Also, all numbers are returned as doubles, even if they are integers.
        CellColor := TUIColor.Empty;
        CellValue := TFlxNumberFormat.FormatValue(v, Xls.GetCellVisibleFormatDef(Row, Col).Format, CellColor, Xls,
          HasDate, HasTime).ToString;
        if HasDate or HasTime then
        begin
          Result.Value := v.ToDateTime(Xls.OptionsDates1904);
          Result.Text := DateTimeToStr(Result.Value);
          Result.Formula := DateTimeToStr(Result.Value);
          Result.Format := Xls.GetCellVisibleFormatDef(Row, Col).Format;
        end
        else
        begin
          Result.Value := v.AsNumber;
          Result.Text := FloatToStr(v.AsNumber);
          Result.Formula := Result.Text;
        end;
      end;

    TCellValueType.DateTime:
      // FlexCel won't currently return DateTime values, as dates are numbers.
      begin
        Result.Value := v.AsDateTime;
        Result.Text := DateTimeToStr(Result.Value);
        Result.Formula := DateTimeToStr(Result.Value);
      end;

    TCellValueType.StringValue:
      begin
        if v.AsString.RTFRunCount > 0 then
          Formatted := ' FORMATTED '
        else
          Formatted := ' ';

        Result.Value := v.AsString.ToString;
        Result.Text := v.AsString.ToString;
        Result.Formula := v.AsString.ToString;
      end;
  end;

end;

function JanuaCellValue(const aCol, aRow: integer; Xls: TExcelFile): TJanuaExcelCell;
var
  Fmt: TFlxFormat;
  v: TCellValue;
  Fmla: TFormula;
begin
  if Xls = nil then
    exit;

  if (aRow < 1) or (aCol < 1) then
  begin
    Result.Text := '';
    Result.Formula := 'The selected cell is not valid.';
    Result.Color := clRed;
    Result.Row := -1;
    Result.Col := -1;
  end
  else
  begin
    Fmt := Xls.GetCellVisibleFormatDef(aRow, aCol);
    v := Xls.GetCellValue(aRow, aCol);
    Result.Address := TCellAddress.Create(aRow, aCol).CellRef;
    Result.Row := aRow;
    Result.Col := aCol;

    // First see if it is a formula
    if v.IsFormula then
    begin
      Fmla := v.AsFormula;
      Result := ValueToJanuaCell(Fmla.FormulaResult, aRow, aCol, Xls);
      Result.Formula := Fmla.Text;
      // Result.Description := JanuaFormatValue(Fmla.FormulaResult, aRow, aCol);
    end
    else
    begin
      Result := ValueToJanuaCell(v, aRow, aCol, Xls);
      // Result.Description := JanuaFormatValue(v, aRow, aCol);
    end;

    Result.Format := Fmt.Format;
  end;
end;

procedure CopyToClipboard(const DataFormat: TFlexCelClipboardFormat; const DataStream: TStream);
var
  MyHandle: THandle;
  BiffPtr: pointer;
  FreeHandle: boolean;
  Df: string;
begin
  DataStream.Position := 0;
  FreeHandle := true;
  MyHandle := GlobalAlloc(GMEM_MOVEABLE, DataStream.Size);
  try
    BiffPtr := GlobalLock(MyHandle);
    try
      DataStream.ReadBuffer(BiffPtr^, DataStream.Size);
    finally
      GlobalUnlock(MyHandle);
    end; // finally

    Clipboard.Open;
    try
      Df := TFlexCelDataFormats.GetString(DataFormat);
      Clipboard.SetAsHandle(RegisterClipboardFormat(PChar(Df)), MyHandle);
      FreeHandle := false;
      // Note that we dont have to free MyHandle if the clipboard takes care of it
    finally
      Clipboard.Close;
    end; // Finally
  except
    if FreeHandle then
      GlobalFree(MyHandle);
    raise
  end; // except
end;

procedure PasteFromBiff8(const Xls: TExcelFile; const Row, Col: integer);
var
  MyHandle: THandle;
  BiffPtr: pointer;
  BiffSize: Cardinal;
  MemStream: TMemoryStream;
begin
  Clipboard.Open;
  try
    MyHandle := Clipboard.GetAsHandle(RegisterClipboardFormat('Biff8'));
    BiffPtr := GlobalLock(MyHandle);
    try
      BiffSize := GlobalSize(MyHandle);
      MemStream := TMemoryStream.Create;
      try
        MemStream.Write(BiffPtr^, BiffSize);
        MemStream.Position := 0;
        Xls.PasteFromXlsClipboardFormat(Row, Col, TFlxInsertMode.NoneDown, MemStream);

      finally
        if Assigned(MemStream) then
          MemStream.Free;
        MemStream := nil;
      end; // finally
    finally
      GlobalUnlock(MyHandle);
    end;
  finally
    Clipboard.Close;
  end;
end;

function ElapsedTime(const et, st: TDateTime): string;
var
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(et - st, Hour, Min, Sec, MSec);
  Result := Format('%.2d:%.2d:%.2d', [Hour, Min, Sec]);
end;

{ TJanuaVCLExcelImport }

procedure TJanuaVCLExcel.AnalizeFile(const Row, Col: integer);
var
  v: TCellValue;
  Fmla: TFormula;
begin
  if (self.FXls = nil) or not(self.FIsLoaded) then
  begin
    self.FJanuaDialog.JShowMessage('Attenzione occorre caricare un file Excel.',
      'Potete caricare il file con il relativo comando o menu. Supportati i formati excel dal 95 al 2016', '');
    exit;
  end;

  if (Row < 1) or (Col < 1) then // or (Row > self.f.RowCount - 1) or (Col > SheetData.ColCount - 1)
  begin
    self.FJanuaDialog.JShowMessage('Attenzione errore di selezione cella.',
      'Riportate questo errore al programmatore. ', 'servizio assistenza');
    exit;
  end;

  FJanuaDialog.JShowMessage(('Il Foglio Selezionato è "' + FXls.SheetName) + '"', '', '');
  v := FXls.GetCellValue(Row, Col);

  // First see if it is a formula
  if v.IsFormula then
  begin
    Fmla := v.AsFormula;
    FJanuaDialog.JShowMessage('La Cella ' + TCellAddress.Create(Row, Col).CellRef + ' contiene la Formula: ' + Fmla.Text
      + #10 + 'The result of the formula is ' + FormatValue(Fmla.FormulaResult, Row, Col), '', '');
    exit;
  end;

  ShowMessage('La Cella ' + TCellAddress.Create(Row, Col).CellRef + ' vale ' + FormatValue(v, Row, Col));

end;

constructor TJanuaVCLExcel.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaVCLExcel.Destroy;
begin
  if Assigned(self.FOpenDialog) then
    FOpenDialog.Free;
  if Assigned(self.FXls) then
    self.FXls.Free;

end;

procedure TJanuaVCLExcel.DoCopy;
var
  DataStream: TStream;
  cf: TFlexCelClipboardFormat;
begin
  inherited;
  if (FXls = nil) then
  begin
    ShowMessage('Non ci sono dati da copiare ....');
    exit;
  end;

  try
    Clipboard.Clear;
    Clipboard.Open; // The other open calls in CopyToCliboard will be ignored.
    try
      for cf := Low(TFlexCelClipboardFormat) to High(TFlexCelClipboardFormat) do
      begin
        DataStream := TMemoryStream.Create;
        try
          FXls.CopyToClipboard(cf, DataStream);
          CopyToClipboard(cf, DataStream);
        finally
          if Assigned(DataStream) then
            DataStream.Free;
          DataStream := nil;
        end;
      end;
    finally
      Clipboard.Close;
    end;
  except
    on ex: Exception do
    begin
      ShowMessage(ex.Message);
    end;
  end;
end;

procedure TJanuaVCLExcel.DoPaste;
begin
  inherited;

  if (self.FXls <> nil) then
  begin
    try
      if Clipboard.HasFormat(RegisterClipboardFormat('Biff8')) then
      begin
        PasteFromBiff8(Xls, 1, 1);
      end;
      if Assigned(self.JanuaDialogs) then
      begin
        JanuaDialogs.JShowMessage('Copia e incolla completato in cella A1', '', '')
      end
      else
      begin
        ShowMessage('NATIVE Data has been pasted at cell A1');
        exit;
      end;

      if Clipboard.HasFormat(CF_TEXT) or Clipboard.HasFormat(CF_UNICODETEXT) then
      begin
        Xls.PasteFromTextClipboardFormat(1, 1, TFlxInsertMode.NoneDown, Clipboard.AsText);
        ShowMessage('TEXT Data has been pasted at cell A1');
        exit;
      end;

      ShowMessage('There is no Excel or Text data on the clipboard.');

    except
      on ex: Exception do
      begin
        ShowMessage(ex.Message);
        if Assigned(FXls) then
          FXls.Free;
        FXls := nil;
        FXls := TXlsFile.Create(1, false);
      end;
    end;
  end;

end;

function TJanuaVCLExcel.FormatValue(const v: TCellValue; const Row, Col: integer): String;
var
  CellValue: String;
  Formatted: string;
  HasDate, HasTime: boolean;
  CellColor: TUIColor;
begin

  case v.ValueType of
    TCellValueType.Empty:
      exit('empty');
    TCellValueType.Boolean:
      exit('a boolean: ' + BoolToStr(v.AsBoolean, true));
    TCellValueType.Error:
      exit('an error: ' + TFormulaMessages.ErrString(v.AsError));

    TCellValueType.Number:
      begin // Remember, dates are doubles with date format. Also, all numbers are returned as doubles, even if they are integers.
        CellColor := TUIColor.Empty;
        CellValue := TFlxNumberFormat.FormatValue(v, Xls.GetCellVisibleFormatDef(Row, Col).Format, CellColor, Xls,
          HasDate, HasTime).ToString;
        if HasDate or HasTime then
        begin
          Result := 'a DateTime value: ' + DateTimeToStr(v.ToDateTime(Xls.OptionsDates1904)) + #10 +
            'The value is displayed as: ' + CellValue;
        end
        else
        begin
          Result := 'a double: ' + FloatToStr(v.AsNumber) + #10 + 'The value is displayed as: ' + CellValue + #10;
        end;
        exit;
      end;

    TCellValueType.DateTime:
      // FlexCel won't currently return DateTime values, as dates are numbers.
      begin
        exit('a DateTime value: ' + DateTimeToStr(v.AsDateTime));
      end;

    TCellValueType.StringValue:
      begin
        if v.AsString.RTFRunCount > 0 then
          Formatted := ' FORMATTED '
        else
          Formatted := ' ';

        Result := 'a' + Formatted + 'string: ' + v.AsString.ToString + #10 + 'In html: ' +
          v.AsString.ToHtml(Xls, Xls.GetCellVisibleFormatDef(Row, Col), THtmlVersion.Html_32, THtmlStyle.Simple,
          TEncoding.UTF8);
        exit;
      end;
  end;

  raise Exception.Create('Unexpected value on cell');

end;

function TJanuaVCLExcel.InternalActivate: boolean;
begin
  if FXls = nil then
    FXls := TXlsFile.Create(false);
  FOpenDialog := TOpenDialog.Create(self);
  self.FOpenDialog.Title := 'Selezionare i file Excel ..';
  FOpenDialog.Filter := 'Excel files|*.xls;*.xlsx;*.xlsm|All files|*.*';
  FOpenDialog.FilterIndex := 1;
end;

function TJanuaVCLExcel.InternalOpenFile: boolean;
begin
  if FXls <> nil then
    self.FXls.Open(self.filename)
  else
    FXls := TXlsFile.Create(filename, false);
  self.FIsLoaded := True;
end;

function TJanuaVCLExcel.InternalReadValue(aRow, aColumn: integer): Variant;
begin

end;

function TJanuaVCLExcel.InternalSelectFile: boolean;
begin
  if self.filename <> '' then
  begin
    FOpenDialog.filename := self.filename;
  end;

  Result := self.FOpenDialog.Execute;

  if Result then
    self.filename := self.FOpenDialog.filename;
end;

function TJanuaVCLExcel.InternalTabList: string;
var
  aList: TStrings;
  i, j: integer;
begin
  if Assigned(FXls) then
  begin
    j := FXls.ActiveSheet;
    aList := TStringList.Create;
    try
      // 1 based arraz of sheets ....................................................
      for i := 1 to FXls.SheetCount do
      begin
        FXls.ActiveSheet := i;
        aList.Add(FXls.SheetName);
      end;
      Result := aList.Text;
    finally
      self.FXls.ActiveSheet := j;
      aList.Free;
    end;
  end;
end;

function TJanuaVCLExcel.SelectedCellValue(const aCol, aRow: integer): TJanuaExcelCell;
var
  Fmt: TFlxFormat;
  v: TCellValue;
  Fmla: TFormula;
begin
  if Xls = nil then
    exit;
  if (aRow < 1) or (aCol < 1) then
  begin
    FselectedCell.Text := '';
    FselectedCell.Formula := 'The selected cell is not valid.';
    FselectedCell.Color := clRed;
    FselectedCell.Row := -1;
    FselectedCell.Col := -1;
  end
  else
  begin
    Fmt := Xls.GetCellVisibleFormatDef(aRow, aCol);
    v := FXls.GetCellValue(aRow, aCol);
    Result.Address := TCellAddress.Create(aRow, aCol).CellRef;
    Result.Row := aRow;
    Result.Col := aCol;

    // First see if it is a formula
    if v.IsFormula then
    begin
      Fmla := v.AsFormula;
      Result := self.CellValueToJanuaCell(Fmla.FormulaResult, aRow, aCol);
      Result.Formula := Fmla.Text;
      Result.Description := self.FormatValue(Fmla.FormulaResult, aRow, aCol);
    end
    else
    begin
      Result := self.CellValueToJanuaCell(v, aRow, aCol);
      Result.Description := FormatValue(v, aRow, aCol);
    end;

    Result.Format := Fmt.Format;
  end;

  self.FselectedCell := Result;
end;

procedure TJanuaVCLExcel.SetJanuaDialogResult(const Value: TJanuaDialogResult);
begin
  FJanuaDialogResult := Value;
end;

procedure TJanuaVCLExcel.SetXls(const Value: TExcelFile);
begin
  FXls := Value;
end;

function TJanuaVCLExcel.CellValueToJanuaCell(const v: TCellValue; const Row, Col: integer): TJanuaExcelCell;
var
  CellValue: String;
  Formatted: string;
  HasDate, HasTime: boolean;
  CellColor: TUIColor;
begin
  Result.Row := Row;
  Result.Col := Col;
  Result.Format := Xls.GetCellVisibleFormatDef(Row, Col).Format;

  case v.ValueType of
    TCellValueType.Empty:
      begin
        Result.Text := '';
        Result.Formula := '';
        Result.Value := '';
      end;

    TCellValueType.Boolean:
      begin
        Result.Text := (BoolToStr(v.AsBoolean, true));
        Result.Formula := (BoolToStr(v.AsBoolean, true));
        Result.Format := Xls.GetCellVisibleFormatDef(Row, Col).Format;
        Result.Value := v.AsBoolean;
      end;

    TCellValueType.Error:
      begin
        Result.Text := ('error: ' + TFormulaMessages.ErrString(v.AsError));
        Result.Format := Xls.GetCellVisibleFormatDef(Row, Col).Format;
        Result.Formula := (BoolToStr(v.AsBoolean, true));
        Result.Value := '';
      end;

    TCellValueType.Number:
      begin // Remember, dates are doubles with date format. Also, all numbers are returned as doubles, even if they are integers.
        CellColor := TUIColor.Empty;
        CellValue := TFlxNumberFormat.FormatValue(v, Xls.GetCellVisibleFormatDef(Row, Col).Format, CellColor, Xls,
          HasDate, HasTime).ToString;
        if HasDate or HasTime then
        begin
          Result.Value := v.ToDateTime(Xls.OptionsDates1904);
          Result.Text := DateTimeToStr(Result.Value);
          Result.Formula := DateTimeToStr(Result.Value);
          Result.Format := Xls.GetCellVisibleFormatDef(Row, Col).Format;
        end
        else
        begin
          Result.Value := v.AsNumber;
          Result.Text := FloatToStr(v.AsNumber);
          Result.Formula := Result.Text;
        end;
      end;

    TCellValueType.DateTime:
      // FlexCel won't currently return DateTime values, as dates are numbers.
      begin
        Result.Value := v.AsDateTime;
        Result.Text := DateTimeToStr(Result.Value);
        Result.Formula := DateTimeToStr(Result.Value);
      end;

    TCellValueType.StringValue:
      begin
        if v.AsString.RTFRunCount > 0 then
          Formatted := ' FORMATTED '
        else
          Formatted := ' ';

        Result.Value := v.AsString.ToString;
        Result.Text := v.AsString.ToString;
        Result.Formula := v.AsString.ToString;
      end;
  end;

end;

{ TJanuaVCLFlexcelExport }

procedure TJanuaVCLFlexcelExport.FlExcelExport(Master: TDataset);
var
  i, Row, columns, columns2: integer;
  // da Gestire con Tabbed Notebook ............................
  // aViewer: TFXlsViewer;
  { TODO -oRiccardo -cVCL : Impostare una finestra di gestione ed Editing File di Excel }
  Bookmark: TBookmark;
  Number: Double;
  S: String;
  T: String;
  aStream: TMemoryStream;
  PathToImage: string;
  Fmt: TFlxFormat;
  XF, XF2: integer;
  Landscape: boolean;
  Xls: TXlsFile;
begin
  // Create a new file. We could also open an existing file with Xls.Open
  Xls := TXlsFile.Create(false);
  try
    Xls.NewFile(1);

    if not Assigned(FJanuaDialog) then
      FJanuaDialog := TJanuaDialog.Create(self);

    if Master.RecordCount = 0 then
    begin
      if not self.IsServer then
        FJanuaDialog.JShowWarning('non ci sono dati da esportare!');
      exit;
    end;

    Bookmark := Master.GetBookmark;

    columns := 0;
    Row := 1;

    Fmt := Xls.GetDefaultFormat;
    Fmt.Font.Style := [TFlxFontStyles.Bold];
    XF := Xls.AddFormat(Fmt);

    for i := 0 to Master.Fields.Count - 1 do
      if ((Master.Fields[i].Tag > 0) and (Master.Fields[i].Tag < 9)) then
      begin
        inc(columns);
        Xls.SetCellFormat(Row, columns, XF);
        Xls.SetCellValue(Row, columns, Master.Fields[i].DisplayLabel);
        // Xls.CellValue[Row, columns] := Master.Fields[i].DisplayLabel;
        // Xls.CellFormat[Row, columns] := XF;
      end;

    Row := 2;


    // aggiunge i dati dei campi nelle righe in questione:

    Master.DisableControls;
    // evita i ritorni a video... interessante
    try
      Master.First;
      while not Master.Eof do
      begin
        columns := 0;

        Fmt := Xls.GetDefaultFormat;

        for i := 0 to Master.Fields.Count - 1 do
        begin
          if (Master.Fields[i].Tag = 7) and not Master.Fields[i].AsBoolean then
            Fmt.Font.Color := clRed;
        end;

        XF := Xls.AddFormat(Fmt);

        for i := 0 to Master.Fields.Count - 1 do
        begin // loop i masterfilds count
          if Master.Fields[i].Tag > 0 then
          begin
            inc(columns);
            if Master.Fields[i].Tag = 3 then
              T := Master.Fields[i].AsString
            else if Master.Fields[i].Tag = 4 then
              T := T + ' ' + Master.Fields[i].AsString
            else if Master.Fields[i].Tag = 5 then
            begin
              T := T + ' ' + Master.Fields[i].AsString;
              Xls.SetCellValue(Row, columns, T, XF);
              // Xls.CellValue[Row, columns] := T
            end
            else if Master.Fields[i].Tag = 7 then
            begin
              if Master.Fields[i].AsBoolean then
                T := 'X'
              else
                T := '';
              Xls.SetCellValue(Row, columns, T, XF);
              // Xls.CellValue[Row, columns] := T
            end
            else if Master.Fields[i].Tag = 6 then
            begin
              T := FormatDateTime('mm/dd/yyyy', Master.Fields[i].AsDateTime);
              Xls.SetCellValue(Row, columns, T, XF);
              // Xls.CellValue[Row, columns] := T;
              // Master.Fields [I].AsDateTime;
            end
            else if Master.Fields[i].Tag = 2 then
            begin
              Xls.SetCellValue(Row, columns, Master.Fields[i].AsFloat, XF);
              // Xls.CellValue[Row, columns] := Master.Fields[i].AsFloat;
              // if Sign(number) = -1 then T := '=-' else T := '=';
              // number := number * sign(number);

              // T :=  T +  FormatFloat('#0.', Trunc(number))
              // + '.' + LPad(IntToStr(Round(100*((number) - (Trunc(number)))
              // )),2, '0');
              // RangeE.Value2 := T;
              // RangeE.FormulaR1C1 := T;
              // RangeE.NumberFormat := 'comma [0]';
            end
            else
              // RangeE.NumberFormat := '@';
              Xls.SetCellValue(Row, columns, Master.Fields[i].AsString, XF);
            // Xls.CellValue[Row, columns] := Master.Fields[i].AsString;
            // if Master.Fields[I].Tag = 2 then
            // RangeE.Style := 'comma [0]';
            // RangeE := RangeE.Next;
          end;
        end;
        Master.Next;
        inc(Row);
      end; // finec ciclo Datasource
    finally
      Master.EnableControls;
    end; // fine ciclo tryDatasource
    // Fomattazione della sezione

    Xls.AutofitRowsOnWorkbook(true, true, 1.1);
    for i := 1 to columns do
      Xls.AutofitCol(i, false, 1.1);
    {
      case SelectMultiString('Selezionare Output', ['Elaboratore Interno', 'foglio di Calcolo (Excel)']) of
      0:
      begin
      aViewer := UXlsViewer.TFXlsViewer.Create(self);
      try
      aStream := TMemoryStream.Create;
      try
      self.Xls.SaveToStream(aStream);
      aStream.Position := 0;
      aViewer.FlexCelImport.LoadFromStream(aStream);
      finally
      aStream.Free
      end;
      aViewer.Data.LoadSheet;
      aViewer.WindowState := wsMaximized;
      aViewer.ShowModal;
      finally
      aViewer.Free;
      end;
      end;

      1:
      begin
      //
      S := Functions.GetTempPath + '\' + FormatDateTime('yyyymmddhhnnss', Now()) + '.xls';
      Xls.Save(S);
      ShellExecute(0, 'open', PChar(S), nil, nil, SW_SHOWNORMAL);

      end;
      end;
    }
      S := TJanuaCoreOS.GetTempPath + FormatDateTime('yyyymmddhhnnss', Now()) + '.xls';
    //else
    //  S := FormatDateTime('yyyymmddhhnnss', Now()) + '.xls';

    Xls.Save(S);
    ShellExecute(0, 'open', PChar(S), nil, nil, SW_SHOWNORMAL);
  finally
    Xls.Free;
  end;

end;

constructor TJanuaVCLFlexcelExport.Create(AOwner: TComponent);
begin
  inherited;
  FXls := TXlsFile.Create(false);
end;

destructor TJanuaVCLFlexcelExport.Destroy;
begin
  FXls.Free;
  inherited;
end;

procedure TJanuaVCLFlexcelExport.FlExcelExport;
begin
  if Assigned(self.FDataSource) and Assigned(self.FDataSource.DataSet) then
    self.FlExcelExport(self.FDataSource.DataSet);
end;

procedure TJanuaVCLFlexcelExport.SetDataSource(const Value: TDataSource);
begin
  FDataSource := Value;
end;

procedure TJanuaVCLFlexcelExport.SetJanuaDialog(const Value: TJanuaDialog);
begin
  FJanuaDialog := Value;
end;

procedure TJanuaVCLFlexcelExport.SetXls(const Value: TExcelFile);
begin
  FXls := Value;
end;

end.
