unit Janua.Oracle.ControlFileGenerator;

interface

uses
  System.SysUtils, System.Classes, Data.DB;

type
  TControlFileConfig = record
    DestinationOperation: string;
    DestinationViewOrTable: string;
    UseInfile: boolean;
    UseBadFile: boolean;
    UseDiscardFile: boolean;
    Infile: string;
    BadFile: string;
    DiscardFile: string;
    UseTrailingNullCols: boolean;
    TerminatedBy: string;
    UseEnclosedBy: boolean;
    EnclosedBy: string;
    NlsNumericChar: string;
    DateTimeFormat: string;
    TimeStampFormat: string;
    UseGenerateNumericFormatting: boolean;
  end;

type
  TdmOracleControlFile = class(TDataModule)
  private
    { Private declarations }
    FControlFileConf: TControlFileConfig;
    procedure SetControlFileConf(const Value: TControlFileConfig);
  public
    { Public declarations }
    function generateHeader(const aControlFileConf: TControlFileConfig): string;
    function GenerateControlFileFromMetadata(const aFieldsList: TDataset): string;
    function GenerateCSVSelectfromMetadata(const aFieldsList: TDataset): string;
    function GenerateTRfromMetadata(const aFieldsList: TDataset): string;
    function GenerateMergefromMetadata(const aFieldsList: TDataset): string;
  public
    property ControlFileConf: TControlFileConfig read FControlFileConf write SetControlFileConf;
  end;

var
  dmOracleControlFile: TdmOracleControlFile;

implementation

uses Janua.Core.Functions, System.StrUtils, Janua.Oracle.SchemaDatamodule;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmOracleControlFile }

function TdmOracleControlFile.GenerateControlFileFromMetadata(const aFieldsList: TDataset): string;
var
  aList: TStringList;
  lFieldText: string;
  rCtl: TControlFileConfig;
  sNum: string;
  iScale, iPrec: integer;
  dType: string;
begin
  aList := TStringList.Create;
  try
    rCtl := FControlFileConf;
    { aList.Text := generateHeader(rCtl); }
    aList.Add('(');

    aFieldsList.First;
    while not aFieldsList.Eof do
    begin
      dType := aFieldsList.FieldByName('data_type').AsString;
      lFieldText := aFieldsList.FieldByName('column_name').AsString;
      // DateTimeFormat
      if dType = 'DATE' then
        lFieldText := lFieldText + ' DATE ' + QuotedStr(rCtl.DateTimeFormat)
        // TimeStampFormat
      else if dType = 'TIMESTAMP' then
        lFieldText := lFieldText + ' TIMESTAMP ' + QuotedStr(rCtl.TimeStampFormat);

      if FControlFileConf.UseGenerateNumericFormatting and (dType = 'NUMBER') then
      begin
        // num "to_number(:num, '99999999999D9999', 'nls_numeric_characters=''.,''')",
        iScale := aFieldsList.FieldByName('data_scale').AsInteger;
        iPrec := aFieldsList.FieldByName('data_precision').AsInteger;

        // if iScale + iPrec = 0 then
        // iPrec := aFieldsList.FieldByName('DATA_LENGTH').AsInteger;

        if iScale + iPrec = 0 then
        begin
          iScale := 0;
          iPrec := 18;
        end;

        lFieldText := lFieldText + ' "TO_NUMBER(:' + aFieldsList.FieldByName('column_name').AsString + ', ';
        sNum := LPad('', iPrec, '9') + IfThen(iScale > 0, 'D' + LPad('', iScale, '9'), '');

        lFieldText := lFieldText + QuotedStr(sNum) + ', ' + QuotedStr('nls_numeric_characters=') +
          QuotedStr(rCtl.NlsNumericChar);
        lFieldText := lFieldText + QuotedStr('') + ')"';

      end;

      aFieldsList.Next;
      if not aFieldsList.Eof then
        lFieldText := lFieldText + ',';
      aList.Add('   ' + lFieldText);
    end;
    aList.Add(')');
    Result := aList.Text;
  finally
    aList.Free;
  end;
end;

function TdmOracleControlFile.GenerateCSVSelectfromMetadata(const aFieldsList: TDataset): string;
var
  aList: TStringList;
  lFieldText, lField: string;
  rCtl: TControlFileConfig;
  sNum: string;
  iScale, iPrec: integer;
begin
  aList := TStringList.Create;
  try
    rCtl := FControlFileConf;
    aList.Add('SELECT');
    aFieldsList.First;
    while not aFieldsList.Eof do
    begin
      lField := aFieldsList.FieldByName('column_name').AsString;

      if aFieldsList.FieldByName('data_type').AsString = 'DATE' then
        lFieldText := 'TO_CHAR(' + lField + ', ' + QuotedStr(rCtl.DateTimeFormat) + ')'
      else if (aFieldsList.FieldByName('data_type').AsString = 'NUMBER') then
      begin
        iScale := aFieldsList.FieldByName('data_scale').AsInteger;
        iPrec := aFieldsList.FieldByName('data_precision').AsInteger;

        if iScale + iPrec = 0 then
          iPrec := aFieldsList.FieldByName('DATA_LENGTH').AsInteger;

        sNum := LPad('', iPrec, '9') + IfThen(iScale > 0, 'D' + LPad('', iScale, '9'), '');
        lFieldText := 'TO_CHAR(' + lField + ', ' + QuotedStr(sNum) + ')';
      end
      else
        lFieldText := lField;

      aFieldsList.Next;
      if not aFieldsList.Eof then
        lFieldText := lFieldText + ' || ' + QuotedStr(';') + ' || ';
      aList.Add(lFieldText);
    end;
    aList.Add('FROM');
    aList.Add( { dmOracleSchema.qrySchemasSCHEMA_NAME.AsString + } '"&GTI".' +
      dmOracleSchema.qrySchemaTablesTABLE_NAME.AsString);

    Result := aList.Text;
  finally
    aList.Free;
  end;

end;

function TdmOracleControlFile.generateHeader(const aControlFileConf: TControlFileConfig): string;
var
  aList: TStringList;
begin
  aList := TStringList.Create;
  try
    aList.Add('LOAD DATA');
    // Files
    if aControlFileConf.UseInfile then
      aList.Add('INFILE ' + QuotedStr(aControlFileConf.Infile));
    if aControlFileConf.UseBadFile then
      aList.Add('BADFILE ' + QuotedStr(aControlFileConf.BadFile));
    if aControlFileConf.UseDiscardFile then
      aList.Add('DISCARDFILE ' + QuotedStr(aControlFileConf.DiscardFile));
    // Destination Operation
    aList.Add(aControlFileConf.DestinationOperation.ToUpper);
    // Destination Table
    aList.Add('INTO TABLE ' + aControlFileConf.DestinationViewOrTable.ToUpper);
    // fields terminated by ',' optionally enclosed by '"'
    aList.Add('FIELDS TERMINATED BY ' + QuotedStr(aControlFileConf.TerminatedBy));
    if aControlFileConf.UseEnclosedBy then
      aList.Add('OPTIONALLY ENCLOSED BY ' + QuotedStr(aControlFileConf.EnclosedBy));
    // TRAILING NULLCOLS
    if aControlFileConf.UseTrailingNullCols then
      aList.Add('TRAILING NULLCOLS');

    Result := aList.Text;
  finally
    aList.Free;
  end;
end;

function TdmOracleControlFile.GenerateMergefromMetadata(const aFieldsList: TDataset): string;
var
  aList: TStringList;
  lFieldText, lField: string;
  rCtl: TControlFileConfig;
  sNum: string;
  iScale, iPrec: integer;
begin
  aList := TStringList.Create;
  try
    rCtl := FControlFileConf;
    var
    aTable := dmOracleSchema.qrySchemaTablesTABLE_NAME.AsString;
    // DELETE "&GTI".POL_TRANCHE
    var
    aDestination := StringReplace(aTable, '_DELTA', '', [rfReplaceAll]);

    var
    aDelete := 'DELETE "&GTI".' + aDestination;

    aList.Add(aDelete);

    var
    aWhere := 'WHERE NUM_POLIZZA IN (SELECT NUM_POLIZZA FROM "&GTI".' + aTable + ');';
    aList.Add(aWhere);

    // INSERT INTO "&GTI".POL_TRANCHE
    var
    aInsert := 'INSERT INTO "&GTI".' + aDestination;
    aList.Add(aInsert);
    aList.Add('(');
    aFieldsList.First;
    while not aFieldsList.Eof do
    begin
      lField := aFieldsList.FieldByName('column_name').AsString;
      aFieldsList.Next;
      lFieldText := lField + IfThen(aFieldsList.Eof, '', ',');
      aList.Add(lFieldText);
    end;
    aList.Add(')');
    aList.Add('SELECT * FROM "&GTI".' + aTable + ';');

    Result := aList.Text;
  finally
    aList.Free;
  end;

end;

function TdmOracleControlFile.GenerateTRfromMetadata(const aFieldsList: TDataset): string;
begin

end;

procedure TdmOracleControlFile.SetControlFileConf(const Value: TControlFileConfig);
begin
  FControlFileConf := Value;
end;

end.
