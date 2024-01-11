unit Janua.Shipping.Vessels.Firedac.Virtual;

interface

uses
  System.SysUtils, System.Classes,
  // Januaproject
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl, JOrm.Shipping.Intf,
  Janua.Orm.Intf, udmPgStorage, Janua.Search.ViewModels.Engines.Intf,
  // FireDAC.Comp.UI
  Firedac.Stan.Intf, Firedac.Stan.Option, Firedac.Stan.Param,
  Firedac.Stan.Error, Firedac.DatS, Firedac.Phys.Intf, Firedac.DApt.Intf, Firedac.Stan.StorageBin, Data.DB,
  Firedac.Comp.DataSet, Firedac.Comp.Client;

type
  TdmFDMockShippingVessels = class(TDataModule)
    fdmLkpVessels: TFDMemTable;
    fdmLkpVesselscode: TWideStringField;
    fdmLkpVesselsname: TWideStringField;
    fdmLkpVesselsvessel_id: TIntegerField;
    fdmLkpVesselssearch_index: TWideStringField;
    fdmLkpVesselsdisplay_index: TWideStringField;
    fdmLkpVesselsjguid: TGuidField;
    fdmLkpVesselspos: TIntegerField;
    fdmDepartments: TFDMemTable;
    fdmDepartmentsid: TSmallintField;
    fdmDepartmentsdescription: TWideStringField;
    fdmDepartmentsguid: TGuidField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TJanuaFdMockSearchVesselsModel = class(TJanuaSearchVesselsModel, ISearchModelVessels, ISearchModel)
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmFDMockShippingVessels: TdmFDMockShippingVessels;

implementation

uses Janua.Orm.Firedac, Janua.Core.Types, Janua.Orm.Types, Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaFdMockSearchVesselsModel }

function TJanuaFdMockSearchVesselsModel.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmFDMockShippingVessels;
begin
  FDM := TdmFDMockShippingVessels.Create(nil);
  try
    Result := TJanuaVtMemDataset.CreateWithEntities([TJanuaEntity.ItemsDefinitions]);
    TFDMemTable(Result.DataSet).CopyDataSet(FDM.fdmLkpVessels, [coStructure, coRestart, coAppend]);
  finally
    FDM.Free;
  end;
end;

end.
