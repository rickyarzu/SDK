unit udmJanuaPgItemsStorage;

interface

uses
  System.SysUtils, System.Classes, udmPgStorage, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess,
  Uni, MemDS,
  // Januaproject Commons
  Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl,
  Janua.Orm.Intf, Janua.Orm.UniDac, Janua.Orm.Types,
  // Januaproject Items
  Janua.Items.Model.Impl, Janua.Items.ViewModel.Intf,
  // Firedac
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Janua.Unidac.Connection;

type
  TdmJanuaPgItemsStorage = class(TdmPgStorage)
    qryItems: TUniQuery;
    qryItemsdb_schema_id: TIntegerField;
    qryItemsid: TLargeintField;
    qryItemscode: TWideStringField;
    qryItemsmodel: TWideStringField;
    qryItemsdescription: TWideStringField;
    qryItemsmain_supplier_id: TLargeintField;
    qryItemsconventions: TBooleanField;
    qryItemssupplier_code: TWideStringField;
    qryItemsinsert_date: TDateTimeField;
    qryItemsupdate_date: TDateTimeField;
    qryItemsins_id: TLargeintField;
    qryItemsupd_id: TLargeintField;
    qryItemsuser_insert: TWideStringField;
    qryItemsuser_update: TWideStringField;
    qryItemslocal: TBooleanField;
    qryItemswildcard: TBooleanField;
    qryItemsref_type_id: TSmallintField;
    qryItemspkg_units: TSmallintField;
    qryItemsstatus: TSmallintField;
    qryItemsreserved: TSmallintField;
    qryItemsextra_flag: TBooleanField;
    qryItemsbranch_id: TIntegerField;
    qryItemsmin_heigth: TSmallintField;
    qryItemsmax_heigth: TSmallintField;
    qryItemsrepeats: TSmallintField;
    qryItemsperiodic: TSmallintField;
    qryItemsguarantee: TSmallintField;
    qryItemspromo_points: TSmallintField;
    qryItemspromo_point_forfait: TSmallintField;
    qryItemspromo_group: TSmallintField;
    qryItemspromo: TSmallintField;
    qryItemsbrand_id: TSmallintField;
    qryItemstype_id: TSmallintField;
    qryItemstype_ref_id: TSmallintField;
    qryItemsmunit_id: TSmallintField;
    qryItemsfamily_id: TSmallintField;
    qryItemsiconfile: TWideStringField;
    qryItemsbannerfile: TWideStringField;
    qryItemsimagefile: TWideStringField;
    qryItemstitle: TWideStringField;
    qryItemssubtitle: TWideStringField;
    qryItemslefimage: TWideStringField;
    qryItemsrightimage: TWideStringField;
    qryItemsitem_rtftext: TWideMemoField;
    qryItemsitem_text: TWideStringField;
    qryItemsjguid: TGuidField;
    qryItemsmain_price: TCurrencyField;
    qryItemsSearch: TUniQuery;
    qryItemsSearchid: TLargeintField;
    qryItemsSearchjguid: TGuidField;
    qryItemsSearchcode: TWideStringField;
    qryItemsSearchmodel: TWideStringField;
    qryItemsSearchdescription: TWideStringField;
    qryItemsSearchmain_price: TCurrencyField;
    qryItemsSearchdisplay_index: TWideMemoField;
    qryItemsSearchsearch_index: TWideStringField;
    qryGroups: TUniQuery;
    qryTypes: TUniQuery;
    qryGroupsdb_schema_id: TIntegerField;
    qryGroupsgroup_id: TSmallintField;
    qryGroupsgroup_des: TWideStringField;
    qryGroupscontact_group: TSmallintField;
    qryGroupspos: TSmallintField;
    qryGroupsaccounting: TBooleanField;
    qryGroupscod_account: TWideStringField;
    qryGroupslocal: TBooleanField;
    qryGroupsgroup_cod: TWideStringField;
    qryGroupsledger_cod: TWideStringField;
    qryGroupssubledger_cod: TWideStringField;
    qryGroupsdeleted: TBooleanField;
    qryGroupsicon_id: TSmallintField;
    qryGroupsjguid: TGuidField;
    qryTypesdb_schema_id: TIntegerField;
    qryTypestype_id: TSmallintField;
    qryTypestype_des: TWideStringField;
    qryTypesstock: TBooleanField;
    qryTypesgroup_type_id: TSmallintField;
    qryTypesjguid: TGuidField;
    qryTypesdeleted: TBooleanField;
    qryTypesicon_id: TSmallintField;
    qryTypesGroups: TUniQuery;
    qryTypesGroupsdb_schema_id: TIntegerField;
    qryTypesGroupsgroup_type_id: TSmallintField;
    qryTypesGroupsgroup_type_name: TWideStringField;
    qryTypesGroupsgroup_type_code: TWideStringField;
    qryTypesGroupsisstock: TBooleanField;
    qryTypesGroupsgroup_level: TSmallintField;
    qryTypesGroupsinsert_date: TDateTimeField;
    qryTypesGroupsupdate_date: TDateTimeField;
    qryTypesGroupsuser_insert: TWideStringField;
    qryTypesGroupsuser_update: TWideStringField;
    qryTypesGroupsicon_id: TSmallintField;
    lkpPackages: TUniQuery;
    lkpPackagesid: TSmallintField;
    lkpPackagescode: TWideStringField;
    lkpPackagesdescription: TWideStringField;
    lkpPackagesjguid: TGuidField;
    lkpHazmatD: TUniQuery;
    lkpHazmatDcode: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaPgItemsDataModule = class(TJanuaCustomItemsDataModule, IJanuaItemsDataModule)
  private
    { Private declarations }
    FDM: TdmJanuaPgItemsStorage;
  protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

type
  TJanuaPgSearchItems = class(TJanuaSearchItemsModel, ISearchModelItem, ISearchModel)
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmJanuaPgItemsStorage: TdmJanuaPgItemsStorage;

implementation

uses Janua.Uni.Virtual, Janua.Application.Framework;
{$R *.dfm}

{ TJanuaPgSearchItems }
function TJanuaPgSearchItems.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmJanuaPgItemsStorage;
begin
  FDM := TdmJanuaPgItemsStorage.Create(nil);
  try
    // SetMainDataModule(FDM);
    FDM.qryItemsSearch.ParamByName('p_group_id').AsInteger := GetGroupID;
    FDM.qryItemsSearch.Open;
    FDM.qryItemsSearch.Last;
    Result := TJanuaUniMemTable.CreateWithEntities(FDM.qryItemsSearch, [TJanuaEntity.AnagraphAnagraphs]);
  finally
    FDM.Free;
  end;
end;

{ TJanuaPgItemsDataModule }
constructor TJanuaPgItemsDataModule.Create;
begin
  inherited;
end;

destructor TJanuaPgItemsDataModule.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaPgItemsDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      try
        FDM := TdmJanuaPgItemsStorage.Create(nil);
        SetMainDataModule(FDM);
        jdsItems := TJanuaPgDataset.Create(FDM.qryItems, [TJanuaEntity.AnagraphAnagraphs]);
        jdsGroups := TJanuaPgDataset.Create(FDM.qryGroups, [TJanuaEntity.AnagraphGroups]);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

procedure TJanuaPgItemsDataModule.RefreshDetails;
begin
  inherited;
  { TODO: Implementation of method TJanuaPgItemsDataModule.RefreshDetails () }
end;

{ TdmJanuaPgItemsStorage }
procedure TdmJanuaPgItemsStorage.RefreshDetails;
begin
  inherited;
end;

end.
