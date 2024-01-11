unit JanuaDatasetManager;

interface

uses
  SysUtils, Classes,  udlgDatasetFields, DBClient;

type
  TJanuaDataSetManager = class(TComponent)
  private
    Fdataset: TClientDataset;
    procedure Setdataset(const Value: TClientDataset);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function OderBy: Boolean;
  published
    { Published declarations }
    property dataset: TClientDataset read Fdataset write Setdataset;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject Controls', [TJanuaDataSetManager]);
end;


function TJanuaDataSetManager.OderBy: Boolean;
var
   i: integer;
   d: TdlgDatasetFields;
begin
  Result := True;
  try
    d := TdlgDatasetFields.Create(nil);
    if  d.ClientDataset1.RecordCount > 0 then
    begin
          d.ClientDataset1.First;
          While not d.ClientDataset1.Eof do  d.ClientDataset1.Delete;
    end;

    for i := 1 to Fdataset.FieldCount - 1 do
    begin
         d.ClientDataset1.Insert;
         d.ClientDataSet1FIELDNAME.Value := FDataset.Fields[i].FieldName;
         d.ClientDataSet1FIELDDESC.Value := FDataset.Fields[i].DisplayLabel;
    end;

    d.ShowModal;

    FDataset.IndexFieldNames := d.ClientDataSet1FIELDNAME.Value;
  finally
    d.Free;
    d := nil; 
  end;
end;

{ TJanuaDataSetManager }


procedure TJanuaDataSetManager.Setdataset(const Value: TClientDataset);
begin
  Fdataset := Value;
end;

end.
