unit Janua.Items.Firedac.Virtual;

interface

uses
  System.SysUtils, System.Classes,Data.DB,
  // Januaproject Commons
  Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl,
  Janua.Orm.Intf, Janua.Orm.UniDac, Janua.Orm.Types,
  // Januaproject Items
  Janua.Items.Model.Impl, Janua.Items.ViewModel.Intf,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option;



type
  TdmFiredacVirtualItems = class(TDataModule)
    fdmItems: TFDMemTable;
    fdmItemsdb_schema_id: TIntegerField;
    fdmItemsid: TLargeintField;
    fdmItemscode: TWideStringField;
    fdmItemsmodel: TWideStringField;
    fdmItemsdescription: TWideStringField;
    fdmItemsmain_supplier_id: TLargeintField;
    fdmItemsconventions: TBooleanField;
    fdmItemssupplier_code: TWideStringField;
    fdmItemsinsert_date: TSQLTimeStampField;
    fdmItemsupdate_date: TSQLTimeStampField;
    fdmItemsins_id: TLargeintField;
    fdmItemsupd_id: TLargeintField;
    fdmItemsuser_insert: TWideStringField;
    fdmItemsuser_update: TWideStringField;
    fdmItemslocal: TBooleanField;
    fdmItemswildcard: TBooleanField;
    fdmItemsref_type_id: TSmallintField;
    fdmItemspkg_units: TSmallintField;
    fdmItemsstatus: TSmallintField;
    fdmItemsreserved: TSmallintField;
    fdmItemsextra_flag: TBooleanField;
    fdmItemsbranch_id: TIntegerField;
    fdmItemsmin_heigth: TSmallintField;
    fdmItemsmax_heigth: TSmallintField;
    fdmItemsrepeats: TSmallintField;
    fdmItemsperiodic: TSmallintField;
    fdmItemsguarantee: TSmallintField;
    fdmItemspromo_points: TSmallintField;
    fdmItemspromo_point_forfait: TSmallintField;
    fdmItemspromo_group: TSmallintField;
    fdmItemspromo: TSmallintField;
    fdmItemsbrand_id: TSmallintField;
    fdmItemstype_id: TSmallintField;
    fdmItemstype_ref_id: TSmallintField;
    fdmItemsmunit_id: TSmallintField;
    fdmItemsfamily_id: TSmallintField;
    fdmItemsiconfile: TWideStringField;
    fdmItemsbannerfile: TWideStringField;
    fdmItemsimagefile: TWideStringField;
    fdmItemstitle: TWideStringField;
    fdmItemssubtitle: TWideStringField;
    fdmItemslefimage: TWideStringField;
    fdmItemsrightimage: TWideStringField;
    fdmItemsitem_rtftext: TWideMemoField;
    fdmItemsitem_text: TWideStringField;
    fdmItemsjguid: TGuidField;
    fdmItemsmain_price: TCurrencyField;
    fdmItemssearch_index: TWideStringField;
    fdmItemsgroup_id: TSmallintField;
    fdmItemsSearch: TFDMemTable;
    fdmItemsSearchid: TLargeintField;
    fdmItemsSearchjguid: TGuidField;
    fdmItemsSearchcode: TWideStringField;
    fdmItemsSearchmodel: TWideStringField;
    fdmItemsSearchdescription: TWideStringField;
    fdmItemsSearchmain_price: TCurrencyField;
    fdmItemsSearchdisplay_index: TWideMemoField;
    fdmItemsSearchsearch_index: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TJanuaVtItemsDataModule = class(TJanuaCustomItemsDataModule, IJanuaItemsDataModule)
  private
    { Private declarations }
    FDM: TdmFiredacVirtualItems;
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
  TJanuaVtSearchItems = class(TJanuaSearchItemsModel, ISearchModelItem, ISearchModel)
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmFiredacVirtualItems: TdmFiredacVirtualItems;

implementation

uses Janua.Orm.Firedac, Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaVtSearchItems }

function TJanuaVtSearchItems.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmFiredacVirtualItems;
begin
  FDM := TdmFiredacVirtualItems.Create(nil);
  try
    Result := TJanuaVtMemDataset.CreateWithEntities([TJanuaEntity.ItemsDefinitions]);
    TFDMemTable(Result.DataSet).CopyDataSet(FDM.fdmItemsSearch, [coStructure, coRestart, coAppend]);
  finally
    FDM.Free;
  end;
end;

{ TJanuaVtItemsDataModule }

constructor TJanuaVtItemsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaVtItemsDataModule.Destroy;
begin
  if Assigned(FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaVtItemsDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      try
        FDM := TdmFiredacVirtualItems.Create(nil);
        SetMainDataModule(FDM);
        jdsItems := TJanuaVtDataset.Create(FDM.fdmItems, [TJanuaEntity.CmsMenuItems]);
        //jdsGroups := TJanuaPgDataset.Create(FDM.qryGroups, [TJanuaEntity.AnagraphGroups]);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

procedure TJanuaVtItemsDataModule.RefreshDetails;
begin
  inherited;

end;

end.
