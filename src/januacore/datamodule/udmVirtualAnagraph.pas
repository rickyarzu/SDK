unit udmVirtualAnagraph;

interface

uses
  System.SysUtils, System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Janua.Core.DataModule, Janua.Core.Classes, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Orm.Intf, Janua.Orm.Types,
  // Class Januaprject
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl, Janua.Anagraph.Model.Impl,
  Janua.Search.ViewModels.Engines.Intf, Janua.Anagraph.ViewModel.Intf;

type

  TdmVirtualAnagraph = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    vtGroups: TFDMemTable;
    vtGroupsdb_schema_id: TIntegerField;
    vtGroupsan_group_id: TSmallintField;
    vtGroupsgroup_des: TWideStringField;
    vtGroupscontact_group: TSmallintField;
    vtGroupssub_group: TSmallintField;
    vtGroupssub_group_des: TWideStringField;
    vtGroupssettings: TWideStringField;
    vtGroupsposition: TSmallintField;
    vtGroupsaccounting: TBooleanField;
    vtGroupscod_account: TWideStringField;
    vtGroupslocal: TBooleanField;
    vtGroupsgroup_cod: TWideStringField;
    vtGroupsledger_cod: TWideStringField;
    vtGroupssubledger_cod: TWideStringField;
    vtGroupsgrouping: TWideStringField;
    vtGroupsdescription: TWideStringField;
    vtGroupsangr_jguid: TWideStringField;
    vtGroupsangr_deleted: TBooleanField;
    vtGroupsicon_id: TSmallintField;
    vtGroupsjguid: TGuidField;
    vtAnagraphs: TFDMemTable;
    vtAnagraphsdb_schema_id: TIntegerField;
    vtAnagraphsanagraph_id: TIntegerField;
    vtAnagraphsan_title: TWideStringField;
    vtAnagraphsan_name: TWideStringField;
    vtAnagraphsan_second_name: TWideStringField;
    vtAnagraphsan_last_name: TWideStringField;
    vtAnagraphsan_notes: TWideStringField;
    vtAnagraphsan_address: TWideStringField;
    vtAnagraphsan_town: TWideStringField;
    vtAnagraphsan_postal_code: TWideStringField;
    vtAnagraphsan_iso_country_code: TWideStringField;
    vtAnagraphsan_state_province: TWideStringField;
    vtAnagraphsan_phone: TWideStringField;
    vtAnagraphsan_phone2: TWideStringField;
    vtAnagraphsan_fax: TWideStringField;
    vtAnagraphsan_cellular: TWideStringField;
    vtAnagraphsan_code: TWideStringField;
    vtAnagraphsan_vat_numeric: TWideStringField;
    vtAnagraphsan_email: TWideStringField;
    vtAnagraphsan_web: TWideStringField;
    vtAnagraphsan_contact_id: TIntegerField;
    vtAnagraphsan_bank_account: TWideStringField;
    vtAnagraphsan_payment_des: TWideStringField;
    vtAnagraphsan_discount: TFloatField;
    vtAnagraphsan_distance: TIntegerField;
    vtAnagraphsan_distance_mesunit: TSmallintField;
    vtAnagraphsan_sex: TWideStringField;
    vtAnagraphsan_cod_comune: TWideStringField;
    vtAnagraphsan_cod_provincia: TWideStringField;
    vtAnagraphsan_credit_line: TFloatField;
    vtAnagraphsan_currency_id: TSmallintField;
    vtAnagraphsan_cat_id: TSmallintField;
    vtAnagraphsan_notes2: TWideStringField;
    vtAnagraphsan_notes3: TWideMemoField;
    vtAnagraphsan_edi: TBooleanField;
    vtAnagraphsan_privacy: TBooleanField;
    vtAnagraphsan_office_id: TSmallintField;
    vtAnagraphsan_cod_prov_rif: TWideStringField;
    vtAnagraphsan_data_fido: TDateField;
    vtAnagraphsan_user_insert: TWideStringField;
    vtAnagraphsan_user_update: TWideStringField;
    vtAnagraphsan_area_id: TSmallintField;
    vtAnagraphsan_agent_id: TSmallintField;
    vtAnagraphsan_area_code: TWideStringField;
    vtAnagraphsan_zone_id: TWideStringField;
    vtAnagraphsan_ins_id: TLargeintField;
    vtAnagraphsan_upd_id: TLargeintField;
    vtAnagraphsan_documents: TSmallintField;
    vtAnagraphsan_last_date: TDateField;
    vtAnagraphsan_birthdate: TDateField;
    vtAnagraphsan_office_type_id: TSmallintField;
    vtAnagraphsan_searchname: TWideStringField;
    vtAnagraphsan_extra_ue_flag: TBooleanField;
    vtAnagraphsan_external_code: TWideStringField;
    vtAnagraphsan_vat_id: TSmallintField;
    vtAnagraphsan_personal_fiscal_code: TWideStringField;
    vtAnagraphsan_privacy_print: TSmallintField;
    vtAnagraphsan_sms: TBooleanField;
    vtAnagraphsan_encrypted_fiscal_code: TWideStringField;
    vtAnagraphsan_vat_purcentage: TSmallintField;
    vtAnagraphsan_status: TSmallintField;
    vtAnagraphsan_ownsite: TBooleanField;
    vtAnagraphsan_insurance_id: TLargeintField;
    vtAnagraphsan_anagraphs_anagraph_id: TIntegerField;
    vtAnagraphsan_main_language_code: TWideStringField;
    vtAnagraphsan_main_culture_code: TWideStringField;
    vtAnagraphsan_fiscal_code: TWideStringField;
    vtAnagraphsan_main_group_id: TIntegerField;
    vtAnagraphsan_image_id: TLargeintField;
    vtAnagraphslatitude: TFloatField;
    vtAnagraphslongitude: TFloatField;
    vtAnagraphstest: TFloatField;
    vtAnagraphssearch_index: TWideStringField;
    vtAnagraphsan_birthplace: TWideStringField;
    vtAnagraphsan_birthplace_code: TWideStringField;
    vtAnagraphsanagraph64: TWideStringField;
    vtAnagraphsmain_category_id: TSmallintField;
    vtAnagraphsosm_id: TLargeintField;
    vtAnagraphsan_description: TWideStringField;
    vtAnagraphsan_address_number: TWideStringField;
    vtAnagraphsanag_jguid: TWideStringField;
    vtAnagraphsanag_deleted: TBooleanField;
    vtAnagraphsinsert_date: TSQLTimeStampField;
    vtAnagraphsupdate_date: TSQLTimeStampField;
    vtAnagraphsuser_insert: TIntegerField;
    vtAnagraphsjguid: TGuidField;
    vtAnagraphscustom_field_1: TWideStringField;
    vtAnagraphscustom_field_2: TWideStringField;
    vtAnagraphscustom_field_3: TWideStringField;
    vtAnagraphscustom_float_1: TFloatField;
    vtAnagraphscustom_float_2: TFloatField;
    vtAnagraphscustom_int_1: TIntegerField;
    vtAnagraphscustom_int_2: TIntegerField;
    vtAnagraphssupplier_id: TIntegerField;
    vtAnagraphsvessel_id: TSmallintField;
    vtAnagraphsan_country_id: TIntegerField;
    vtAnagraphsan_iso_country_code2: TWideStringField;
    vtAnagraphsdb_schema_id_1: TIntegerField;
    vtAnagraphsanagraph_id_1: TIntegerField;
    vtAnagraphsan_group_id: TSmallintField;
    vtAnagraphsan_agent_id_1: TIntegerField;
    vtAnagraphsan_agent_group_id: TIntegerField;
    vtAnagraphsan_credit_limit: TFloatField;
    vtAnagraphsan_credit_days: TSmallintField;
    vtAnagraphsan_credit: TBooleanField;
    vtAnagraphsan_credit_notes: TWideStringField;
    vtAnagraphsan_credit_used: TFloatField;
    vtAnagraphsan_overdue_credit: TFloatField;
    vtAnagraphsadnt_jguid: TWideStringField;
    vtAnagraphsadnt_deleted: TBooleanField;
    vtAnagraphsjguid_1: TGuidField;
  public
    procedure  RefreshDetails ; override;
  end;

  TJanuaVirtualAnagraph = class(TJanuaCustomAnagraphDataModule, IJanuaAnagraphDataModule)
  private
    { Private declarations }
    FDM: TdmVirtualAnagraph;
  strict protected
    function InternalActivate: boolean; override;
    procedure GetInternalCreate; override;
  public
    procedure RefreshDetails; override;
    destructor Destroy; override;
    constructor Create; override;
  end;

type
  TJanuaVirtualSearchAnagraph = class(TJanuaSearchAnagraphModel, ISearchModelAnagraph, ISearchModel)
  private
    FDM: TdmVirtualAnagraph;
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmVirtualAnagraph: TdmVirtualAnagraph;

implementation

uses Janua.Application.Framework, Janua.Orm.Impl, Janua.Orm.Firedac, Janua.Core.Types;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaVirtualAnagraph }

constructor TJanuaVirtualAnagraph.Create;
begin
  inherited;
end;

destructor TJanuaVirtualAnagraph.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaVirtualAnagraph.GetInternalCreate;
begin
  inherited;
  FInternalCreate := procedure
    begin
      try
        FDM := TdmVirtualAnagraph.Create(nil);
        SetMainDataModule(FDM);
        jdsGroups := TJanuaVtDataset.Create(FDM.vtGroups, [TJanuaEntity.AnagraphGroups]);
        jdsAnagraphs := TJanuaVtDataset.Create(FDM.vtAnagraphs, [TJanuaEntity.AnagraphAnagraphs]);
        jdsAnagraphs.AddParam('db_schema_id', TJanuaFieldType.jptInteger);
        jdsAnagraphs.AddParam('p_group_id', TJanuaFieldType.jptInteger);
        jdsAnagraphs.AddParam('anagraph_id', TJanuaFieldType.jptInteger);
        jdsAnagraphs.AddParam('p_search_name', TJanuaFieldType.jptString);
        jdsGroups.AddParam('db_schema_id', TJanuaFieldType.jptInteger);
        jdsGroups.AddParam('p_group_id', TJanuaFieldType.jptInteger);
        jdsAnagraphs.FilterParams.AddParam('search_index', TJanuaFieldType.jptString, '%').ParamOperator :=
          TJanuaOperator.LikeStrippedLower;
        jdsAnagraphs.FilterParams.Activate;
      except
        on e: exception do
          RaiseException('InternalCreate', e, self);
      end;
    end;
end;

function TJanuaVirtualAnagraph.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      inherited;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;
end;



procedure TJanuaVirtualAnagraph.RefreshDetails;
begin
  inherited;
  // Mock procedure
end;

{ TJanuaVirtualSearchAnagraph }

function TJanuaVirtualSearchAnagraph.InternalCreateDataset: IJanuaDBDataset;
begin
  FDM := TdmVirtualAnagraph.Create(nil);
  try
    Result := TJanuaVtMemDataset.CreateWithEntities([TJanuaEntity.AnagraphAnagraphs]);
    TFDMemTable(Result.DataSet).CopyDataSet(FDM.vtAnagraphs, [coStructure, coRestart, coAppend]);
  finally
    FDM.Free;
  end;
  // SetjdsSearch(TJanuaVtDataset.Create(FDM.vtAnagraphs, [TJanuaEntity.AnagraphAnagraphs]));
end;

{ TdmVirtualAnagraph }

procedure TdmVirtualAnagraph.RefreshDetails;
begin
  inherited;
  // Mock
end;

end.
