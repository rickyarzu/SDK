unit Janua.UniDac.Commons;

interface

uses
  System.Classes,
  // uniDAC
  DBAccess, Uni, MemDS, VirtualTable, VirtualDataSet,
  // FireDAC.
  Firedac.Stan.Intf, Firedac.Stan.Option, Firedac.Stan.Param, Firedac.Comp.Client, Firedac.Stan.Error,
  Firedac.DatS, Firedac.Phys.Intf, Firedac.DApt.Intf, Firedac.Stan.StorageBin, Firedac.Comp.DataSet,
  // Dataset Serialize (Just put this at the end because it's an helper)
  DataSet.Serialize,
  // Januaproject
  Janua.Firedac.Commons, Janua.Core.DB.Types, Janua.Orm.Intf, Janua.Orm.Types, Janua.Core.Types;

type
  TUniDacExporter = class
  public
    class function ExportToStream(const aDataset: TMemDataset): TStream;
    class function ExportToBase64Stream(const aDataset: TMemDataset): TStringStream;
    class function ExportToBase64(const aDataset: TMemDataset): string;
    class function ExportToJson(const aDataset: TMemDataset): string;
    class function ExportToCSV(const aDataset: TMemDataset): string;
    class function ExportToXML(const aDataset: TMemDataset): string;
    class function ExportToRecord(const aDataset: TMemDataset): IJanuaRecord;
    class function ExportToRecordSet(const aDataset: TMemDataset): IJanuaRecordSet;
    class procedure SaveToRecord(const aDataset: TMemDataset; aRecord: IJanuaRecord);
    class function ExportDataset(const aDataset: TMemDataset; aFormat: TRestFormat): string; overload;
    class function ExportDataset(const aDataset: TMemDataset; aFormat: string): string; overload;

    class function ExportToFDBase64(const aDataset: TMemDataset): string;
    class function ExportToFDJson(const aDataset: TMemDataset): string;

    class procedure ImportFromStream(const aDataset: TMemDataset; aStream: TStream);
    class procedure ImportFromBase64(const aDataset: TMemDataset; aBase64: string);
    class procedure ImportFromJson(const aDataset: TMemDataset; aJson: string);
    class procedure ImportFromXML(const aDataset: TMemDataset; aXml: string);
    class procedure ImportFromCSV(const aDataset: TMemDataset; aCSV: string);
    class procedure ImportFromBase64Stream(const aDataset: TMemDataset; aBase64: TStream);
    class procedure ImportFromRecord(const aDataset: TMemDataset; aRecord: IJanuaRecord); overload;
    class procedure ImportFromRecord(const aDataset: TMemDataset; aRecord: string); overload;
    class procedure ImportFromRecordSet(const aDataset: TMemDataset; aRecord: IJanuaRecord); overload;
    class procedure ImportFromRecordSet(const aDataset: TMemDataset; aRecord: string); overload;
    class procedure LoadFromRecord(const aDataset: TMemDataset; aRecord: IJanuaRecord);
    class procedure ImportDataset(const aDataset: TMemDataset; aPayLoad: string;
      aFormat: TRestFormat); overload;
    class procedure ImportDataset(const aDataset: TMemDataset; aPayLoad: string; aFormat: string); overload;

  end;

implementation

uses System.NetEncoding, System.SysUtils,
  // FDac
  Firedac.Comp.BatchMove, Firedac.Comp.BatchMove.Text, Firedac.Comp.BatchMove.DataSet,
  // Janua
  Janua.Orm.Impl, Janua.Core.Functions;

{ TUniDacExporter }

class function TUniDacExporter.ExportDataset(const aDataset: TMemDataset; aFormat: string): string;
begin
  Result := TUniDacExporter.ExportDataset(aDataset, TJanuaRestDBContext.GetFormat(aFormat));
end;

class function TUniDacExporter.ExportDataset(const aDataset: TMemDataset; aFormat: TRestFormat): string;
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
    rfFDXml:
      begin
        Result := '';
      end;
    rfUniXMl:
      begin
        Result := '';
      end;
    rfFDJson:
      begin
        Result := '';
      end;
    rfFDBin:
      begin
        Result := '';
      end;
    rfUniBinary:
      begin
        Result := '';
      end;
  end;
end;

class function TUniDacExporter.ExportToBase64(const aDataset: TMemDataset): string;
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

class function TUniDacExporter.ExportToBase64Stream(const aDataset: TMemDataset): TStringStream;
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

class function TUniDacExporter.ExportToCSV(const aDataset: TMemDataset): string;
var
  BatchMove: TFDBatchMove;
  Writer: TFDBatchMoveTextWriter;
  DataSetReader: TFDBatchMoveDataSetReader;
begin
  BatchMove := TFDBatchMove.Create(nil);
  Writer := TFDBatchMoveTextWriter.Create(nil);
  DataSetReader := TFDBatchMoveDataSetReader.Create(nil);

  try
    // Configure the writer for CSV format with semicolon (;) as the separator
    Writer.DataDef.Delimiter := ';'; // Use semicolon as the separator
    Writer.DataDef.WithFieldNames := True; // Include field names as header

    // Configure the dataset reader
    DataSetReader.DataSet := aDataset;

    // Configure the batch move component
    BatchMove.Reader := DataSetReader;
    BatchMove.Writer := Writer;

    // Execute the batch move to export to CSV
    BatchMove.Execute;

    // Get the CSV data as a string
    Result := Writer.Stream.ToString;
  finally
    BatchMove.Free;
    Writer.Free;
    DataSetReader.Free;
  end;

end;

class function TUniDacExporter.ExportToFDBase64(const aDataset: TMemDataset): string;
var
  lMemTable: TFDMemTable;
begin
  lMemTable := TFDMemTable.Create(nil);
  try
    lMemTable.CopyDataSet(aDataset, [coStructure, coRestart, coAppend]);
    Result := TFireDacExporter.ExportToBase64(lMemTable);
  finally
    lMemTable.Free;
  end;
end;

class function TUniDacExporter.ExportToFDJson(const aDataset: TMemDataset): string;
var
  lMemTable: TFDMemTable;
begin
  lMemTable := TFDMemTable.Create(nil);
  try
    lMemTable.CopyDataSet(aDataset, [coStructure, coRestart, coAppend]);
    Result := TFireDacExporter.ExportToJson(lMemTable);
  finally
    lMemTable.Free;
  end;
end;

class function TUniDacExporter.ExportToJson(const aDataset: TMemDataset): string;
begin

end;

class function TUniDacExporter.ExportToRecord(const aDataset: TMemDataset): IJanuaRecord;
begin
  if not aDataset.Active then
    aDataset.Open;
  Result := TJanuaOrmFactory.CreateRecord(aDataset);
end;

class function TUniDacExporter.ExportToRecordSet(const aDataset: TMemDataset): IJanuaRecordSet;
begin
  Result := TJanuaOrmFactory.CreateRecordset(aDataset);
end;

class function TUniDacExporter.ExportToStream(const aDataset: TMemDataset): TStream;
var
  lVT: TVirtualTable;
begin
  Result := TMemoryStream.Create;
  if aDataset is TVirtualTable then
  begin
    TVirtualTable(aDataset).SaveToStream(Result);
  end
  else
  begin
    lVT := TVirtualTable.Create(nil);
    try
      lVT.Assign(aDataset);
      lVT.SaveToStream(Result);
    finally
      lVT.Free;
    end;
  end;
end;

class function TUniDacExporter.ExportToXML(const aDataset: TMemDataset): string;
var
  aStream: TStringStream;
begin
  aStream := TStringStream.Create;
  try
    aDataset.SaveToXML(aStream);
    Result := aStream.DataString;
  finally
    aStream.Free;
  end;
end;

class procedure TUniDacExporter.ImportDataset(const aDataset: TMemDataset; aPayLoad, aFormat: string);
begin
  TUniDacExporter.ImportDataset(aDataset, aPayLoad, TJanuaRestDBContext.GetFormat(aFormat));
end;

class procedure TUniDacExporter.ImportDataset(const aDataset: TMemDataset; aPayLoad: string;
  aFormat: TRestFormat);
begin
  case aFormat of
    rfDefault:
      begin
        ImportFromBase64(aDataset, aPayLoad);
      end;
    rfXml:
      begin
        ImportFromXML(aDataset, aPayLoad);
      end;
    rfJson:
      begin
        ImportFromJson(aDataset, aPayLoad);
      end;
    rfBinary, rfUniBinary:
      begin
        ImportFromBase64(aDataset, aPayLoad);
      end;
    rfCSV:
      begin
        // ImportFromCSV(aDataset, aPayload);
      end;
    rfJsonMeta:
      begin

      end;
    rfJanuaRecord:
      begin
        ImportFromRecord(aDataset, aPayLoad);
      end;
    rfJanuaMeta:
      begin

      end;
    rfJanuaRecordset:
      begin
        ImportFromRecordSet(aDataset, aPayLoad);
      end;
  end;

end;

class procedure TUniDacExporter.ImportFromBase64(const aDataset: TMemDataset; aBase64: string);
var
  aStream: TStringStream;
begin
  aStream := TStringStream.Create(aBase64);
  try
    ImportFromBase64Stream(aDataset, aStream);
    if not aDataset.Active then
      aDataset.Open;
  finally
    aStream.Free;
  end;
end;

class procedure TUniDacExporter.ImportFromBase64Stream(const aDataset: TMemDataset; aBase64: TStream);
var
  sStream: TStringStream;
begin
  if aDataset is TVirtualTable then
  begin
    sStream := TStringStream.Create;
    try
      TNetEncoding.base64.Decode(aBase64, sStream);
      TVirtualTable(aDataset).LoadFromStream(sStream);
    finally
      sStream.Free;
    end;
  end;
end;

class procedure TUniDacExporter.ImportFromCSV(const aDataset: TMemDataset; aCSV: string);
var
  BatchMove: TFDBatchMove;
  Reader: TFDBatchMoveTextReader;
  Writer: TFDBatchMoveDataSetWriter;
begin

  // Create a batch move component
  BatchMove := TFDBatchMove.Create(nil);
  try
    // Configure the text reader for CSV format with semicolon (;) as the separator
    Reader := TFDBatchMoveTextReader.Create(nil);
    Reader.Stream := TStringStream.Create(aCSV);
    Reader.DataDef.Delimiter := ';'; // Use semicolon as the separator
    Reader.DataDef.WithFieldNames := True; // CSV includes field names as header

    // Configure the dataset writer
    Writer := TFDBatchMoveDataSetWriter.Create(nil);
    Writer.DataSet := aDataset;

    // Configure the batch move component
    BatchMove.Reader := Reader;
    BatchMove.Writer := Writer;

    // Execute the batch move to populate the dataset
    BatchMove.Execute;
  finally
    BatchMove.Free;
  end;
end;

class procedure TUniDacExporter.ImportFromJson(const aDataset: TMemDataset; aJson: string);
begin
  aDataset.LoadFromJSON(aJson)
end;

class procedure TUniDacExporter.ImportFromRecord(const aDataset: TMemDataset; aRecord: IJanuaRecord);
begin

end;

class procedure TUniDacExporter.ImportFromRecord(const aDataset: TMemDataset; aRecord: string);
begin

end;

class procedure TUniDacExporter.ImportFromRecordSet(const aDataset: TMemDataset; aRecord: string);
begin

end;

class procedure TUniDacExporter.ImportFromRecordSet(const aDataset: TMemDataset; aRecord: IJanuaRecord);
begin

end;

class procedure TUniDacExporter.ImportFromStream(const aDataset: TMemDataset; aStream: TStream);
begin
  if aDataset is TVirtualTable then
  begin
    if aDataset.FieldCount > 0 then
      (aDataset as TVirtualTable).LoadFromStream(aStream, False)
    else
      (aDataset as TVirtualTable).LoadFromStream(aStream);
    if not aDataset.Active then
      aDataset.Open;
  end;
end;

class procedure TUniDacExporter.ImportFromXML(const aDataset: TMemDataset; aXml: string);
var
  aStream: TStringStream;
begin
  aStream := TStringStream.Create(aXml);
  try
    ImportFromStream(aDataset, aStream);
    if not aDataset.Active then
      aDataset.Open;
  finally
    aStream.Free;
  end;
end;

class procedure TUniDacExporter.LoadFromRecord(const aDataset: TMemDataset; aRecord: IJanuaRecord);
begin

end;

class procedure TUniDacExporter.SaveToRecord(const aDataset: TMemDataset; aRecord: IJanuaRecord);
begin

end;

end.
