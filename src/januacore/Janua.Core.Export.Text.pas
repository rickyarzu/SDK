unit Janua.Core.Export.Text;

interface

uses System.Classes, Janua.Core.Export.Intf, Janua.Core.Types, Data.DB;

type
  TJanuaDatasetExportPlainText = class(TInterfacedObject, IJanuaDatasetExportEngine)
  private
    FDelimiter: Char;
    FFieldList: TRecFieldDefList;
    FDataset: TDataset;
  protected
    function GetDelimiter: Char;
    function GetFieldList: TRecFieldDefList;
    function GetDataset: TDataset;
    procedure SetDelimiter(const Value: Char);
    procedure SetFieldList(const Value: TRecFieldDefList);
    procedure SetDataset(const Value: TDataset);
  public
    function AsString: string;
    procedure SaveToStream(aStream: TStream);
  end;

implementation

uses Spring;

{ TJanuaDatasetExportPlainText }

function TJanuaDatasetExportPlainText.AsString: string;
begin

end;

function TJanuaDatasetExportPlainText.GetDataset: TDataset;
begin
  Result := self.FDataset
end;

function TJanuaDatasetExportPlainText.GetDelimiter: Char;
begin
  Result := self.FDelimiter
end;

function TJanuaDatasetExportPlainText.GetFieldList: TRecFieldDefList;
begin
  Result := self.FFieldList
end;

procedure TJanuaDatasetExportPlainText.SaveToStream(aStream: TStream);
var
  LStrings: TStrings;
begin
  Guard.CheckNotNull(aStream, self.ClassName + '.SaveToStream aStream is null');
  LStrings := TStringList.Create;
  try
    LStrings.SaveToStream(aStream);
  finally
    LStrings.Free;
  end;
end;

procedure TJanuaDatasetExportPlainText.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TJanuaDatasetExportPlainText.SetDelimiter(const Value: Char);
begin
  FDelimiter := Value;
end;

procedure TJanuaDatasetExportPlainText.SetFieldList(const Value: TRecFieldDefList);
begin
  FFieldList := Value;
end;

end.
