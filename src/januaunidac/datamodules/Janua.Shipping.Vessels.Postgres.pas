unit Janua.Shipping.Vessels.Postgres;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Januaproject
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl, JOrm.Shipping.Intf,
  Janua.Orm.Intf, udmPgStorage, Janua.Search.ViewModels.Engines.Intf, Janua.Unidac.Connection;

type
  /// <summary>
  /// This storage is dedicated to Vessels Fleet management for a Shipping Company or just a Vessels Register
  /// </summary>
  TdmShippingVessels = class(TdmPgStorage)
    qryLkpVessels: TUniQuery;
    qryLkpDepartments: TUniQuery;
    qryLkpDepartmentsid: TSmallintField;
    qryLkpDepartmentsdescription: TWideStringField;
    qryLkpDepartmentsguid: TGuidField;
    qryVessels: TUniQuery;
    qryVesselsvessel_id: TIntegerField;
    qryVesselsname: TWideStringField;
    qryVesselscode: TWideStringField;
    qryVesselsnet_tonnage: TFloatField;
    qryVesselsgross_tonnage: TFloatField;
    qryVesselsdeadweight: TFloatField;
    qryVesselsinsert_date: TDateField;
    qryVesselsupdate_date: TDateField;
    qryVesselsins_id: TLargeintField;
    qryVesselsupd_id: TLargeintField;
    qryVesselsuser_insert_id: TIntegerField;
    qryVesselsuser_update_id: TIntegerField;
    qryVesselslocal: TBooleanField;
    qryVesselspassenger_limit: TSmallintField;
    qryVesselsdb_schema_id: TIntegerField;
    qryVesselsjguid: TGuidField;
    qryVesselsdeleted: TBooleanField;
    qryVesselsnotes: TWideStringField;
    qryVesselscustom_char_1: TWideStringField;
    qryVesselscustom_char_2: TWideStringField;
    qryVesselscustom_char_3: TWideStringField;
    qryVesselscustom_int_1: TIntegerField;
    qryVesselscustom_int_2: TIntegerField;
    qryVesselscustom_int_3: TIntegerField;
    qryVesselsanagraph_id: TIntegerField;
    qryVesselsshipowner_name: TWideStringField;
    qryVesselssearch_index: TWideStringField;
    qryLkpVesselscode: TWideStringField;
    qryLkpVesselsname: TWideStringField;
    qryLkpVesselsvessel_id: TIntegerField;
    qryLkpVesselssearch_index: TWideStringField;
    qryLkpVesselsjguid: TGuidField;
    qryLkpVesselspos: TIntegerField;
    qryLkpVesselsdisplay_index: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

type
  TJanuaPgSearchVesselsModel = class(TJanuaSearchVesselsModel, ISearchModelVessels, ISearchModel)
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmShippingVessels: TdmShippingVessels;

implementation

uses Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types, Janua.Application.Framework, Janua.Uni.Virtual;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaPgSearchVesselsModel }

function TJanuaPgSearchVesselsModel.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmShippingVessels;
begin
  FDM := TdmShippingVessels.Create(nil);
  try
    FDM.qryLkpVessels.Open;
    FDM.qryLkpVessels.Last;
    Result := TJanuaUniMemTable.CreateWithEntities(FDM.qryLkpVessels, [TJanuaEntity.LogLocations]);
  finally
    FDM.Free;
  end;
end;

{ TdmShippingVessels }

procedure TdmShippingVessels.RefreshDetails;
begin
  inherited;

end;

end.
