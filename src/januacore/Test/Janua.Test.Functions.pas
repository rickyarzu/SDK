unit Janua.Test.Functions;

interface

uses Janua.Orm.Intf;

procedure RandomizeFieldValue(const aField: IJanuaField);
procedure RandomizeRecord(const aRecord: IJanuaRecord);
procedure RandomizeRecordSet(const aRecordSet: IJanuaRecordSet; const aNumber: Integer);

implementation

uses Janua.Orm.Impl, Janua.Core.Types, System.SysUtils;

procedure RandomizeRecord(const aRecord: IJanuaRecord);
var
  lField: IJanuaField;
begin
  for lField in aRecord.Fields do
    RandomizeFieldValue(lField);
end;

procedure RandomizeRecordSet(const aRecordSet: IJanuaRecordSet; const aNumber: Integer);
begin

end;

procedure RandomizeFieldValue(const aField: IJanuaField);
begin
  case aField.FieldType of
    jptUnknown:
      ;
    jptCurrency, jptExtended, jptFloat:
      { Result := TJanuaOrmFactory.CreateCurrencyCField(aName, aName, False) }
      aField.AsFloat := Random(100) + Random(100) / 100;
    jptDate:
      if aField.IsNull then
        aField.AsDateTime := Date();
    jptDateTime:
      aField.AsDateTime := Now();
    jptSmallint, jptInteger, jptLargeInt:
      aField.AsInteger := Random(16000);
    jptFilename:
      if aField.AsString = '' then
        aField.AsString := 'C:\Januaproject';
    jptString, jptText:
      if aField.AsString = '' then
        aField.AsString := 'RAndomText';
    jptHtmlText, jptRichText:
      if aField.AsString = '' then
        aField.AsString := '<p><b>RAndomText</b><p>';
    jptBoolean:
      if aField.IsNull then
        aField.AsBoolean := True;
    jptBytes:
      ;
    jptUrl:
      ;
    TJanuaFieldType.jpTBlob:
      ;
  end;
end;

end.
