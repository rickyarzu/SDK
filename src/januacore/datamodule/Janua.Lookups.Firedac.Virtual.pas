unit Janua.Lookups.Firedac.Virtual;

interface

uses
  System.SysUtils, System.Classes, Firedac.Stan.Intf, Firedac.Stan.Option, Firedac.Stan.Param,
  Firedac.Stan.Error, Firedac.DatS, Firedac.Phys.Intf, Firedac.DApt.Intf, Firedac.Stan.StorageBin, Data.DB,
  Firedac.Comp.DataSet, Firedac.Comp.Client,
  // Januaproject
  Janua.Lookups.Intf, Janua.Lookups.Impl, Janua.Core.Types, Janua.Orm.Types, Janua.Orm.Intf;

type
  TdmFDACMemLookups = class(TDataModule)
    fdmVessels: TFDMemTable;
    fdmVesselscode: TWideStringField;
    fdmVesselsname: TWideStringField;
    fdmVesselsvessel_id: TIntegerField;
    fdmVesselssearch_index: TWideStringField;
    fdmVesselsdisplay_index: TWideMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TJanuaFDACMemLookups = class(TJanuaCustomLookups, IJanuaLookupFactory)
  public
    function TryGetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant; out aDataset: IJanuaDBDataset)
      : Boolean; override;
    constructor Create; override;
  end;

var
  dmFDACMemLookups: TdmFDACMemLookups;

implementation

uses System.StrUtils, Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaFDACMemLookups }

constructor TJanuaFDACMemLookups.Create;
begin
  inherited;

end;

function TJanuaFDACMemLookups.TryGetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant;
  out aDataset: IJanuaDBDataset): Boolean;
var
  lFDM: TdmFDACMemLookups;
  lQueryDef: TJanuaQueryDef;
  { lParam: TUniParam; }
begin
  Result := inherited; // (aGUID, aGroupID, aDataset);
  if not Result and TryGetQueryDef(aGUID, lQueryDef) then
  begin
    lFDM := TdmFDACMemLookups.Create(nil);
    try
      { lFDM.qryLookup.SQL.Clear;
        lFDM.qryLookup.SQL.Text := lQueryDef.SQL;
        lParam := lFDM.qryLookup.FindParam('p_group_id');
        if Assigned(lParam) then
        lParam.Value := aGroupID;
        lFDM.qryLookup.Prepare;
        if lFDM.qryLookup.Prepared then
        lFDM.qryLookup.Open; }
      {aDataset := TJanuaMemTable.CreateWithEntities(lFDM.fdmVessels, [lQueryDef.EntityType]);}
      Result := Assigned(aDataset);
      if Result then
        TJanuaApplicationFactory.RegisterLookupDataset(aGUID, aGroupID, aDataset);
    finally
      lFDM.Free;
      lFDM := nil;
    end;
  end;
end;

end.
