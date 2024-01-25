unit Janua.Carservice.dmPgService;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS, DAScript, UniScript,
  // JOrm.Documents.Impl Booking
  JOrm.Carservice.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  // Januaproject
  // Core
  Janua.Core.Http, Janua.Cloud.Types, Janua.Cloud.Mail.Conf, Janua.Core.System.Types,
  // Lookup Interface
  Janua.Orm.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf, Janua.Cloud.Mail.Intf,
  Janua.Cloud.Sms.Intf, Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  Janua.Carservice.Intf, Janua.Core.Types,
  // ViewModels
  Janua.Anagraph.ViewModel.Intf, Janua.Carservice.Anagraph.ViewModel.Intf,
  // Janua Orm unitTest
  JOrm.System.Intf,
  // Forms and Libs
  udmPgStorage, Janua.Unidac.Connection, Janua.Cloud.GoogleAPIs;

type
  TdmPgCarServiceMain = class(TdmPgStorage)
    spAccountFunding: TUniStoredProc;
    qryOffice: TUniQuery;
    qryOfficedb_schema_id: TIntegerField;
    qryOfficeanagraph_id: TIntegerField;
    qryOfficean_title: TWideStringField;
    qryOfficean_name: TWideStringField;
    qryOfficean_second_name: TWideStringField;
    qryOfficean_last_name: TWideStringField;
    qryOfficean_notes: TWideStringField;
    qryOfficean_address: TWideStringField;
    qryOfficean_town: TWideStringField;
    qryOfficean_postal_code: TWideStringField;
    qryOfficean_iso_country_code: TWideStringField;
    qryOfficean_state_province: TWideStringField;
    qryOfficean_phone: TWideStringField;
    qryOfficean_phone2: TWideStringField;
    qryOfficean_fax: TWideStringField;
    qryOfficean_cellular: TWideStringField;
    qryOfficean_code: TWideStringField;
    qryOfficean_vat_numeric: TWideStringField;
    qryOfficean_email: TWideStringField;
    qryOfficean_web: TWideStringField;
    qryOfficean_contact_id: TIntegerField;
    qryOfficean_bank_account: TWideStringField;
    qryOfficean_payment_des: TWideStringField;
    qryOfficean_discount: TFloatField;
    qryOfficean_distance: TIntegerField;
    qryOfficean_distance_mesunit: TSmallintField;
    qryOfficean_sex: TWideStringField;
    qryOfficean_cod_comune: TWideStringField;
    qryOfficean_cod_provincia: TWideStringField;
    qryOfficean_credit_line: TFloatField;
    qryOfficean_currency_id: TSmallintField;
    qryOfficean_cat_id: TSmallintField;
    qryOfficean_notes2: TWideStringField;
    qryOfficean_notes3: TWideStringField;
    qryOfficean_edi: TBooleanField;
    qryOfficean_privacy: TBooleanField;
    qryOfficean_office_id: TIntegerField;
    qryOfficean_cod_prov_rif: TWideStringField;
    qryOfficean_data_fido: TDateField;
    qryOfficean_user_insert: TWideStringField;
    qryOfficean_user_update: TWideStringField;
    qryOfficean_area_id: TSmallintField;
    qryOfficean_agent_id: TSmallintField;
    qryOfficean_area_code: TWideStringField;
    qryOfficean_zone_id: TWideStringField;
    qryOfficean_ins_id: TLargeintField;
    qryOfficean_upd_id: TLargeintField;
    qryOfficean_documents: TSmallintField;
    qryOfficean_last_date: TDateField;
    qryOfficean_birthdate: TDateField;
    qryOfficean_office_type_id: TSmallintField;
    qryOfficean_searchname: TWideStringField;
    qryOfficean_extra_ue_flag: TBooleanField;
    qryOfficean_external_code: TWideStringField;
    qryOfficean_vat_id: TSmallintField;
    qryOfficean_personal_fiscal_code: TWideStringField;
    qryOfficean_privacy_print: TSmallintField;
    qryOfficean_sms: TBooleanField;
    qryOfficean_encrypted_fiscal_code: TWideStringField;
    qryOfficean_vat_purcentage: TSmallintField;
    qryOfficean_status: TSmallintField;
    qryOfficean_ownsite: TBooleanField;
    qryOfficean_insurance_id: TLargeintField;
    qryOfficean_anagraphs_anagraph_id: TIntegerField;
    qryOfficean_main_language_code: TWideStringField;
    qryOfficean_main_culture_code: TWideStringField;
    qryOfficean_fiscal_code: TWideStringField;
    qryOfficean_main_group_id: TIntegerField;
    qryOfficean_image_id: TLargeintField;
    qryOfficelatitude: TFloatField;
    qryOfficelongitude: TFloatField;
    qryOfficetest: TFloatField;
    qryOfficesearch_index: TWideStringField;
    qryOfficean_birthplace: TWideStringField;
    qryOfficean_birthplace_code: TWideStringField;
    qryOfficeanagraph64: TWideStringField;
    qryOfficemain_category_id: TSmallintField;
    qryOfficeosm_id: TLargeintField;
    qryOfficean_description: TWideStringField;
    qryOfficean_address_number: TWideStringField;
    qryOfficeanag_jguid: TWideStringField;
    qryOfficeanag_deleted: TBooleanField;
    fldOfficeinsert_date: TDateTimeField;
    fldOfficeupdate_date: TDateTimeField;
    qryOfficeuser_insert: TIntegerField;
    qryOfficejguid: TGuidField;
    qryOfficecustom_field_1: TWideStringField;
    qryOfficecustom_field_2: TWideStringField;
    qryOfficecustom_field_3: TWideStringField;
    qryOfficecustom_float_1: TFloatField;
    qryOfficecustom_float_2: TFloatField;
    qryOfficecustom_int_1: TIntegerField;
    qryOfficecustom_int_2: TIntegerField;
    qryOfficesupplier_id: TIntegerField;
    qryOfficevessel_id: TSmallintField;
    qryOfficean_country_id: TIntegerField;
    qryOfficean_iso_country_code2: TWideStringField;
    qryOfficedeleted: TBooleanField;
    qryOfficean_group_id: TSmallintField;
    qryOfficean_credit_limit: TFloatField;
    qryOfficean_credit: TBooleanField;
    qryOfficeshipment_name: TWideStringField;
    qryOfficeshipment_postal_code: TWideStringField;
    qryOfficeshipment_town: TWideStringField;
    qryOfficeshipment_address: TWideStringField;
    qryOfficeshipment_phone: TWideStringField;
    qryOfficeshipment_state_province: TWideStringField;
    qryOfficebilling_name: TWideStringField;
    qryOfficebilling_postal_code: TWideStringField;
    qryOfficebilling_town: TWideStringField;
    qryOfficebilling_address: TWideStringField;
    qryOfficebilling_phone: TWideStringField;
    qryOfficebilling_state_province: TWideStringField;
    qryUsers: TUniQuery;
    qryUsersjguid: TGuidField;
    qryUsersanagraph_id: TIntegerField;
    qryUsersan_name: TWideStringField;
    qryUsersan_last_name: TWideStringField;
    qryUsersan_address: TWideStringField;
    qryUsersan_cellular: TWideStringField;
    qryUsersan_email: TWideStringField;
    qryUsersan_main_group_id: TIntegerField;
    qryUsersan_office_id: TSmallintField;
    qryUsersan_address_1: TWideMemoField;
    qryUsersan_address_number: TWideStringField;
    qryUsersan_full_address: TWideStringField;
    qryUsersan_town: TWideStringField;
    qryUsersan_state_province: TWideStringField;
    qryUsersan_postal_code: TWideStringField;
    qryBookingList: TUniQuery;
    qryBookingListid: TLargeintField;
    qryBookingListoffice_id: TIntegerField;
    qryBookingListjguid: TGuidField;
    qryBookingListdb_schema_id: TIntegerField;
    qryBookingListuser_insert: TIntegerField;
    qryBookingListinsert_date: TDateTimeField;
    qryBookingListcustomer_id: TIntegerField;
    qryBookingListstate_id: TSmallintField;
    qryBookingListbranch_id: TIntegerField;
    qryBookingListvehicle_model: TWideStringField;
    qryBookingListvehicle_color: TWideStringField;
    qryBookingListvehicle_numberplate: TWideStringField;
    qryBookingListpickup_day: TDateField;
    qryBookingListpickup_slot_id: TSmallintField;
    qryBookingListreturn_day: TDateField;
    qryBookingListreturn_slot_id: TSmallintField;
    qryBookingListan_last_name: TWideStringField;
    qryBookingListan_vat_id: TSmallintField;
    qryBookingListan_address: TWideStringField;
    qryBookingListan_postal_code: TWideStringField;
    qryBookingListan_fiscal_code: TWideStringField;
    qryBookingListan_town: TWideStringField;
    qryBookingListservice_name: TWideStringField;
    qryBookingListservice_address: TWideStringField;
    qryBookingListan_phone: TWideStringField;
    qryBookingListan_email: TWideStringField;
    qryBookingListan_cellular: TWideStringField;
    qryBookingListbranch_address: TWideStringField;
    qryBookingListbranch_postal_code: TWideStringField;
    qryBookingListbranch_town: TWideStringField;
    qryBookingListbranch_phone: TWideStringField;
    qryBookingListcust_first_name: TWideStringField;
    qryBookingListcust_last_name: TWideStringField;
    qryBookingListfull_address: TWideStringField;
    qryBookingListcust_cellular: TWideStringField;
    qryBookingListcust_email: TWideStringField;
    qryBookingListpickup_address: TWideStringField;
    qryBookingListreturn_address: TWideStringField;
    qryBookingListpickup_time: TWideStringField;
    qryBookingListreturn_time: TWideStringField;
    qryBookingListpickup_date: TDateField;
    qryBookingListreturn_date: TDateField;
    qryBookingListdriver1_id: TIntegerField;
    qryBookingListdriver2_id: TIntegerField;
    qryBookingListdriver1_email: TWideStringField;
    qryBookingListdriver2_email: TWideStringField;
    qryBookingListdriver1_cellular: TWideStringField;
    qryBookingListdriver2_cellular: TWideStringField;
    qryBookingListpickup_jguid: TGuidField;
    qryBookingListreturn_jguid: TGuidField;
    qryBookingListpickup2_address: TWideStringField;
    qryBookingListreturn2_address: TWideStringField;
    qryBookingListpickup_slot_delivery: TWideStringField;
    qryBookingListreturn_slot_delivery: TWideStringField;
    qryCurrentAccount: TUniQuery;
    qryAccountFunding: TUniQuery;
    qryAccountFundingaccount_funding: TCurrencyField;
    qryAccountBalance: TUniQuery;
    qryAccountBalanceaccount_balance: TCurrencyField;
    qryCurrentAccountjguid: TGuidField;
    qryCurrentAccountid: TLargeintField;
    qryCurrentAccountanagraph_id: TIntegerField;
    qryCurrentAccountdescription: TWideStringField;
    qryCurrentAccountaccounting_date: TDateField;
    qryCurrentAccountvalue_date: TDateField;
    qryCurrentAccountdebit: TCurrencyField;
    qryCurrentAccountcredit: TCurrencyField;
    qryCurrentAccountbooking_id: TLargeintField;
    procedure qryBookingListBeforeOpen(DataSet: TDataSet);
    procedure qryCurrentAccountBeforeOpen(DataSet: TDataSet);
  private
    [weak]
    FUserProfile: IUserProfile;
    [weak]
    FUsersession: IUserSession;
    aModel: IJanuaCarServiceAnagraphModel;
    FOfficeID: Integer;
    FBranchID: Integer;
    FCustomerID: Integer;
    FGUID: TGUID;
    function GetBookingRecord: IBookingHeadView;
    function GetGUID: TGUID;
    procedure SetBookingRecord(const Value: IBookingHeadView);
    procedure SetBranchID(const Value: Integer);
    procedure SetCustomerID(const Value: Integer);
    procedure SetGUID(const Value: TGUID);
    procedure SetOfficeID(const Value: Integer);
    procedure SetUsersession(const Value: IUserSession);
  public
    property UserSession: IUserSession read FUsersession write SetUsersession;
    property OfficeID: Integer read FOfficeID write SetOfficeID;
    property BranchID: Integer read FBranchID write SetBranchID;
    property CustomerID: Integer read FCustomerID write SetCustomerID;
    property GUID: TGUID read GetGUID write SetGUID;
    property BookingRecord: IBookingHeadView read GetBookingRecord write SetBookingRecord;
  end;

var
  dmPgCarServiceMain: TdmPgCarServiceMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmPgCarServiceMain }

function TdmPgCarServiceMain.GetBookingRecord: IBookingHeadView;
begin

end;

function TdmPgCarServiceMain.GetGUID: TGUID;
begin
  Result := FGUID;
end;

procedure TdmPgCarServiceMain.qryBookingListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryBookingList.ParamByName('office_id').AsInteger := FOfficeID;
end;

procedure TdmPgCarServiceMain.qryCurrentAccountBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryCurrentAccount.ParamByName('office_id').AsInteger := FOfficeID;
end;

procedure TdmPgCarServiceMain.SetBookingRecord(const Value: IBookingHeadView);
begin

end;

procedure TdmPgCarServiceMain.SetBranchID(const Value: Integer);
begin
  FBranchID := Value;
end;

procedure TdmPgCarServiceMain.SetCustomerID(const Value: Integer);
begin
  FCustomerID := Value;
end;

procedure TdmPgCarServiceMain.SetGUID(const Value: TGUID);
begin

end;

procedure TdmPgCarServiceMain.SetOfficeID(const Value: Integer);
begin
  FOfficeID := Value;
end;

procedure TdmPgCarServiceMain.SetUsersession(const Value: IUserSession);
begin
  FUsersession := Value;
end;

end.
