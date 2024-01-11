unit Janua.Carservice.PgBookingList;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // JOrm.Documents.Impl Booking
  JOrm.Carservice.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  // Januaproject
  // Core
  Janua.Core.Http, Janua.Cloud.Types, Janua.Cloud.Mail.Conf, Janua.Core.System.Types,
  // Lookup Interface
  Janua.Orm.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf, Janua.Cloud.Mail.Intf,
  Janua.Cloud.Sms.Intf, Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  Janua.Carservice.Intf,
  // Janua Orm unitTest
  JORM.System.Intf, JOrm.System.UserProfile.Custom.Intf,
  // Forms and Libs
  udmPgStorage, Janua.Unidac.Connection, DAScript, UniScript;

(*
  //
  // Januaproject
  // Types/Intf

  Janua.Cloud.Mail.Impl,
  // Impl
  Janua.Unidac.Connection, Janua.Vcl.Interposers, Janua.TMS.Interposers,
  Janua.Vcl.Cloud.frameMailMessageConfig,  Janua.Vcl.Cloud.frameSMSMessageConfig,
  Janua.Vcl.Cloud.FrameLandingMessageConfig, Janua.Vcl.Cloud.frameSMSSenderConfig;
*)

type
  /// <summary>Car Service Booking DataModule. </summary>
  TdmPgCarServiceBookingStorage = class(TdmPgStorage)
    qryBooking: TUniQuery;
    tbBookingStates: TUniTable;
    qryLookupUsers: TUniQuery;
    qryLookupUsersjguid: TGuidField;
    qryLookupUsersanagraph_id: TIntegerField;
    qryLookupUsersan_name: TWideStringField;
    qryLookupUsersan_last_name: TWideStringField;
    qryLookupUsersan_address: TWideStringField;
    qryLookupUsersan_cellular: TWideStringField;
    qryLookupUsersan_email: TWideStringField;
    qryLookupUsersan_main_group_id: TIntegerField;
    qryLookupUsersan_office_id: TSmallintField;
    qryOffice: TUniQuery;
    qryPickup: TUniQuery;
    qryPickupworkingday: TDateField;
    qryPickupslot_id: TSmallintField;
    qryPickupbooking_id: TLargeintField;
    qryPickupfrom_id: TIntegerField;
    qryPickupto_id: TIntegerField;
    qryPickupstate_id: TSmallintField;
    qryPickupbooked: TBooleanField;
    qryDelivery: TUniQuery;
    qryDeliveryworkingday: TDateField;
    qryDeliveryslot_id: TSmallintField;
    qryDeliverybooking_id: TLargeintField;
    qryDeliveryfrom_id: TIntegerField;
    qryDeliveryto_id: TIntegerField;
    qryDeliverystate_id: TSmallintField;
    qryDeliverybooked: TBooleanField;
    qryPickupslot_des: TWideStringField;
    qryDeliveryslot_des: TWideStringField;
    qryPickupList: TUniQuery;
    qryPickupListworkingday: TDateField;
    qryPickupListslot_id: TSmallintField;
    qryPickupListbooking_id: TLargeintField;
    qryPickupListfrom_id: TIntegerField;
    qryPickupListto_id: TIntegerField;
    qryPickupListstate_id: TSmallintField;
    qryPickupListslot_des: TWideStringField;
    qryPickupListbooked: TBooleanField;
    qryPickupjguid: TGuidField;
    qryDeliveryjguid: TGuidField;
    qryPickupListjguid: TGuidField;
    qryPickupdriver_anagraph_id: TIntegerField;
    qryPickupan_cellular: TWideStringField;
    qryDeliverydriver_anagraph_id: TIntegerField;
    qryDeliveryan_cellular: TWideStringField;
    tbBookingStatesid: TSmallintField;
    tbBookingStatesdescription: TWideStringField;
    tbBookingStatesjguid: TGuidField;
    qryPickupan_email: TWideStringField;
    spBookPickup: TUniStoredProc;
    qryPickupSlots: TUniQuery;
    qryReturnSlots: TUniQuery;
    qryBookingid: TLargeintField;
    qryBookingoffice_id: TIntegerField;
    qryBookingjguid: TGuidField;
    qryBookingdb_schema_id: TIntegerField;
    qryBookinguser_insert: TIntegerField;
    qryBookinginsert_date: TDateTimeField;
    qryBookingcustomer_id: TIntegerField;
    qryBookingstate_id: TSmallintField;
    qryBookingbranch_id: TIntegerField;
    qryBookingvehicle_model: TWideStringField;
    qryBookingvehicle_color: TWideStringField;
    qryBookingvehicle_numberplate: TWideStringField;
    qryBookingpickup_day: TDateField;
    qryBookingpickup_slot_id: TSmallintField;
    qryBookingreturn_day: TDateField;
    qryBookingreturn_slot_id: TSmallintField;
    qryBookingan_last_name: TWideStringField;
    qryBookingan_vat_id: TSmallintField;
    qryBookingan_address: TWideStringField;
    qryBookingan_postal_code: TWideStringField;
    qryBookingan_fiscal_code: TWideStringField;
    qryBookingan_town: TWideStringField;
    qryBookingservice_name: TWideStringField;
    qryBookingservice_address: TWideStringField;
    qryBookingan_phone: TWideStringField;
    qryBookingan_email: TWideStringField;
    qryBookingan_cellular: TWideStringField;
    qryBookingbranch_address: TWideStringField;
    qryBookingbranch_postal_code: TWideStringField;
    qryBookingbranch_town: TWideStringField;
    qryBookingbranch_phone: TWideStringField;
    qryBookingcust_first_name: TWideStringField;
    qryBookingcust_last_name: TWideStringField;
    qryBookingfull_address: TWideStringField;
    qryBookingcust_cellular: TWideStringField;
    qryBookingcust_email: TWideStringField;
    qryBookingpickup_address: TWideStringField;
    qryBookingreturn_address: TWideStringField;
    qryBookingpickup_time: TWideStringField;
    qryBookingreturn_time: TWideStringField;
    qryBookingpickup_date: TDateField;
    qryBookingreturn_date: TDateField;
    qryBookingdriver1_id: TIntegerField;
    qryBookingdriver2_id: TIntegerField;
    qryBookingdriver1_email: TWideStringField;
    qryBookingdriver2_email: TWideStringField;
    qryBookingdriver1_cellular: TWideStringField;
    qryBookingdriver2_cellular: TWideStringField;
    qryBookingpickup_jguid: TGuidField;
    qryBookingreturn_jguid: TGuidField;
    qryCheckSlots: TUniQuery;
    qryCheckSlotsworkingday: TDateField;
    qryCheckSlotsslot_id: TSmallintField;
    qryCheckSlotsslot_des: TWideStringField;
    qryCheckSlotsplaces: TLargeintField;
    qryCheckSlotsbooked: TLargeintField;
    qryCheckSlotsfree_places: TLargeintField;
    qryCheckSlotsfree: TBooleanField;
    qryPickupSlotsworkingday: TDateField;
    qryPickupSlotsslot_id: TSmallintField;
    qryPickupSlotsslot_des: TWideStringField;
    qryPickupSlotsplaces: TLargeintField;
    qryPickupSlotsbooked: TLargeintField;
    qryPickupSlotsfree_places: TLargeintField;
    qryPickupSlotsfree: TBooleanField;
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
    qryOfficeinsert_date: TDateTimeField;
    qryOfficeupdate_date: TDateTimeField;
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
    scBookingInsert: TUniScript;
    qryLookupBranches: TUniQuery;
    qryLookupBranchesjguid: TGuidField;
    qryLookupBranchesanagraph_id: TIntegerField;
    qryLookupBranchesan_name: TWideStringField;
    qryLookupBranchesan_last_name: TWideStringField;
    qryLookupBranchesan_address: TWideStringField;
    qryLookupBranchesan_cellular: TWideStringField;
    qryLookupBranchesan_email: TWideStringField;
    qryLookupBranchesan_main_group_id: TIntegerField;
    qryLookupBranchesan_office_id: TIntegerField;
    procedure qryPickupBeforePost(DataSet: TDataSet);
    procedure qryDeliveryBeforePost(DataSet: TDataSet);
    procedure qryPickupBeforeOpen(DataSet: TDataSet);
    procedure qryDeliveryBeforeOpen(DataSet: TDataSet);
    procedure qryBookingBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    [weak]
    FUserProfile: IUserProfile;
    [weak]
    FUsersession: IUserSession;

    FOfficeID: Integer;
    FBranchID: Integer;
    FCustomerID: Integer;
    FGUID: TGUID;
    FBookingRecord: IBookingHeadView;
    FFromBranch: Boolean;
    FDeliveryDate: TDate;
    FPickupDate: TDate;
    FDeliveryList: ItimetableSlots;
    FPickupList: ItimetableSlots;
    FPickupSlots: IList<ItimetableSlot>;
    FDeliverySlots: IList<ItimetableSlot>;
    FCheckUpSlots: IList<ItimetableSlot>;
    FUsersList: IAnagraphViews;
    FBranchsList: IAnagraphViews;
    FLandingMsgBuilder: IJanuaCSBookingLandingMsgBuilder;
    procedure SetUserProfile(const Value: IUserProfile);
    procedure SetUsersession(const Value: IUserSession);
    procedure SetBranchID(const Value: Integer);
    procedure SetOfficeID(const Value: Integer);
    procedure SetCustomerID(const Value: Integer);
    procedure SetGUID(const Value: TGUID);
    procedure SetBookingRecord(const Value: IBookingHeadView);
    procedure SetFromBranch(const Value: Boolean);
    procedure SetDeliveryDate(const Value: TDate);
    procedure SetPickupDate(const Value: TDate);
    procedure SetDeliveryList(const Value: ItimetableSlots);
    procedure SetPickuList(const Value: ItimetableSlots);
    function GetPickupSlots: IList<ItimetableSlot>;
    function GetDeliverySlots: IList<ItimetableSlot>;
    function GetPickupDate: TDate;
    function GetDeliveryDate: TDate;
    procedure SetUsersList(const Value: IAnagraphViews);
    function GetBookingRecord: IBookingHeadView;
    function GetGUID: TGUID;
    function GetCheckUpSlots: IList<ItimetableSlot>;
    procedure SetLandingMsgBuilder(const Value: IJanuaCSBookingLandingMsgBuilder);
    procedure SetBranchsList(const Value: IAnagraphViews);
    { Private declarations }
  protected
    { Mail Message Builders }
    FCSDriverMailBuilder1: IJanuaCSDriverMailBuilder1;
    FCSCustomerMailBuilder: IJanuaCSCustomerMailBuilder;
    FCSDriverMailBuilder2: IJanuaCSDriverMailBuilder2;
    FCSServiceMailBuilder: IJanuaCSServiceMailBuilder;
    FCSBackOfficeMailBuilder: IJanuaCSBackOfficeMailBuilder;
    { SMS Message Builders }
    FCSDriverSMSBuilder1: IJanuaCSDriverSMSBuilder1;
    FCSDriverSMSBuilder2: IJanuaCSDriverSMSBuilder2;
    FCSCustomerSMSBuilder: IJanuaCSCustomerSMSBuilder;
    // SMSSender
    FCSSMSSender: IJanuaSMSTwilio;
    // MailSender
    FGridMailSender: IJanuaMailSendGridSender;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure RefreshDetails; override;
    procedure AppendRecord;
    procedure PostRecord(const aSaveSlots: Boolean = False);
    procedure SearchTimetable;
    procedure UpdatePickupSlots;
    procedure UpdateDeliverySlots;
    procedure OnPickupTimeSlotChange(const aRecord: IJanuaRecord);
    procedure OnDeliveryTimeSlotChange(const aRecord: IJanuaRecord);
    function CheckPickuSlots: Boolean;
    function CheckDeliverySlots: Boolean;
    procedure RegisterPickupDeliverySlots;
    procedure ConfirmBooking;
    procedure SendSMSDriver;
    procedure SendSMSClient;
    function GetSMSMessageClient: string;
    function GetSMSMessageDriver: string;
    procedure SendMailBookingConfirmation;
    procedure SetupMailBookingConfirmation;
    procedure SendSMSBookingConfirmation;
    procedure SetupSMSBookingConfirmation;
    procedure SendWhatsAppBookingConfirmation;
    procedure OpenTimeTablePlaces(const aDate: TDate);
    procedure UpdateOfficeConfiguration;
    procedure OfficeUpdate;
    procedure ClearCustomer;
    function GenerateBookingSummaryMessage: string;
    procedure LogProc(aProc: string; aLog: string; aObject: TObject);
    procedure CloseLogBooking;
    procedure SaveErrorrLog;
  public
    { Public Properties }
    property PickupList: ItimetableSlots read FPickupList write SetPickuList;
    property DeliveryList: ItimetableSlots read FDeliveryList write SetDeliveryList;
    property PickupDate: TDate read GetPickupDate write SetPickupDate;
    property DeliveryDate: TDate read GetDeliveryDate write SetDeliveryDate;
    property FromBranch: Boolean read FFromBranch write SetFromBranch;
    property UserProfile: IUserProfile read FUserProfile write SetUserProfile;
    property UserSession: IUserSession read FUsersession write SetUsersession;
    property OfficeID: Integer read FOfficeID write SetOfficeID;
    property BranchID: Integer read FBranchID write SetBranchID;
    property CustomerID: Integer read FCustomerID write SetCustomerID;
    property GUID: TGUID read GetGUID write SetGUID;
    property BookingRecord: IBookingHeadView read GetBookingRecord write SetBookingRecord;
    property PickupSlots: IList<ItimetableSlot> read GetPickupSlots;
    property DeliverySlots: IList<ItimetableSlot> read GetDeliverySlots;
    property CheckUpSlots: IList<ItimetableSlot> read GetCheckUpSlots;
    property UsersList: IAnagraphViews read FUsersList write SetUsersList;
    property BranchsList: IAnagraphViews read FBranchsList write SetBranchsList;
    property LandingMsgBuilder: IJanuaCSBookingLandingMsgBuilder read FLandingMsgBuilder
      write SetLandingMsgBuilder;
  end;

  { Ogni prenotazione ha un CustomerID ed un OfficeID l'office ? valorizzato d'ufficio
    Ogni finestra 'vede' una prenotazione singola quindi identifica
    da un unico JGUID = TGUID
    Se lo stato della prenotazione ? 'new' il GUID ? generato e nuovo
    Se lo stato ? Edit apro la ricerca con il GUID.

    Main     ->   Frame     ->  DataModule
    New=True      New=True      New=True

    Creo nuova prenotazione
    Customer ID = 0 (nuovo cliente)
    Office ID (qryBookinganagraph_id) = UserProfile.AnagraphID.AsInteger
    apro
  }

var
  dmPgCarServiceBookingStorage: TdmPgCarServiceBookingStorage;

implementation

uses JOrm.Carservice.Booking.Impl, Janua.Orm.Impl, Janua.Application.Framework, Janua.Core.Functions;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmPgCarServiceBookingStorage }

procedure TdmPgCarServiceBookingStorage.AppendRecord;
begin
  // IN this case I just need to Clear the record to have fresh new one ready to start
  BookingRecord.Clear;
  OfficeUpdate;
end;

function TdmPgCarServiceBookingStorage.CheckDeliverySlots: Boolean;
var
  lSlot: ItimetableSlot;
begin
  Result := False;
  for lSlot in DeliverySlots do
    Result := Result or lSlot.Booked.AsBoolean;
end;

function TdmPgCarServiceBookingStorage.CheckPickuSlots: Boolean;
var
  lSlot: ItimetableSlot;
begin
  Result := False;
  for lSlot in PickupSlots do
    Result := Result or lSlot.Booked.AsBoolean;
end;

procedure TdmPgCarServiceBookingStorage.ClearCustomer;
begin
  FBookingRecord.ClearCustomer;
end;

procedure TdmPgCarServiceBookingStorage.CloseLogBooking;
begin
  TJanuaLogger.SaveLogToFile(DateFile(Date) + FBookingRecord.GUIDString + '.log');
end;

procedure TdmPgCarServiceBookingStorage.ConfirmBooking;
begin
  // ----------------------------------------------------------------------------------------------------------
  //
  // ----------------------------------------------------------------------------------------------------------
end;

constructor TdmPgCarServiceBookingStorage.Create(AOwner: TComponent);
begin
  inherited;
  if not TJanuaOrmFactory.TryGetRecordSetIntf(IAnagraphViews, 'UsersList', nil, nil, FUsersList) then
    raise Exception.Create('IAnagraphViews Interface not Registered');
  // FBranchsList: IAnagraphViews;
  if not TJanuaOrmFactory.TryGetRecordSetIntf(IAnagraphViews, 'BrachesList', nil, nil, FBranchsList) then
    raise Exception.Create('IAnagraphViews Interface not Registered');

  FBookingRecord := TBookingHeadView.Create('CarBooking');
  { At first I connect only the 'Main' View with the Dataset }
  FBookingRecord.DBDataset := qryBooking;
  FDeliveryList := TtimetableSlots.Create('Deliverylist', nil, nil);
  FPickupList := TtimetableSlots.Create('PickupList', nil, nil);

  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSBookingLandingMsgBuilder, FLandingMsgBuilder);
  FLandingMsgBuilder.JanuaRecord := FBookingRecord;
end;

procedure TdmPgCarServiceBookingStorage.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FDeliveryList := TtimetableSlots.Create;
  FDeliveryList.Name := 'DeliveryList';
  FPickupList := TtimetableSlots.Create;
  FDeliveryList.Name := 'DeliveryList';

  FDeliveryDate := Date();
  FPickupDate := Date();

  FPickupSlots := TCollections.CreateList<ItimetableSlot>;
  FDeliverySlots := TCollections.CreateList<ItimetableSlot>;
  FCheckUpSlots := TCollections.CreateList<ItimetableSlot>;
end;

procedure TdmPgCarServiceBookingStorage.DataModuleDestroy(Sender: TObject);
begin

  if Assigned(FCSDriverMailBuilder1) then
    TJanuaApplication.ReleaseObject(FCSDriverMailBuilder1.GetSelf);
  if Assigned(FCSCustomerMailBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerMailBuilder.GetSelf);
  if Assigned(FCSDriverMailBuilder2) then
    TJanuaApplication.ReleaseObject(FCSDriverMailBuilder2.GetSelf);
  if Assigned(FCSServiceMailBuilder) then
    TJanuaApplication.ReleaseObject(FCSServiceMailBuilder.GetSelf);
  if Assigned(FCSBackOfficeMailBuilder) then
    TJanuaApplication.ReleaseObject(FCSBackOfficeMailBuilder.GetSelf);
  if Assigned(FCSDriverSMSBuilder1) then
    TJanuaApplication.ReleaseObject(FCSDriverSMSBuilder1.GetSelf);
  if Assigned(FCSDriverSMSBuilder2) then
    TJanuaApplication.ReleaseObject(FCSDriverSMSBuilder2.GetSelf);
  if Assigned(FCSCustomerSMSBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerSMSBuilder.GetSelf);
  if Assigned(FGridMailSender) then
    TJanuaApplication.ReleaseObject(FGridMailSender.GetSelf);

  FCSDriverMailBuilder1 := nil;
  FCSCustomerMailBuilder := nil;
  FCSDriverMailBuilder2 := nil;
  FCSServiceMailBuilder := nil;
  FCSDriverSMSBuilder1 := nil;
  FCSDriverSMSBuilder2 := nil;
  FCSCustomerSMSBuilder := nil;
  FCSSMSSender := nil;
  FGridMailSender := nil;

  inherited;
end;

function TdmPgCarServiceBookingStorage.GenerateBookingSummaryMessage: string;
var
  aMessage: TLandingMessage;
begin
  FLandingMsgBuilder.LoadSettings;
  aMessage := FLandingMsgBuilder.GenerateLandingMessage;
  Result := aMessage.Text;
end;

function TdmPgCarServiceBookingStorage.GetBookingRecord: IBookingHeadView;
begin
  Result := FBookingRecord
end;

function TdmPgCarServiceBookingStorage.GetCheckUpSlots: IList<ItimetableSlot>;
begin
  Result := FCheckUpSlots
end;

function TdmPgCarServiceBookingStorage.GetDeliveryDate: TDate;
begin
  Result := FDeliveryDate; // FBookingRecord.DeliveryDateTime.Workingday.AsDateTime;
end;

function TdmPgCarServiceBookingStorage.GetDeliverySlots: IList<ItimetableSlot>;
begin
  Result := FDeliverySlots
end;

function TdmPgCarServiceBookingStorage.GetGUID: TGUID;
begin

end;

function TdmPgCarServiceBookingStorage.GetPickupDate: TDate;
begin
  Result := FPickupDate; // FBookingRecord.PickupDateTime.Workingday.AsDateTime;
end;

function TdmPgCarServiceBookingStorage.GetPickupSlots: IList<ItimetableSlot>;
begin
  Result := FPickupSlots;
end;

function TdmPgCarServiceBookingStorage.GetSMSMessageClient: string;
begin

end;

function TdmPgCarServiceBookingStorage.GetSMSMessageDriver: string;
begin

end;

procedure TdmPgCarServiceBookingStorage.LogProc(aProc, aLog: string; aObject: TObject);
begin
  TJanuaLogger.LogRecord(aProc, aLog, aObject);
end;

procedure TdmPgCarServiceBookingStorage.OfficeUpdate;
begin
  if qryOffice.RecordCount > 0 then
  begin
    FBookingRecord.OfficeID.AsInteger := qryOfficeanagraph_id.AsInteger;
    FBookingRecord.AnLastName.AsString := qryOfficean_last_name.AsString;
    FBookingRecord.AnTown.AsString := qryOfficean_town.AsString;
    FBookingRecord.AnPostalCode.AsString := qryOfficean_postal_code.AsString;
  end;
end;

procedure TdmPgCarServiceBookingStorage.OnDeliveryTimeSlotChange(const aRecord: IJanuaRecord);
var
  lTimeTableView: ItimetableSlot;
  vGUID: TGUID;
begin
  if (aRecord as ItimetableSlot).Booked.AsBoolean then
  begin
    vGUID := aRecord.GUID;
    for lTimeTableView in FDeliverySlots do
      if lTimeTableView.Booked.AsBoolean and (lTimeTableView.GUID <> vGUID) then
        lTimeTableView.Booked.AsBoolean := False;
  end;
end;

procedure TdmPgCarServiceBookingStorage.OnPickupTimeSlotChange(const aRecord: IJanuaRecord);
var
  lTimeTableView: ItimetableSlot;
  vGUID: TGUID;
begin
  if (aRecord as ItimetableSlot).Booked.AsBoolean then
  begin
    vGUID := aRecord.GUID;
    for lTimeTableView in FPickupSlots do
      if lTimeTableView.Booked.AsBoolean and (lTimeTableView.GUID <> vGUID) then
        lTimeTableView.Booked.AsBoolean := False;
  end;

end;

procedure TdmPgCarServiceBookingStorage.OpenTimeTablePlaces(const aDate: TDate);
var
  lTimeTableSlot: ItimetableSlot;
  lCheckupList: ItimetableSlots;
{$IFDEF DEBUG}
  lDescription: string;
{$ENDIF}
begin
  lCheckupList := TtimetableSlots.Create('Deliverylist', nil, nil);
  FCheckUpSlots.Clear;
  /// where workingday = :checkdate
  qryCheckSlots.Close;
  qryCheckSlots.ParamByName('checkdate').AsDate := aDate;
  qryCheckSlots.Open;
  if qryCheckSlots.RecordCount > 0 then
  begin
    lCheckupList.DirectLoadFromDataset(qryCheckSlots);
    lCheckupList.First;
    while not lCheckupList.EOF do
    begin
      lTimeTableSlot := TtimetableSlot.Create(lCheckupList.CurrentRecord);
{$IFDEF DEBUG}
      lDescription := lTimeTableSlot.SlotDes.AsString;
{$ENDIF}
      FCheckUpSlots.Add(lTimeTableSlot);
      lCheckupList.Next;
    end;
  end;
end;

procedure TdmPgCarServiceBookingStorage.PostRecord(const aSaveSlots: Boolean = False);
var
  i: Integer;
  lTimeTableView: ItimetableSlot;
begin
  FBookingRecord.DBDataset := qryBooking;
  if FBookingRecord.Id.AsInteger > 0 then
    FBookingRecord.SaveToDataset(False, False)
  else
  begin
    if FBookingRecord.GUID.IsEmpty then
      FBookingRecord.GUID := TGUID.NewGuid;

    qryBooking.Close;
    qryBooking.ParamByName('jguid').AsString := FBookingRecord.GUIDString;
    qryBooking.Open;

    if FCustomerID <> 0 then
      FBookingRecord.CustomerID.AsInteger := FCustomerID;

    if (FBookingRecord.OfficeID.AsInteger = 0) or (FBookingRecord.AnLastName.AsString = '') then
      UpdateOfficeConfiguration;

    FBookingRecord.DirectSaveToDataset(qryBooking { Dataset } , False { Force } );

    if aSaveSlots then
    begin
      for lTimeTableView in FPickupSlots do
        if lTimeTableView.Booked.AsBoolean then
        begin
          // SELECT ergomercator.carservice.carservice_book_jguid(:p_day, :p_slot_id, :p_pickup, :p_jguid)
          spBookPickup.ParamByName('p_day').AsDate := lTimeTableView.WorkingDay.AsDateTime;
          spBookPickup.ParamByName('p_slot_id').AsSmallint := lTimeTableView.SlotID.AsSmallint;
          spBookPickup.ParamByName('p_pickup').AsBoolean := True;
          spBookPickup.ParamByName('p_jguid').AsString := FBookingRecord.GUIDString;
          spBookPickup.Execute;
        end;

      for lTimeTableView in FDeliverySlots do
        if lTimeTableView.Booked.AsBoolean then
        begin
          // SELECT ergomercator.carservice.carservice_book_jguid(:p_day, :p_slot_id, :p_pickup, :p_jguid)
          spBookPickup.ParamByName('p_day').AsDate := lTimeTableView.WorkingDay.AsDateTime;
          spBookPickup.ParamByName('p_slot_id').AsSmallint := lTimeTableView.SlotID.AsSmallint;
          spBookPickup.ParamByName('p_pickup').AsBoolean := False;
          spBookPickup.ParamByName('p_jguid').AsString := FBookingRecord.GUIDString;
          spBookPickup.Execute;
        end;
    end;

    qryBooking.Close;
    qryBooking.ParamByName('jguid').AsString := FBookingRecord.GUIDString;
    qryBooking.Open;
    FBookingRecord.DirectLoadFromDataset(qryBooking);

    qryPickup.Open;
    qryDelivery.Open;

  end;
end;

procedure TdmPgCarServiceBookingStorage.qryBookingBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryBookingoffice_id.AsInteger := FUsersession.UserProfile.AnagraphID.AsInteger;
  if qryBookingstate_id.IsNull then
    qryBookingstate_id.AsInteger := 0;
  qryBookingbranch_id.AsInteger := FUsersession.UserProfile.AnagraphID.AsInteger;
  qryBookingdb_schema_id.AsInteger := 35;
  qryBookinguser_insert.AsInteger := FUsersession.UserProfile.Db_user_id.AsInteger;
end;

procedure TdmPgCarServiceBookingStorage.qryDeliveryBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FBranchID := UserSession.UserProfile.AnagraphID.AsInteger;

  qryDelivery.ParamByName('booking_id').AsInteger := qryBookingid.AsInteger;
  if FFromBranch then
    qryDelivery.ParamByName('from_id').AsInteger := FCustomerID
  else
    qryDelivery.ParamByName('from_id').AsInteger := FBranchID;
  qryDelivery.ParamByName('pickupdate').AsDate := FDeliveryDate;
end;

procedure TdmPgCarServiceBookingStorage.qryDeliveryBeforePost(DataSet: TDataSet);
begin
  inherited;
  FBranchID := UserSession.UserProfile.AnagraphID.AsInteger;

  if qryDeliverybooked.AsBoolean then
  begin
    qryDeliverybooking_id.AsInteger := qryBookingid.AsInteger;
    if FFromBranch then
    begin
      qryDeliveryfrom_id.AsInteger := FCustomerID;
      qryDeliveryto_id.AsInteger := FBranchID;
    end
    else
    begin
      qryDeliveryfrom_id.AsInteger := FBranchID;
      qryDeliveryto_id.AsInteger := FCustomerID;
    end;
  end
  else
  begin

  end;

end;

procedure TdmPgCarServiceBookingStorage.qryPickupBeforeOpen(DataSet: TDataSet);
begin
  { select * from carservice.timetable_view v1
    where
    (booked and booking_id = :booking_id and from_id = :from_id)
    and workingday = :pickupdate }
  FBranchID := UserSession.UserProfile.AnagraphID.AsInteger;
  qryPickup.ParamByName('booking_id').AsInteger := qryBookingid.AsInteger;
  if not FFromBranch then
    qryPickup.ParamByName('from_id').AsInteger := FCustomerID
  else
    qryPickup.ParamByName('from_id').AsInteger := FBranchID;
  qryPickup.ParamByName('pickupdate').AsDate := FPickupDate;

end;

procedure TdmPgCarServiceBookingStorage.qryPickupBeforePost(DataSet: TDataSet);
begin
  inherited;
  FBranchID := UserSession.UserProfile.AnagraphID.AsInteger;

  if qryPickupbooked.AsBoolean then
  begin
    qryPickupbooking_id.AsInteger := qryBookingid.AsInteger;
    if FFromBranch then
    begin
      qryPickupfrom_id.AsInteger := UserSession.UserProfile.AnagraphID.AsInteger { FBranchID };
      qryPickupto_id.AsInteger := FCustomerID;
    end
    else
    begin
      qryPickupfrom_id.AsInteger := FCustomerID;
      qryPickupto_id.AsInteger := UserSession.UserProfile.AnagraphID.AsInteger { FBranchID };
    end;
  end
end;

procedure TdmPgCarServiceBookingStorage.RefreshDetails;
begin
  inherited;
  SearchTimetable;
end;

procedure TdmPgCarServiceBookingStorage.RegisterPickupDeliverySlots;
var
  lTimeTableSlot: ItimetableSlot;
  { FPickupSlots: IList<ItimetableSlot>;
    FDeliverySlots: IList<ItimetableSlot>; }
begin
  for lTimeTableSlot in FPickupSlots do
    if lTimeTableSlot.Booked.AsBoolean then
    begin
      FBookingRecord.PickupDateTime.MasterBooking := FBookingRecord;
      FBookingRecord.PickupDateTime.Append;
      FBookingRecord.PickupDateTime.Assign(lTimeTableSlot);
      FBookingRecord.PickupDateTime.BookingId.AsInteger := FBookingRecord.Id.AsInteger;
      FBookingRecord.PickupDateTime.FromId.AsInteger := FBookingRecord.OfficeID.AsInteger;
      FBookingRecord.PickupDateTime.ToId.AsInteger := FBookingRecord.CustomerID.AsInteger;
      FBookingRecord.PickupDateTime.Direction := 0;
    end;

  for lTimeTableSlot in FDeliverySlots do
    if lTimeTableSlot.Booked.AsBoolean then
    begin
      FBookingRecord.DeliveryDateTime.MasterBooking := FBookingRecord;
      FBookingRecord.DeliveryDateTime.Append;
      FBookingRecord.DeliveryDateTime.Assign(lTimeTableSlot);
      FBookingRecord.DeliveryDateTime.BookingId.AsInteger := FBookingRecord.Id.AsInteger;
      FBookingRecord.DeliveryDateTime.FromId.AsInteger := FBookingRecord.CustomerID.AsInteger;
      FBookingRecord.DeliveryDateTime.ToId.AsInteger := FBookingRecord.OfficeID.AsInteger;
      FBookingRecord.DeliveryDateTime.Direction := 1;
    end;

end;

procedure TdmPgCarServiceBookingStorage.SaveErrorrLog;
begin
  TJanuaLogger.SaveLogToFile(DateFile(Date) + FBookingRecord.GUIDString + '.err');
end;

procedure TdmPgCarServiceBookingStorage.SearchTimetable;
begin
  if qryDelivery.state = dsEdit then
    qryDelivery.Post;

  if qryPickup.state = dsEdit then
    qryPickup.Post;

  qryDelivery.Close;
  qryDelivery.Open;

  qryPickup.Close;
  qryPickup.Open;
end;

procedure TdmPgCarServiceBookingStorage.SendMailBookingConfirmation;
var
  lMessage: TJanuaMailMessage;
  lError: string;
  procedure SendMailMulti;
  begin
    FGridMailSender.SendMailMulti(lMessage, lError);
  end;

begin
  SetupMailBookingConfirmation;
  // FGridMailSender
  FGridMailSender.LoadServerConf;
  FCSDriverMailBuilder1.SendMailMessage;
  FCSCustomerMailBuilder.SendMailMessage;
  FCSDriverMailBuilder2.SendMailMessage;
  (*
    FCSServiceMailBuilder.SendMailMessage;
    FCSBackOfficeMailBuilder.SendMailMessage;
  *)
end;

procedure TdmPgCarServiceBookingStorage.SendSMSBookingConfirmation;
begin
  SetupSMSBookingConfirmation;
  FCSDriverSMSBuilder1.SendSMS(qryBooking, nil, nil, nil);
  FCSDriverSMSBuilder2.SendSMS(qryBooking, nil, nil, nil);
  FCSCustomerSMSBuilder.SendSMS(qryBooking, nil, nil, nil);
end;

procedure TdmPgCarServiceBookingStorage.SendSMSClient;
var
  lSMS: IJanuaSMSSender;
begin
  if TJanuaApplicationFactory.TryGetInterface(IJanuaSMSSender, lSMS, True) then
  begin
    lSMS.SMSMessage := GetSMSMessageClient;
    lSMS.AddRecipient(FBookingRecord.GetCustCountryCellular);
    lSMS.SendSMS(nil, nil,
      procedure
      begin
        { Put some code inside }

      end);
  end;
  // http://pickapp.ergomercator.com/cscustomersmobile?customerID=136185fb-936d-497b-9dad-c7889cd2375c
  // l'sms viene inviato usando come 'discriminante' il GUID del nostro bookig
  GenerateTinyUrl('http://pickapp.ergomercator.com/cscustomersmobile?customerID=' + BookingRecord.GUIDString);

end;

procedure TdmPgCarServiceBookingStorage.SendSMSDriver;
var
  lSMS: IJanuaSMSSender;
begin
  if TJanuaApplicationFactory.TryGetInterface(IJanuaSMSSender, lSMS, True) then
  begin
    lSMS.SMSMessage := GetSMSMessageDriver;
    lSMS.AddRecipient(FBookingRecord.GetCustCountryCellular);
    lSMS.SendSMS(nil, nil,
      procedure
      begin
        { Put some code inside }

      end);
  end;
  // http://pickapp.ergomercator.com/cscustomersmobile?customerID=136185fb-936d-497b-9dad-c7889cd2375c
  // l'sms viene inviato usando come 'discriminante' il GUID del nostro bookig
  GenerateTinyUrl('http://pickapp.ergomercator.com/cscustomersmobile?customerID=' + BookingRecord.GUIDString);

end;

procedure TdmPgCarServiceBookingStorage.SendWhatsAppBookingConfirmation;
begin

end;

procedure TdmPgCarServiceBookingStorage.SetBookingRecord(const Value: IBookingHeadView);
begin
  FBookingRecord := Value;
  if Assigned(FBookingRecord) then
  begin
    if FBookingRecord.PickupDateTime.WorkingDay.AsFloat = 0.0 then
      FBookingRecord.PickupDateTime.WorkingDay.AsDateTime := FPickupDate;
    if FBookingRecord.DeliveryDateTime.WorkingDay.AsFloat = 0.0 then
      FBookingRecord.DeliveryDateTime.WorkingDay.AsDateTime := FDeliveryDate;
  end;
end;

procedure TdmPgCarServiceBookingStorage.SetBranchID(const Value: Integer);
begin
  FBranchID := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetBranchsList(const Value: IAnagraphViews);
begin
  FBranchsList := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetCustomerID(const Value: Integer);
begin
  FCustomerID := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetDeliveryDate(const Value: TDate);
begin
  FDeliveryDate := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetDeliveryList(const Value: ItimetableSlots);
begin
  FDeliveryList := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetFromBranch(const Value: Boolean);
begin
  FFromBranch := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetGUID(const Value: TGUID);
begin
  FGUID := Value;
  qryBooking.Close;
  qryBooking.ParamByName('jguid').AsGuid := FGUID;
  qryBooking.Open;
  if qryBooking.IsEmpty then
    qryBooking.Append;
end;

procedure TdmPgCarServiceBookingStorage.SetLandingMsgBuilder(const Value: IJanuaCSBookingLandingMsgBuilder);
begin
  FLandingMsgBuilder := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetOfficeID(const Value: Integer);
begin
  FOfficeID := Value;
  // **** Apro : Lista Branch, Lista Customers e Scheda Ufficio
  UpdateOfficeConfiguration;

end;

procedure TdmPgCarServiceBookingStorage.SetPickuList(const Value: ItimetableSlots);
begin
  FPickupList := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetPickupDate(const Value: TDate);
begin
  FPickupDate := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetupMailBookingConfirmation;
begin
  // Grid Sender ---------------------------------------------------------------------------------------------
  if not Assigned(FGridMailSender) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaMailSendGridSender, FGridMailSender, True); // ;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSCustomerMailBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailBuilder, FCSCustomerMailBuilder);
    FCSCustomerMailBuilder.DataSet := qryBooking;
    FCSCustomerMailBuilder.MailSender := FGridMailSender;
    FCSCustomerMailBuilder.LogProc := LogProc;
    FCSCustomerMailBuilder.LoadSettings;
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSDriverMailBuilder1) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder1, FCSDriverMailBuilder1);
    FCSDriverMailBuilder1.DataSet := qryBooking;
    FCSDriverMailBuilder1.MailSender := FGridMailSender;
    FCSDriverMailBuilder1.LogProc := LogProc;
    FCSDriverMailBuilder1.LoadSettings;
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSDriverMailBuilder2) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder2, FCSDriverMailBuilder2);
    FCSDriverMailBuilder2.DataSet := qryBooking;
    FCSDriverMailBuilder2.MailSender := FGridMailSender;
    FCSDriverMailBuilder2.LogProc := LogProc;
    FCSDriverMailBuilder2.LoadSettings;
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSBackOfficeMailBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSBackOfficeMailBuilder, FCSBackOfficeMailBuilder);
    FCSBackOfficeMailBuilder.DataSet := qryBooking;
    FCSBackOfficeMailBuilder.MailSender := FGridMailSender;
    FCSBackOfficeMailBuilder.LogProc := LogProc;
    FCSBackOfficeMailBuilder.LoadSettings;
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSServiceMailBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSServiceMailBuilder, FCSServiceMailBuilder);
    FCSServiceMailBuilder.DataSet := qryBooking;
    FCSServiceMailBuilder.MailSender := FGridMailSender;
    FCSServiceMailBuilder.LogProc := LogProc;
    FCSServiceMailBuilder.LoadSettings;
  end;
end;

procedure TdmPgCarServiceBookingStorage.SetupSMSBookingConfirmation;
begin
  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSSMSSender) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSSMSSender, True);

  if not Assigned(FCSCustomerSMSBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerSMSBuilder, FCSCustomerSMSBuilder);
    FCSCustomerSMSBuilder.DataSet := qryBooking;
    FCSCustomerSMSBuilder.SMSSender := FCSSMSSender;
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSDriverSMSBuilder1) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder1, FCSDriverSMSBuilder1);
    FCSDriverSMSBuilder1.DataSet := qryBooking;
    FCSDriverSMSBuilder1.SMSSender := FCSSMSSender;
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSDriverSMSBuilder2) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder1, FCSDriverSMSBuilder2);
    FCSDriverSMSBuilder2.DataSet := qryBooking;
    FCSDriverSMSBuilder2.SMSSender := FCSSMSSender;
  end;

end;

procedure TdmPgCarServiceBookingStorage.SetUserProfile(const Value: IUserProfile);
begin
  if (FUserProfile <> Value) then
  begin
    FUserProfile := Value;
    if Assigned(FUserProfile) then
    begin
      SetOfficeID(FUserProfile.AnagraphID.AsInteger);
    end;
  end;
end;

procedure TdmPgCarServiceBookingStorage.SetUsersession(const Value: IUserSession);
begin
  FUsersession := Value;
  if Assigned(Value) then
  begin
    if FUsersession.Db_session_id.AsInteger = 0 then
      raise Exception.Create('Db_session_id = 0');

    if FUsersession.User.DbUserId.AsInteger = 0 then
      raise Exception.Create('DbUserId = 0');

    if FUsersession.UserProfile.AnagraphID.AsInteger = 0 then
      raise Exception.Create('AnagraphID = 0');

    SetUserProfile(FUsersession.UserProfile)
  end
  else
    SetUserProfile(nil);
end;

procedure TdmPgCarServiceBookingStorage.SetUsersList(const Value: IAnagraphViews);
begin
  FUsersList := Value;
end;

procedure TdmPgCarServiceBookingStorage.UpdateDeliverySlots;
var
  lTimeTableView: ItimetableSlot;
{$IFDEF DEBUG}
  lDescription: string;
{$ENDIF}
begin
  FDeliveryList.Clear;
  FDeliverySlots.Clear;
  /// select * from carservice.timetable_view v2  where   v2.workingday = :pickupdate
  qryReturnSlots.Close;
  qryReturnSlots.ParamByName('pickupdate').AsDate := FDeliveryDate;
  qryReturnSlots.Open;
  if qryReturnSlots.RecordCount > 0 then
  begin
    FDeliveryList.DirectLoadFromDataset(qryReturnSlots);
    FDeliveryList.First;
    while not FDeliveryList.EOF do
    begin
      lTimeTableView := TtimetableSlot.Create(FDeliveryList.CurrentRecord);
{$IFDEF DEBUG}
      lDescription := lTimeTableView.SlotDes.AsString;
{$ENDIF}
      lTimeTableView.OnRecordChange := Self.OnDeliveryTimeSlotChange;
      FDeliverySlots.Add(lTimeTableView);
      FDeliveryList.Next;
    end;
  end;

end;

procedure TdmPgCarServiceBookingStorage.UpdateOfficeConfiguration;
begin
  if FOfficeID <> 0 then
  begin
    qryLookupUsers.Close;
    qryLookupUsers.ParamByName('office_id').AsInteger := FOfficeID;
    qryLookupUsers.Open;
{$IFDEF DEBUG}
    var
    i := qryLookupUsers.RecordCount;
{$ENDIF}
    UsersList.DirectLoadFromDataset(qryLookupUsers);

    qryLookupBranches.Close;
    qryLookupBranches.ParamByName('office_id').AsInteger := FOfficeID;
    qryLookupBranches.Open;
    var
    bHasBranches := qryLookupBranches.RecordCount > 0;

    qryOffice.Close;
    qryOffice.ParamByName('office_id').AsInteger := FOfficeID;
    qryOffice.Open;
    var
    bOfficeFound := qryOffice.RecordCount > 0;

    if qryLookupBranches.RecordCount > 0 then
    begin

    end;

    OfficeUpdate;

  end
  else
  begin
    UsersList.Clear;
  end;
end;

procedure TdmPgCarServiceBookingStorage.UpdatePickupSlots;
var
  lTimeTableView: ItimetableSlot;
begin
  FPickupList.Clear;
  FPickupSlots.Clear;
  /// select * from carservice.timetable_view v2  where   v2.workingday = :pickupdate
  qryPickupSlots.Close;
  qryPickupSlots.ParamByName('pickupdate').AsDate := FPickupDate;
  qryPickupSlots.Open;
  if qryPickupSlots.RecordCount > 0 then
  begin
    FPickupList.DirectLoadFromDataset(qryPickupSlots);
    FPickupList.First;
    while not FPickupList.EOF do
    begin
      lTimeTableView := TtimetableSlot.Create(FPickupList.CurrentRecord);
      lTimeTableView.OnRecordChange := OnPickupTimeSlotChange;
      FPickupSlots.Add(lTimeTableView);
      FPickupList.Next;
    end;
  end;
end;

end.
