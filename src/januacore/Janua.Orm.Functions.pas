unit Janua.Orm.Functions;

interface

uses Data.DB, Janua.Core.Types, Janua.Orm.Intf, Janua.Core.DB;

type
  TJanuaOrmStringWriter = record
    class function ElaborateDatasetRecord(const aDataset: IJanuaDBDataset; const aTemplate: string;
      aLogProc: TMessageLogProc = nil): string; static;
    class function ElaborateDataset(const aDataset: IJanuaDBDataset; const aTemplate: string;
      aLogProc: TMessageLogProc = nil): TStringArray; static;
    class function ElaborateRecord(const aRecord: IJanuaRecord; const aTemplate: string;
      aLogProc: TMessageLogProc = nil): string; static;
    class function ElaborateRecordset(const aDataset: IJanuaRecordSet; const aTemplate: string;
      aLogProc: TMessageLogProc = nil): TStringArray; static;
  end;

  /// <summary>
  /// This function Calculate the mean of a numeric Field on a Standard
  /// RercordSet
  /// </summary>
  /// <param name="aRecordSet">
  /// The Recordset
  /// </param>
  /// <param name="aFieldName">
  /// Field Name
  /// </param>
function Mean(aRecordSet: IJanuaRecordSet; aFieldName: string): Extended; inline;
function StdDev(aRecordSet: IJanuaRecordSet; aFieldName: string): Extended; inline;

implementation

uses System.SysUtils, System.StrUtils;

function Mean(aRecordSet: IJanuaRecordSet; aFieldName: string): Extended;
var
  tmp: Extended;
  i: integer;
  aField: IJanuaField;
begin
  tmp := 0;
  Assert(aFieldName <> '', 'Mean.FieldByName FieldName Not set');
  aField := aRecordSet.CurrentRecord.FieldByName(aFieldName);
  for i := 0 to Pred(aRecordSet.RecordCount) do
  begin
    aRecordSet.ItemIndex := i;
    tmp := tmp + aField.AsFloat;
  end;
  Result := tmp / aRecordSet.RecordCount;
end;

function StdDev(aRecordSet: IJanuaRecordSet; aFieldName: string): Extended;
var
  tmp, vMean: Extended;
  i: integer;
  aField: IJanuaField;
begin
  tmp := 0;
  vMean := Mean(aRecordSet, aFieldName);
  aField := aRecordSet.CurrentRecord.FieldByName(aFieldName);
  for i := 0 to Pred(aRecordSet.RecordCount) do
  begin
    aRecordSet.ItemIndex := i;
    tmp := sqr(vMean - aField.AsFloat);
  end;
  Result := sqrt(tmp / aRecordSet.RecordCount);
end;

{ TJanuaOrmStringWriter }

class function TJanuaOrmStringWriter.ElaborateDataset(const aDataset: IJanuaDBDataset;
  const aTemplate: string; aLogProc: TMessageLogProc): TStringArray;
begin
  if Assigned(aLogProc) then
  begin
    var
    lLog := '{ "' + aDataset.GetSelf.ClassName + '" : "' + aDataset.Name + '" }';
    aLogProc('ElaborateDataset', lLog, nil);
  end;
  Result := TDatasetStringWriter.ElaborateDataset(aDataset.Dataset, aTemplate, aLogProc)
end;

class function TJanuaOrmStringWriter.ElaborateDatasetRecord(const aDataset: IJanuaDBDataset;
  const aTemplate: string; aLogProc: TMessageLogProc): string;
begin
  if Assigned(aLogProc) then
  begin
    var
    lLog := '{ "' + aDataset.GetSelf.ClassName + '" : "' + aDataset.Name + '" }';
    aLogProc('ElaborateDataset', lLog, nil);
  end;
  Result := TDatasetStringWriter.ElaborateRecord(aDataset.Dataset, aTemplate, aLogProc)
end;

class function TJanuaOrmStringWriter.ElaborateRecord(const aRecord: IJanuaRecord; const aTemplate: string;
  aLogProc: TMessageLogProc): string;
var
  lField: IJanuaField;
begin
  Result := aTemplate;
  var
  lLog := '';
  var
  lProc := Assigned(aLogProc);
  if lProc then
    aLogProc('ElaborateRecord ', '{ "' + aRecord.GetSelf.ClassName + '" : "' + aRecord.Name + '" }', nil);

  if lProc then
    lLog := '{ "fields" : [';

  for lField in aRecord.Fields do
  begin
    if lProc then
      lLog := lLog + sl + '{ "' + lField.Key.ToLower + '" : ';

    var
    lFieldTag := '$$' + lField.Key.ToLower + '$$';
    var
    lPos := Pos(lFieldTag, Result) > 0;
    if lPos then
    begin
      var
      lFieldValue := lField.AsString;
      Result := StringReplace(Result, lFieldTag, lFieldValue, [rfIgnoreCase, rfReplaceAll]);
      if lProc then
        lLog := lLog + '"found", "value" : "' + lFieldValue + '" }';
    end
    else if lProc then
      lLog := lLog + '"not found" }';

  end;

  if lProc then
    aLogProc('OrmStringWriter.ElaborateRecord', lLog + sl + ']}', nil);
end;

class function TJanuaOrmStringWriter.ElaborateRecordset(const aDataset: IJanuaRecordSet;
  const aTemplate: string; aLogProc: TMessageLogProc): TStringArray;
begin
  ElaborateRecord(aDataset.CurrentRecord, aTemplate, aLogProc)
end;

end.
