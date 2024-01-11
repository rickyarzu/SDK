unit Janua.Firedac.Commons;

interface

uses
  System.Classes,
  // FireDAC.
  Firedac.Stan.Intf, Firedac.Stan.Option, Firedac.Stan.Param, Firedac.Comp.Client, Firedac.Stan.Error,
  Firedac.DatS, Firedac.Phys.Intf, Firedac.DApt.Intf, Firedac.Stan.StorageBin, Firedac.Comp.DataSet,
  // Firedac
  // Januaproject
  Janua.Core.DB.Types, Janua.Orm.Intf, Janua.Orm.Types, Janua.Core.Types;

type
  TFireDacExporter = class
  public
    class function ExportToStream(const aDataset: TFDDataSet): TStream;
    class function ExportToBase64Stream(const aDataset: TFDDataSet): TStringStream;
    class function ExportToBase64(const aDataset: TFDDataSet): string;
    class function ExportToJson(const aDataset: TFDDataSet): string;
    class function ExportToCSV(const aDataset: TFDDataSet): string;
    class function ExportToXML(const aDataset: TFDDataSet): string;
    class function ExportToRecord(const aDataset: TFDDataSet): IJanuaRecord;
    class function ExportToRecordSet(const aDataset: TFDDataSet): IJanuaRecordSet;
    class procedure SaveToRecord(const aDataset: TFDDataSet; aRecord: IJanuaRecord);
    class function ExportDataset(const aDataset: TFDDataSet; aFormat: TRestFormat): string; overload;
    class function ExportDataset(const aDataset: TFDDataSet; aFormat: string): string; overload;

    class procedure ImportFromStream(const aDataset: TFDDataSet; aStream: TStream);
    class procedure ImportFromBase64(const aDataset: TFDDataSet; aBase64: string);
    class procedure ImportFromJson(const aDataset: TFDDataSet; aBase64: string);
    class procedure ImportFromXML(const aDataset: TFDDataSet; aBase64: string);
    class procedure ImportFromBase64Stream(const aDataset: TFDDataSet; aBase64: TStream);
    class procedure ImportFromRecord(const aDataset: TFDDataSet; aRecord: IJanuaRecord); overload;
    class procedure ImportFromRecord(const aDataset: TFDDataSet; aRecord: string); overload;
    class procedure ImportFromRecordSet(const aDataset: TFDDataSet; aRecord: IJanuaRecord); overload;
    class procedure ImportFromRecordSet(const aDataset: TFDDataSet; aRecord: string); overload;
    class procedure LoadFromRecord(const aDataset: TFDDataSet; aRecord: IJanuaRecord);
    class procedure ImportDataset(const aDataset: TFDDataSet; aBase64: string; aFormat: TRestFormat);
      overload;
    class procedure ImportDataset(const aDataset: TFDDataSet; aBase64: string; aFormat: string); overload;

  end;

implementation

uses System.NetEncoding, Janua.Orm.Impl;

class function TFireDacExporter.ExportDataset(const aDataset: TFDDataSet; aFormat: TRestFormat): string;
begin
  case aFormat of
    rfDefault:
      begin
        Result := ExportToBase64(aDataset);
      end;
    rfXml:
      begin
        Result := ExportToXML(aDataset);
      end;
    rfJson:
      begin
        Result := ExportToJson(aDataset);
      end;
    rfBinary:
      begin
        Result := ExportToBase64(aDataset);
      end;
    rfCSV:
      begin
        Result := ExportToCSV(aDataset);
      end;
    rfJsonMeta:
      begin
        Result := '';
      end;
    rfJanuaRecord:
      begin
        Result := ExportToRecord(aDataset).asJson;
      end;
    rfJanuaMeta:
      begin
        Result := '';
      end;
    rfJanuaRecordset:
      begin
        Result := ExportToRecordSet(aDataset).ToJson;
      end;
  end;
end;

class function TFireDacExporter.ExportDataset(const aDataset: TFDDataSet; aFormat: string): string;
begin
  Result := TFireDacExporter.ExportDataset(aDataset, TJanuaRestDBContext.GetFormat(aFormat));
end;

class function TFireDacExporter.ExportToBase64(const aDataset: TFDDataSet): string;
var
  lStream: TStringStream;
begin
  lStream := ExportToBase64Stream(aDataset);
  try
    Result := lStream.DataString;
  finally
    lStream.Free;
  end;
end;

class function TFireDacExporter.ExportToBase64Stream(const aDataset: TFDDataSet): TStringStream;
var
  lStream: TStream;
begin
  lStream := ExportToStream(aDataset);
  try
    lStream.Position := 0;
    Result := TStringStream.Create('');
    TNetEncoding.base64.Encode(lStream, Result);
  finally
    lStream.Free;
  end;
end;

class function TFireDacExporter.ExportToCSV(const aDataset: TFDDataSet): string;
begin

end;

class function TFireDacExporter.ExportToJson(const aDataset: TFDDataSet): string;
var
  lOutStream: TStringStream;
begin
  lOutStream := TStringStream.Create('');
  try
    if not aDataset.Active then
      aDataset.Open;

    aDataset.SaveToStream(lOutStream, TFDStorageFormat.sfJSON);
    Result := lOutStream.DataString;
  finally
    lOutStream.Free;
  end;
end;

class function TFireDacExporter.ExportToRecord(const aDataset: TFDDataSet): IJanuaRecord;
begin
  if not aDataset.Active then
    aDataset.Open;
  Result := TJanuaOrmFactory.CreateRecord(aDataset);
end;

class function TFireDacExporter.ExportToRecordSet(const aDataset: TFDDataSet): IJanuaRecordSet;
begin
  Result := TJanuaOrmFactory.CreateRecordset(aDataset);
end;

class function TFireDacExporter.ExportToStream(const aDataset: TFDDataSet): TStream;
begin
  Result := TMemoryStream.Create;
  if not aDataset.Active then
    aDataset.Open;
  aDataset.SaveToStream(Result, sfBinary);
end;

class function TFireDacExporter.ExportToXML(const aDataset: TFDDataSet): string;
var
  lOutStream: TStringStream;
begin
  lOutStream := TStringStream.Create('');
  try
    if not aDataset.Active then
      aDataset.Open;
    aDataset.SaveToStream(lOutStream, TFDStorageFormat.sfXML);
    Result := lOutStream.DataString;
  finally
    lOutStream.Free;
  end;
end;

class procedure TFireDacExporter.ImportDataset(const aDataset: TFDDataSet; aBase64: string;
  aFormat: TRestFormat);
begin
  case aFormat of
    rfDefault:
      begin
        ImportFromBase64(aDataset, aBase64);
      end;
    rfXml:
      begin
        ImportFromXML(aDataset, aBase64);
      end;
    rfJson:
      begin
        ImportFromJson(aDataset, aBase64);
      end;
    rfBinary:
      begin
        ImportFromBase64(aDataset, aBase64);
      end;
    rfCSV:
      begin
        // ImportFromCSV(aDataset, aBase64);
      end;
    rfJsonMeta:
      begin

      end;
    rfJanuaRecord:
      begin
        ImportFromRecord(aDataset, aBase64);
      end;
    rfJanuaMeta:
      begin

      end;
    rfJanuaRecordset:
      begin
        ImportFromRecordSet(aDataset, aBase64);
      end;
  end;
end;

class procedure TFireDacExporter.ImportDataset(const aDataset: TFDDataSet; aBase64, aFormat: string);
begin
  TFireDacExporter.ImportDataset(aDataset, aBase64, TJanuaRestDBContext.GetFormat(aFormat));
end;

class procedure TFireDacExporter.ImportFromBase64(const aDataset: TFDDataSet; aBase64: string);
var
  lOutStream: TStringStream;
begin
  lOutStream := TStringStream.Create(aBase64);
  try
    ImportFromBase64Stream(aDataset, lOutStream);
  finally
    lOutStream.Free;
  end;
end;

class procedure TFireDacExporter.ImportFromBase64Stream(const aDataset: TFDDataSet; aBase64: TStream);
var
  lOutStream: TMemoryStream;
begin
  lOutStream := TMemoryStream.Create;
  try
    aBase64.Position := 0;
    TNetEncoding.base64.Decode(aBase64, lOutStream);
    lOutStream.Position := 0;
    ImportFromStream(aDataset, lOutStream);
    if not aDataset.Active then
      aDataset.Open;
  finally
    lOutStream.Free;
  end;
end;

class procedure TFireDacExporter.ImportFromJson(const aDataset: TFDDataSet; aBase64: string);
var
  lOutStream: TStringStream;
begin
  lOutStream := TStringStream.Create(aBase64);
  try
    if aDataset.Active then
      aDataset.Close;
    aDataset.LoadFromStream(lOutStream, TFDStorageFormat.sfJSON);
    if not aDataset.Active then
      aDataset.Open;
  finally
    lOutStream.Free;
  end;
end;

class procedure TFireDacExporter.ImportFromRecord(const aDataset: TFDDataSet; aRecord: string);
begin

end;

class procedure TFireDacExporter.ImportFromRecord(const aDataset: TFDDataSet; aRecord: IJanuaRecord);
begin

end;

class procedure TFireDacExporter.ImportFromStream(const aDataset: TFDDataSet; aStream: TStream);
begin
  aDataset.LoadFromStream(aStream, sfBinary);
  if not aDataset.Active then
    aDataset.Open;
end;

class procedure TFireDacExporter.ImportFromXML(const aDataset: TFDDataSet; aBase64: string);
var
  lOutStream: TStringStream;
begin
  lOutStream := TStringStream.Create(aBase64);
  try
    if aDataset.Active then
      aDataset.Close;
    aDataset.LoadFromStream(lOutStream, TFDStorageFormat.sfXML);
    if not aDataset.Active then
      aDataset.Open;
  finally
    lOutStream.Free;
  end;
end;

class procedure TFireDacExporter.LoadFromRecord(const aDataset: TFDDataSet; aRecord: IJanuaRecord);
begin
  { qui potrebbe tornare utile usare un jguid ... per filtrare prima il Dataset e verificare se insert/update }
  if not aDataset.Active then
    aDataset.Open;
  aRecord.DirectSaveToDataset(aDataset);
end;

class procedure TFireDacExporter.SaveToRecord(const aDataset: TFDDataSet; aRecord: IJanuaRecord);
begin
  if not aDataset.Active then
    aDataset.Open;
  aRecord.DirectLoadFromDataset(aDataset);
end;

class procedure TFireDacExporter.ImportFromRecordSet(const aDataset: TFDDataSet; aRecord: IJanuaRecord);
begin

end;

class procedure TFireDacExporter.ImportFromRecordSet(const aDataset: TFDDataSet; aRecord: string);
begin

end;

end.
