unit Janua.Core.Excel;

interface

{$I JANUACORE.INC}

uses
  // System Libraries ..............................................
  System.IOUtils, System.SysUtils, Generics.Collections, System.Math,
  System.Classes,
  System.UIConsts, System.UITypes, System.Variants,

  // Http Libraries
  System.Net.HttpClient, System.Net.URLClient,

  // DB Libraries

  // TMS Components
  // Flexcel

  // Cloud Libraries
  Data.DB,

  // Json Xml Libraries

  System.JSON, System.JSONConsts,

  // Janua Core Libraries
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.System, Janua.Core.Functions,
  Janua.Core.CustomControls;

type
  TJanuaExcelCell = record
    Format, Formula, Text: string;
    Color: TColor;
    Row, Col: integer;
    Address: string;
    Description: string;
    PropertyType: TJanuaProperty;
    Value: Variant;
  public
    function AsString: string;
    function AsWideString: string;
    function AsInteger: integer;
    function AsFloat: Double;
    function AsBoolean: boolean;
    function AsDateTime: TDateTime;
  end;

type
  TJanuaCustomExcel = Class(TJanuaCoreComponent)
  private
    FRowCount: integer;
    FDataset: TDataset;
    FFileName: TFileName;
    FHeaderRow: integer;
    FFirstDataRow: integer;
    FHasHeader: boolean;
    FSelectedTabSheet: integer;
    FKeyColumn: integer;
    // This maps a Column name to an Exact column value
    FColumns: TDictionary<string, integer>;
    // This Maps a Column Value to a specific Field in the DataTable for uploading
    FMapping: TDictionary<integer, string>;
    // This Maps the Fields list for Selection
    FFieldList: TStrings;
    FImportErrorLog: TStrings;
    FColumnList: TStrings;
    FStartOpen: TDateTime;
    FEndOpen: TDateTime;
    FTabList: TStrings;
    FFirstRow: TStrings;
    FTabIndex: integer;
    procedure SetColumnList(const Value: TStrings);
    procedure SetDataset(const Value: TDataset);
    procedure SetFileName(const Value: TFileName);
    procedure SetFirstDataRow(const Value: integer);
    procedure SetHasHeader(const Value: boolean);
    procedure SetHeaderRow(const Value: integer);
    procedure SetRowCount(const Value: integer);
    procedure SetSelectedTabSheet(const Value: integer);
    procedure SetKeyColumn(const Value: integer);
    procedure SetFieldList(const Value: TStrings);
    procedure SetImportErrorLog(const Value: TStrings);
    procedure SetEndFill(const Value: TDateTime);
    procedure SetEndOpen(const Value: TDateTime);
    procedure SetStartOpen(const Value: TDateTime);
    procedure SetFirstRow(const Value: TStrings);
    procedure SetTabIndex(const Value: integer);
    procedure SetTabList(const Value: TStrings);
  strict protected
    FEndFill: TDateTime;
    FSelectedCell: TJanuaExcelCell;
    FIsLoaded: boolean;
    function InternalOpenFile: boolean; virtual; abstract;
    function InternalSelectFile: boolean; virtual; abstract;
    function InternalReadValue(aRow, aColumn: integer): Variant; virtual; abstract;
    function InternalTabList: string; virtual; abstract;
    procedure SetTab(tabIndex: integer); virtual; abstract;
    function getTabIndex: integer; virtual;
    procedure SetSelectedCell(const Value: TJanuaExcelCell); virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function OpenFile(aFileName: TFileName): boolean; overload;
    function OpenFile: boolean; overload;
    procedure Associate(aFieldName: string; aColumn: integer);
    function Import: boolean;
    function MaxColumn: integer;
    procedure DoPaste; Virtual; Abstract;
    procedure DoCopy; Virtual; Abstract;
    procedure AnalizeFile(const Row, Col: integer); Virtual; Abstract;
    property SelectedCell: TJanuaExcelCell read FSelectedCell write SetSelectedCell;
  published
    property filename: TFileName read FFileName write SetFileName;
    property ColumnList: TStrings read FColumnList write SetColumnList;
    property FieldList: TStrings read FFieldList write SetFieldList;
    property Dataset: TDataset read FDataset write SetDataset;
    property HasHeader: boolean read FHasHeader write SetHasHeader;
    property HeaderRow: integer read FHeaderRow write SetHeaderRow default 0;
    property FirstDataRow: integer read FFirstDataRow write SetFirstDataRow default 0;
    // Number of Columns Set by Import Functions .....................................
    property RowCount: integer read FRowCount write SetRowCount default 0;
    // in a Multi Sheet Excel File is the selected sheet for importing.
    property SelectedTabSheet: integer read FSelectedTabSheet write SetSelectedTabSheet;
    // Key Column cannot be Null, When null the search stops or, at least, do not take the row
    property KeyColumn: integer read FKeyColumn write SetKeyColumn;
    // is set when the Xls file is loaded and the Xls Translator is ON.
    // Import Error Logs is the list of columns not imported ...
    property ImportErrorLog: TStrings read FImportErrorLog write SetImportErrorLog;
    property StartOpen: TDateTime read FStartOpen write SetStartOpen;
    property EndOpen: TDateTime read FEndOpen write SetEndOpen;
    property EndFill: TDateTime read FEndFill write SetEndFill;
    property TabList: TStrings read FTabList write SetTabList;
    property FirstRow: TStrings read FFirstRow write SetFirstRow;
    // Index of TabSheetSelected
    property tabIndex: integer read getTabIndex write SetTabIndex;
    property IsLoaded: boolean read FIsLoaded;
  End;

implementation

{ TJanuaCustomExcelImport }

procedure TJanuaCustomExcel.Associate(aFieldName: string; aColumn: integer);
begin

end;

constructor TJanuaCustomExcel.Create(AOwner: TComponent);
begin
  inherited;
  // This maps a Column name to an Exact column value
  FColumns := TDictionary<string, integer>.Create;
  // This Maps a Column Value to a specific Field in the DataTable for uploading
  FMapping := TDictionary<integer, string>.Create;
  // This Maps the Fields list for Selection
  FFieldList := TStringList.Create;
  FImportErrorLog := TStringList.Create;
  FColumnList := TStringList.Create;
  FTabList := TStringList.Create;
  FFirstRow := TStringList.Create;
end;

destructor TJanuaCustomExcel.Destroy;
begin
  // This maps a Column name to an Exact column value
  FColumns.Free;
  // This Maps a Column Value to a specific Field in the DataTable for uploading
  FMapping.Free;
  // This Maps the Fields list for Selection
  FFieldList.Free;
  FImportErrorLog.Free;
  FColumnList.Free;
  FTabList.Free;
  FFirstRow.Free;
  inherited;
end;

function TJanuaCustomExcel.getTabIndex: integer;
begin
  Result := FTabIndex;
  // this can be overriden with the selected Index of the Xls File
end;

function TJanuaCustomExcel.Import: boolean;
var
  i, j: integer;
  KeyValue: Variant;
  KeyField: string;
begin
  Result := False;
  if Assigned(FDataset) and FIsLoaded and FDataset.Active and FMapping.Count.ToBoolean then
  begin
    for j := self.FFirstDataRow to FRowCount do
    begin
      KeyValue := self.InternalReadValue(j, FKeyColumn);
      if not KeyValue <> '' then
      begin
        if FMapping.TryGetValue(FKeyColumn, KeyField) and not self.FDataset.Locate(KeyField, KeyValue, []) then
        begin
          self.FDataset.Append;
          try
            for i in self.FMapping.Keys do
            begin
              if FMapping.TryGetValue(i, KeyField) then
                FDataset.FieldByName(KeyField).Value := self.InternalReadValue(j, i);
            end;
            self.FDataset.Post;
          Except
            on e: exception do
            begin
              self.WriteError('Errore Caricamento Riga: ' + KeyValue, e)
            end;
          end;
        end;
      end;
    end;
  end;
end;

function TJanuaCustomExcel.MaxColumn: integer;
var
  i: integer;
begin
  // Returns -1 if no Column is Selected;
  Result := -1;
  for i in self.FMapping.Keys do
    Result := max(Result, i);
end;

function TJanuaCustomExcel.OpenFile(aFileName: TFileName): boolean;
begin
  self.FFileName := aFileName;
  Result := self.OpenFile;
  self.FIsLoaded := Result;
end;

function TJanuaCustomExcel.OpenFile: boolean;
begin

  if not self.Active then
    self.Activate;

  Result := self.Active;

  if Result then
  begin
    FStartOpen := Now;
    Result := False;
    if self.FFileName <> '' then
      Result := self.InternalOpenFile;
    self.FIsLoaded := Result;
    if self.FIsLoaded then
    begin
      self.TabList.Text := self.InternalTabList;
    end;
    EndOpen := Now;
  end;
end;

procedure TJanuaCustomExcel.SetColumnList(const Value: TStrings);
begin
  FColumnList := Value;
end;

procedure TJanuaCustomExcel.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TJanuaCustomExcel.SetEndFill(const Value: TDateTime);
begin
  FEndFill := Value;
end;

procedure TJanuaCustomExcel.SetEndOpen(const Value: TDateTime);
begin
  FEndOpen := Value;
end;

procedure TJanuaCustomExcel.SetFieldList(const Value: TStrings);
begin
  FFieldList := Value;
end;

procedure TJanuaCustomExcel.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
end;

procedure TJanuaCustomExcel.SetFirstDataRow(const Value: integer);
begin
  FFirstDataRow := Value;
end;

procedure TJanuaCustomExcel.SetFirstRow(const Value: TStrings);
begin
  FFirstRow := Value;
end;

procedure TJanuaCustomExcel.SetHasHeader(const Value: boolean);
begin
  FHasHeader := Value;
end;

procedure TJanuaCustomExcel.SetHeaderRow(const Value: integer);
begin
  FHeaderRow := Value;
  self.FirstDataRow := self.FHeaderRow + 1;
end;

procedure TJanuaCustomExcel.SetImportErrorLog(const Value: TStrings);
begin
  FImportErrorLog := Value;
end;

procedure TJanuaCustomExcel.SetKeyColumn(const Value: integer);
begin
  FKeyColumn := Value;
end;

procedure TJanuaCustomExcel.SetRowCount(const Value: integer);
begin
  FRowCount := Value;
end;

procedure TJanuaCustomExcel.SetSelectedCell(const Value: TJanuaExcelCell);
begin
  FSelectedCell := Value;
end;

procedure TJanuaCustomExcel.SetSelectedTabSheet(const Value: integer);
begin
  FSelectedTabSheet := Value;
end;

procedure TJanuaCustomExcel.SetStartOpen(const Value: TDateTime);
begin
  FStartOpen := Value;
end;

procedure TJanuaCustomExcel.SetTabIndex(const Value: integer);
begin
  FTabIndex := Value;
end;

procedure TJanuaCustomExcel.SetTabList(const Value: TStrings);
begin
  FTabList := Value;
end;

{ TJanuaSelectedCell }

function TJanuaExcelCell.AsBoolean: boolean;
begin
  Result := Value
end;

function TJanuaExcelCell.AsDateTime: TDateTime;
begin
  Result := VarToDateTime(Value)
end;

function TJanuaExcelCell.AsFloat: Double;
begin
  try
    Result := self.Value
  except
    Result := 0

  end;
end;

function TJanuaExcelCell.AsInteger: integer;
begin
  Result := self.Value;
end;

function TJanuaExcelCell.AsString: string;
begin
  Result := VarToStr(Value);
end;

function TJanuaExcelCell.AsWideString: string;
begin
{$IFNDEF NEXTGEN}
  Result := VarToWideStr(Value);
{$ELSE}
  Result := VarToStr(Value);
{$ENDIF}
end;

end.
