unit Janua.Carservice.PgBooking;

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
    qryPickupslot_des: TWideStringField;
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
    qryPickupListjguid: TGuidField;
    qryPickupdriver_anagraph_id: TIntegerField;
    qryPickupan_cellular: TWideStringField;
    tbBookingStatesid: TSmallintField;
    tbBookingStatesdescription: TWideStringField;
    tbBookingStatesjguid: TGuidField;
    qryPickupan_email: TWideStringField;
    spBookPickup: TUniStoredProc;
    qryPickupSlots: TUniQuery;
    qryReturnSlots: TUniQuery;
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
    spInsertBranches: TUniStoredProc;
    qryMessages: TUniQuery;
    dsBooking: TUniDataSource;
    qryMessagesid: TIntegerField;
    qryMessagesdb_schema_id: TIntegerField;
    qryMessagesjguid: TGuidField;
    qryMessagesdeleted: TBooleanField;
    qryMessagesinsert_date: TDateTimeField;
    qryMessagesupdate_date: TDateTimeField;
    qryMessagesuser_insert: TWideStringField;
    qryMessagesuser_update: TWideStringField;
    qryMessagesanagraph_id: TIntegerField;
    qryMessagesdb_user_id: TIntegerField;
    qryMessagesmsgtype: TIntegerField;
    qryMessagesmsgtext: TWideStringField;
    qryMessagesjson: TWideMemoField;
    qryMessagesbooking_jguid: TGuidField;
    qryMessagestimetable_jguid: TGuidField;
    spInsertMessage: TUniStoredProc;
    qryPickupTimeTable: TUniQuery;
    DateField1: TDateField;
    SmallintField1: TSmallintField;
    LargeintField1: TLargeintField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField2: TSmallintField;
    BooleanField1: TBooleanField;
    WideStringField1: TWideStringField;
    GuidField1: TGuidField;
    IntegerField3: TIntegerField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    qryReturnTimeTable: TUniQuery;
    DateField2: TDateField;
    SmallintField3: TSmallintField;
    LargeintField2: TLargeintField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    SmallintField4: TSmallintField;
    BooleanField2: TBooleanField;
    WideStringField4: TWideStringField;
    GuidField2: TGuidField;
    IntegerField6: TIntegerField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    qryPickupTimeTablecolumn: TWideStringField;
    qryPickupTimeTablefrom_latitude: TFloatField;
    qryPickupTimeTablefrom_longitude: TFloatField;
    qryPickupTimeTablefrom_full_address: TWideStringField;
    qryPickupTimeTableto_latitude: TFloatField;
    qryPickupTimeTableto_longitude: TFloatField;
    qryPickupTimeTableto_full_address: TWideStringField;
    qryReturnTimeTablecolumn: TWideStringField;
    qryReturnTimeTablefrom_latitude: TFloatField;
    qryReturnTimeTablefrom_longitude: TFloatField;
    qryReturnTimeTablefrom_full_address: TWideStringField;
    qryReturnTimeTableto_latitude: TFloatField;
    qryReturnTimeTableto_longitude: TFloatField;
    qryReturnTimeTableto_full_address: TWideStringField;
    qryLookupUsersan_address_1: TWideMemoField;
    qryLookupUsersan_address_number: TWideStringField;
    qryLookupUsersan_full_address: TWideStringField;
    qryLookupUsersan_town: TWideStringField;
    qryLookupUsersan_state_province: TWideStringField;
    qryLookupUsersan_postal_code: TWideStringField;
    spUpdatePickup: TUniStoredProc;
    qryPickupSlotsdelivery_time: TTimeField;
    qryPickupSlotsslot_delivery: TWideStringField;
    qryPickupTimeTableslot_delivery: TWideStringField;
    qryPickupfrom_latitude: TFloatField;
    qryPickupfrom_longitude: TFloatField;
    qryPickupfrom_full_address: TWideStringField;
    qryPickupto_latitude: TFloatField;
    qryPickupto_longitude: TFloatField;
    qryPickupto_full_address: TWideStringField;
    qryPickupslot_delivery: TWideStringField;
    qryReturnTimeTableslot_delivery: TWideStringField;
    qryReturnSlotsworkingday: TDateField;
    qryReturnSlotsslot_id: TSmallintField;
    qryReturnSlotsslot_des: TWideStringField;
    qryReturnSlotsplaces: TLargeintField;
    qryReturnSlotsbooked: TLargeintField;
    qryReturnSlotsfree_places: TLargeintField;
    qryReturnSlotsfree: TBooleanField;
    qryReturnSlotsdelivery_time: TTimeField;
    qryReturnSlotsslot_delivery: TWideStringField;
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
    qryBookingpickup2_address: TWideStringField;
    qryBookingreturn2_address: TWideStringField;
    qryBookingpickup_slot_delivery: TWideStringField;
    qryBookingreturn_slot_delivery: TWideStringField;
    qryDeliveryjguid: TGuidField;
    qryDeliveryworkingday: TDateField;
    qryDeliveryslot_id: TSmallintField;
    qryDeliverybooking_id: TLargeintField;
    qryDeliveryfrom_id: TIntegerField;
    qryDeliveryto_id: TIntegerField;
    qryDeliverystate_id: TSmallintField;
    qryDeliveryslot_des: TWideStringField;
    qryDeliverybooked: TBooleanField;
    qryDeliverydriver_anagraph_id: TIntegerField;
    qryDeliveryan_cellular: TWideStringField;
    qryDeliverycolumn: TWideStringField;
    qryDeliveryan_email: TWideStringField;
    qryDeliveryfrom_latitude: TFloatField;
    qryDeliveryfrom_longitude: TFloatField;
    qryDeliveryfrom_full_address: TWideStringField;
    qryDeliveryto_latitude: TFloatField;
    qryDeliveryto_longitude: TFloatField;
    qryDeliveryto_full_address: TWideStringField;
    qryDeliveryslot_delivery: TWideStringField;
    qryCustomerVehicles: TUniQuery;
    qryCustomerVehiclesvehicle_model: TWideStringField;
    qryCustomerVehiclesvehicle_color: TWideStringField;
    qryCustomerVehiclesvehicle_numberplate: TWideStringField;
    spAccountFunding: TUniStoredProc;
    spAccountBalance: TUniStoredProc;
    spBookingAmount: TUniStoredProc;
    spBookingPayment: TUniStoredProc;
    qryAccountFunding: TUniQuery;
    qryAccountFundingaccount_funding: TCurrencyField;
    qryAccountBalance: TUniQuery;
    qryAccountBalanceaccount_balance: TCurrencyField;
    qryBookingAmount: TUniQuery;
    qryBookingPayment: TUniQuery;
    qryBookingPaymentbooking_payment: TCurrencyField;
    qryBookingAmountq: TIntegerField;
    qryBookingAmountnet_amount: TCurrencyField;
    qryBookingAmounttax_amount: TCurrencyField;
    qryBookingAmountfull_amount: TCurrencyField;
    procedure qryPickupBeforePost(DataSet: TDataSet);
    procedure qryDeliveryBeforePost(DataSet: TDataSet);
    procedure qryPickupBeforeOpen(DataSet: TDataSet);
    procedure qryDeliveryBeforeOpen(DataSet: TDataSet);
    procedure qryBookingBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryBookingPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure qryLookupBranchesBeforePost(DataSet: TDataSet);
    procedure qryLookupUsersBeforeOpen(DataSet: TDataSet);
    procedure qryLookupBranchesBeforeOpen(DataSet: TDataSet);
    procedure qryPickupTimeTableBeforeOpen(DataSet: TDataSet);
    procedure qryReturnTimeTableBeforeOpen(DataSet: TDataSet);
    procedure qryCustomerVehiclesBeforeOpen(DataSet: TDataSet);
    procedure qryBookingAmountBeforeOpen(DataSet: TDataSet);
    procedure qryAccountBalanceBeforeOpen(DataSet: TDataSet);
    procedure qryBookingPaymentBeforeOpen(DataSet: TDataSet);
  private
    [weak]
    FUserProfile: IUserProfile;
    [weak]
    FUsersession: IUserSession;
    aModel: IJanuaCarServiceAnagraphModel;
    FOfficeID: Integer;
    FBranchID: Integer;
    FCustomerID: Integer;
    FBookingRecord: IBookingHeadView;
    FFromBranch: Boolean;
    FDeliveryDate: TNullableDate;
    FPickupDate: TNullableDate;
    FDeliveryList: ItimetableSlots;
    FPickupList: ItimetableSlots;
    FPickupSlots: IList<ItimetableSlot>;
    FDeliverySlots: IList<ItimetableSlot>;
    FCheckUpSlots: IList<ItimetableSlot>;
    FUsersList: IAnagraphViews;
    FBranchesList: IAnagraphViews;
    FLandingMsgBuilder: IJanuaCSBookingLandingMsgBuilder;
    FConfirmed: Boolean;
    procedure SetUserProfile(const Value: IUserProfile);
    procedure SetUsersession(const Value: IUserSession);
    procedure SetBranchID(const Value: Integer);
    procedure SetOfficeID(const Value: Integer);
    procedure SetCustomerID(const Value: Integer);
    procedure SetGUID(const Value: TGUID);
    procedure SetBookingRecord(const Value: IBookingHeadView);
    procedure SetFromBranch(const Value: Boolean);
    procedure SetDeliveryDate(const Value: TNullableDate);
    procedure SetPickupDate(const Value: TNullableDate);
    procedure SetDeliveryList(const Value: ItimetableSlots);
    procedure SetPickuList(const Value: ItimetableSlots);
    function GetPickupSlots: IList<ItimetableSlot>;
    function GetDeliverySlots: IList<ItimetableSlot>;
    function GetPickupDate: TNullableDate;
    function GetDeliveryDate: TNullableDate;
    procedure SetUsersList(const Value: IAnagraphViews);
    function GetBookingRecord: IBookingHeadView;
    function GetGUID: TGUID;
    function GetCheckUpSlots: IList<ItimetableSlot>;
    procedure SetLandingMsgBuilder(const Value: IJanuaCSBookingLandingMsgBuilder);
    procedure SetBranchesList(const Value: IAnagraphViews);
    function GetTotalAmountDue: string;
    function GetCurrentAccountBalance: string;
    { Private declarations }
  protected
    { Mail Message Builders }
    FCSDriverMailBuilder1: IJanuaCSDriverMailBuilder1;
    FCSCustomerMailBuilder: IJanuaCSCustomerMailBuilder;
    FCSCustomerMailNRBuilder: IJanuaCSCustomerMailNRBuilder;
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

    // Contracts
    // (IJanuaCSDriverContractBuilder, );
    FCSDriverContractBuilder: IJanuaCSDriverContractBuilder;
    // (IJanuaCSCustomerContractBuilder, );
    FCSCustomerContractBuilder: IJanuaCSCustomerContractBuilder;
    // (IJanuaCSServiceContractBuilder, );
    FCSServiceContractBuilder: IJanuaCSServiceContractBuilder;

    FAnagraphModel: IJanuaDBAnagraphModel;

    function BoookingJsonSummary: string;
    function GetHasReturn: Boolean;
    procedure SetHasReturn(const Value: Boolean);
  public
    { Public declarations }
    // TExceptionProc = TProc<Exception, string>;
    procedure LogError(E: Exception; aMessage: string);
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
    procedure CloseErrBooking;
    procedure SaveErrorLog;
    procedure RefreshBooking;
    function GetServiceContract: string;
    procedure InsertBranchProc(Sender: TObject);
    procedure UpdatePickup;
    procedure UpdateReturn;
  public // Events
    // FCSDriverMailBuilder1: IJanuaCSDriverMailBuilder1;
    procedure OnCSDriver1MailSent(const aMessage, aJson: string);
    // FCSCustomerMailBuilder: IJanuaCSCustomerMailBuilder;
    // FCSCustomerMailNRBuilder: IJanuaCSCustomerMailNRBuilder;
    procedure OnCSCustomerMailSent(const aMessage, aJson: string);
    // FCSDriverMailBuilder2: IJanuaCSDriverMailBuilder2;
    procedure OnCSDriver2MailSent(const aMessage, aJson: string);
    // FCSServiceMailBuilder: IJanuaCSServiceMailBuilder;
    procedure OnCSServiceMailSent(const aMessage, aJson: string);
    // FCSBackOfficeMailBuilder: IJanuaCSBackOfficeMailBuilder;
    procedure OnCSBackOfficMailSent(const aMessage, aJson: string);
    // FCSDriverSMSBuilder1: IJanuaCSDriverSMSBuilder1;
    procedure OnCSDriver1SMSSent(const aMessage, aJson: string);
    // FCSDriverSMSBuilder2: IJanuaCSDriverSMSBuilder2;
    procedure OnCSDriver2SMSSent(const aMessage, aJson: string);
    // FCSCustomerSMSBuilder: IJanuaCSCustomerSMSBuilder;
    procedure OnCSCustomerSMSSent(const aMessage, aJson: string);
    procedure SearchBooking(const aGUID: string);
    procedure UpdateAccountBalance;
    procedure doBookingPayment;
  public
    { Public Properties }
    property PickupList: ItimetableSlots read FPickupList write SetPickuList;
    property DeliveryList: ItimetableSlots read FDeliveryList write SetDeliveryList;
    property PickupDate: TNullableDate read GetPickupDate write SetPickupDate;
    property DeliveryDate: TNullableDate read GetDeliveryDate write SetDeliveryDate;
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
    property UsersList: IAnagraphViews read FUsersList;
    property BranchesList: IAnagraphViews read FBranchesList;
    property LandingMsgBuilder: IJanuaCSBookingLandingMsgBuilder read FLandingMsgBuilder
      write SetLandingMsgBuilder;
    property HasReturn: Boolean read GetHasReturn write SetHasReturn;
    property TotalAmountDue: string read GetTotalAmountDue;
    property CurrentAccountBalance: string read GetCurrentAccountBalance;
    property Confirmed: Boolean read FConfirmed;
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

uses System.DateUtils, DataSet.Serialize, System.JSON, Spring,
  // Janua
  Janua.Core.JSON, JOrm.Carservice.Booking.Impl, Janua.Orm.Impl, Janua.Application.Framework,
  Janua.Core.Functions, Janua.Carservice.Anagraph.Model.Impl;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmPgCarServiceBookingStorage }

procedure TdmPgCarServiceBookingStorage.AppendRecord;
begin
  // IN this case I just need to Clear the record to have fresh new one ready to start
  BookingRecord.Clear;
  BookingRecord.GUID := TGUID.NewGuid;
  BookingRecord.PickupDate.AsDateTime := FPickupDate;

  // Delivery Date MUST Be managed when appending Record
  if FDeliveryDate.HasValue then
    BookingRecord.ReturnDate.Clear
  else
    BookingRecord.ReturnDate.AsDateTime := FDeliveryDate;

  // SetAnagraphBooking - Service Anagraph can be 'demanded' to an AnagraphModel and 'Uploaded'

  OfficeUpdate;
  RefreshBooking;
  LogProc('AppendRecord', '{"level" : "INFO", "Booking" : ' + BoookingJsonSummary + '}', self);
end;

function TdmPgCarServiceBookingStorage.BoookingJsonSummary: string;
begin
  Result := '{';
  Result := Result + '"guid" : "' + GUID.ToString + '"';
  Result := Result + ', "pickup" : "' + DateToISO8601(FPickupDate) + '"';
  Result := Result + ', "delivery" : "' + DateToISO8601(FDeliveryDate) + '"}';
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

procedure TdmPgCarServiceBookingStorage.CloseErrBooking;
begin
  var
  logTitle := StringReplace(FBookingRecord.GUIDString, '}', '', []);
  logTitle := StringReplace(FBookingRecord.GUIDString, '{', '', []);
  TJanuaLogger.SaveLogToFile(DateFile(Date) + logTitle + 'err.json');
end;

procedure TdmPgCarServiceBookingStorage.CloseLogBooking;
begin
  var
  logTitle := StringReplace(FBookingRecord.GUIDString, '}', '', []);
  logTitle := StringReplace(FBookingRecord.GUIDString, '{', '', []);
  TJanuaLogger.SaveLogToFile(DateFile(Date) + logTitle + 'log.json');
end;

procedure TdmPgCarServiceBookingStorage.ConfirmBooking;
begin
  if not FConfirmed then
  begin
    // --------------------------------------------------------------------------------------------------------
    SendMailBookingConfirmation;
    SendSMSBookingConfirmation;
    FConfirmed := True;
    // --------------------------------------------------------------------------------------------------------
  end;
end;

constructor TdmPgCarServiceBookingStorage.Create(AOwner: TComponent);
begin
  FOfficeID := 0;
  FBranchID := 0;
  FCustomerID := 0;
  FFromBranch := False;
  FDeliveryDate := Date;
  FPickupDate := Date;
  try
    inherited;
    if not TJanuaOrmFactory.TryGetRecordSetIntf(IAnagraphViews, 'UsersList', nil, nil, FUsersList) then
      raise Exception.Create('IAnagraphViews Interface not Registered');
    FUsersList.CurrentRecord.DBDataset := qryLookupUsers;
    // FBranchesList: IAnagraphViews;
    if not TJanuaOrmFactory.TryGetRecordSetIntf(IAnagraphViews, 'BrachesList', nil, nil, FBranchesList) then
      raise Exception.Create('IAnagraphViews Interface not Registered');
    FBranchesList.CurrentRecord.DBDataset := qryLookupBranches;

    TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphModel, FAnagraphModel, True);

    FBookingRecord := TBookingHeadView.Create('CarBooking');
    { At first I connect only the 'Main' View with the Dataset }
    FBookingRecord.DBDataset := qryBooking;

    FDeliveryList := TtimetableSlots.Create('Deliverylist', nil, nil);
    FPickupList := TtimetableSlots.Create('PickupList', nil, nil);

    // ---------------------------------------------------------------------------------------------------------
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSBookingLandingMsgBuilder, FLandingMsgBuilder);
    FLandingMsgBuilder.LogProc := LogProc;
    FLandingMsgBuilder.JanuaRecord := FBookingRecord;
    LogProc('Create', '{"level" : "INFO", "GUID" : ' + tjs(GUID.ToString) + '}', self);
  except
    on E: Exception do
    begin
      LogProc('Create', '{"level" : "ERROR", "message" : "' + E.message + '"}', self);
      raise
    end;
  end;
end;

procedure TdmPgCarServiceBookingStorage.DataModuleCreate(Sender: TObject);
begin
  try
    inherited;
    // aModel deve gestire
    aModel := TJanuaCarServiceAnagraphModel.Create;

    FConfirmed := False;

    FDeliveryList := TtimetableSlots.Create;
    FDeliveryList.Name := 'DeliveryList';
    FPickupList := TtimetableSlots.Create;
    FDeliveryList.Name := 'DeliveryList';

    FDeliveryDate := Date();
    FPickupDate := Date();
    HasReturn := True;

    FPickupSlots := TCollections.CreateList<ItimetableSlot>;
    FDeliverySlots := TCollections.CreateList<ItimetableSlot>;
    FCheckUpSlots := TCollections.CreateList<ItimetableSlot>;

    LogProc('DataModuleCreate', '{"level" : "INFO", "Booking" : ' + BoookingJsonSummary + '}', self);
  except
    on E: Exception do
    begin
      LogProc('DataModuleCreate', '{"level" : "ERROR", "message" : "' + E.message + '"}', self);
      raise
    end;
  end;
end;

procedure TdmPgCarServiceBookingStorage.DataModuleDestroy(Sender: TObject);
begin
  try
    if Assigned(FCSDriverMailBuilder1) then
      TJanuaApplication.ReleaseObject(FCSDriverMailBuilder1.GetSelf);
    if Assigned(FCSCustomerMailBuilder) then
      TJanuaApplication.ReleaseObject(FCSCustomerMailBuilder.GetSelf);
    if Assigned(FCSCustomerMailNRBuilder) then
      TJanuaApplication.ReleaseObject(FCSCustomerMailNRBuilder.GetSelf);
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
    FCSCustomerMailNRBuilder := nil;
    FCSDriverMailBuilder2 := nil;
    FCSServiceMailBuilder := nil;
    FCSDriverSMSBuilder1 := nil;
    FCSDriverSMSBuilder2 := nil;
    FCSCustomerSMSBuilder := nil;
    FCSSMSSender := nil;
    FGridMailSender := nil;

    inherited;
  except
    on E: Exception do
    begin
      LogProc('DataModuleCreate', '{"level" : "ERROR", "message" : "' + E.message + '"}', self);
      raise
    end;
  end;
end;

procedure TdmPgCarServiceBookingStorage.doBookingPayment;
begin
  qryBookingPayment.Close;
  qryBookingPayment.Open;
end;

function TdmPgCarServiceBookingStorage.GenerateBookingSummaryMessage: string;
var
  aMessage: TLandingMessage;
begin
  try
    FLandingMsgBuilder.LoadSettings;
    RefreshBooking;
    aMessage := FLandingMsgBuilder.GenerateLandingMessage;
    LogProc('GenerateBookingSummaryMessage', FBookingRecord.AsJson, self);
    Result := aMessage.Text;
  except
    on E: Exception do
    begin
      LogProc('GenerateBookingSummaryMessage', '{"level" : "ERROR", "message" : "' + E.message + '"}', self);
      raise
    end;
  end;
end;

function TdmPgCarServiceBookingStorage.GetBookingRecord: IBookingHeadView;
begin
  Result := FBookingRecord
end;

function TdmPgCarServiceBookingStorage.GetCheckUpSlots: IList<ItimetableSlot>;
begin
  Result := FCheckUpSlots
end;

function TdmPgCarServiceBookingStorage.GetCurrentAccountBalance: string;
begin
  Result := FormatFloat('€ 0.00', qryAccountBalanceaccount_balance.AsFloat);
end;

function TdmPgCarServiceBookingStorage.GetDeliveryDate: TNullableDate;
begin
  Result := FDeliveryDate; // FBookingRecord.DeliveryDateTime.Workingday.AsDateTime;
end;

function TdmPgCarServiceBookingStorage.GetDeliverySlots: IList<ItimetableSlot>;
begin
  Result := FDeliverySlots
end;

function TdmPgCarServiceBookingStorage.GetGUID: TGUID;
begin
  Result := FBookingRecord.GUID;
end;

function TdmPgCarServiceBookingStorage.GetHasReturn: Boolean;
begin
  Result := FBookingRecord.HasReturn
end;

function TdmPgCarServiceBookingStorage.GetPickupDate: TNullableDate;
begin
  Result := FPickupDate; // FBookingRecord.PickupDateTime.Workingday.AsDateTime;
end;

function TdmPgCarServiceBookingStorage.GetPickupSlots: IList<ItimetableSlot>;
begin
  Result := FPickupSlots;
end;

function TdmPgCarServiceBookingStorage.GetServiceContract: string;
var
  lCSServiceContractBuilder: IJanuaCSServiceContractBuilder;
  lMessage: TLandingMessage;
begin
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSServiceContractBuilder, lCSServiceContractBuilder);
  lCSServiceContractBuilder.DataSet := qryBooking;
  lCSServiceContractBuilder.LoadSettings;
  lMessage := lCSServiceContractBuilder.GenerateLandingMessage;
  Result := lMessage.Text;
end;

function TdmPgCarServiceBookingStorage.GetSMSMessageClient: string;
begin

end;

function TdmPgCarServiceBookingStorage.GetSMSMessageDriver: string;
begin

end;

function TdmPgCarServiceBookingStorage.GetTotalAmountDue: string;
begin
  Result := FormatFloat('€ 0.00', qryBookingAmountfull_amount.AsFloat);
end;

procedure TdmPgCarServiceBookingStorage.InsertBranchProc(Sender: TObject);
begin
  // To Insert a New Branch should be Used a Stored Procedure
  // FBranchesList - spInsertBranches
  if FBranchesList.AnagraphView.DbSchemaId.IsNull or (FBranchesList.AnagraphView.DbSchemaId.AsInteger = 0)
  then
    FBranchesList.AnagraphView.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
  // 31 - Branches
  if FBranchesList.AnagraphView.AnGroupId.IsNull or (FBranchesList.AnagraphView.AnGroupId.AsInteger = 0) then
    FBranchesList.AnagraphView.AnGroupId.AsInteger := 31;

  TJanuaDBFramework.DatasetFunctions.StoreRecordToProcedure(FBranchesList.CurrentRecord,
    spInsertBranches, True);
end;

procedure TdmPgCarServiceBookingStorage.LogError(E: Exception; aMessage: string);
begin
  TJanuaLogger.LogError('CarServiceBookingStorage', aMessage, self, E);
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

procedure TdmPgCarServiceBookingStorage.OnCSBackOfficMailSent(const aMessage, aJson: string);
begin
  spInsertMessage.ParamByName('p_json').AsString := aJson;
  spInsertMessage.ParamByName('p_message').AsString := aMessage;
  spInsertMessage.ParamByName('p_booking_jguid').AsGUID := FBookingRecord.GUID;
  spInsertMessage.ParamByName('p_timetable_jguid').AsGUID := TGUID.Empty;
  spInsertMessage.ParamByName('p_user_id').AsInteger := FBookingRecord.OfficeID.AsInteger;
  spInsertMessage.ParamByName('p_msgtype').AsInteger := 1;
  spInsertMessage.ExecProc;
end;

procedure TdmPgCarServiceBookingStorage.OnCSCustomerMailSent(const aMessage, aJson: string);
begin
  spInsertMessage.ParamByName('p_json').AsString := aJson;
  spInsertMessage.ParamByName('p_message').AsString := aMessage;
  spInsertMessage.ParamByName('p_booking_jguid').AsGUID := FBookingRecord.GUID;
  spInsertMessage.ParamByName('p_timetable_jguid').AsGUID := TGUID.Empty;
  spInsertMessage.ParamByName('p_user_id').AsInteger := FBookingRecord.CustomerID.AsInteger;
  spInsertMessage.ParamByName('p_msgtype').AsInteger := 1;
  spInsertMessage.ExecProc;
end;

procedure TdmPgCarServiceBookingStorage.OnCSCustomerSMSSent(const aMessage, aJson: string);
begin
  spInsertMessage.ParamByName('p_json').AsString := aJson;
  spInsertMessage.ParamByName('p_message').AsString := aMessage;
  spInsertMessage.ParamByName('p_booking_jguid').AsGUID := FBookingRecord.GUID;
  spInsertMessage.ParamByName('p_timetable_jguid').AsGUID := TGUID.Empty;
  spInsertMessage.ParamByName('p_user_id').AsInteger := FBookingRecord.CustomerID.AsInteger;
  spInsertMessage.ParamByName('p_msgtype').AsInteger := 2;
  spInsertMessage.ExecProc;
end;

procedure TdmPgCarServiceBookingStorage.OnCSDriver1MailSent(const aMessage, aJson: string);
begin
  spInsertMessage.ParamByName('p_json').AsString := aJson;
  spInsertMessage.ParamByName('p_message').AsString := aMessage;
  spInsertMessage.ParamByName('p_booking_jguid').AsGUID := FBookingRecord.GUID;
  spInsertMessage.ParamByName('p_timetable_jguid').AsGUID := FBookingRecord.PickupDateTime.GUID;
  spInsertMessage.ParamByName('p_user_id').AsInteger := FBookingRecord.Driver1Id.AsInteger;
  spInsertMessage.ParamByName('p_msgtype').AsInteger := 1;
  spInsertMessage.ExecProc;
end;

procedure TdmPgCarServiceBookingStorage.OnCSDriver1SMSSent(const aMessage, aJson: string);
begin
  spInsertMessage.ParamByName('p_json').AsString := aJson;
  spInsertMessage.ParamByName('p_message').AsString := aMessage;
  spInsertMessage.ParamByName('p_booking_jguid').AsGUID := FBookingRecord.GUID;
  spInsertMessage.ParamByName('p_timetable_jguid').AsGUID := FBookingRecord.PickupDateTime.GUID;
  spInsertMessage.ParamByName('p_user_id').AsInteger := FBookingRecord.Driver1Id.AsInteger;
  spInsertMessage.ParamByName('p_msgtype').AsInteger := 2;
  spInsertMessage.ExecProc;
end;

procedure TdmPgCarServiceBookingStorage.OnCSDriver2MailSent(const aMessage, aJson: string);
begin
  spInsertMessage.ParamByName('p_json').AsString := aJson;
  spInsertMessage.ParamByName('p_message').AsString := aMessage;
  spInsertMessage.ParamByName('p_booking_jguid').AsGUID := FBookingRecord.GUID;
  spInsertMessage.ParamByName('p_timetable_jguid').AsGUID := FBookingRecord.DeliveryDateTime.GUID;
  spInsertMessage.ParamByName('p_user_id').AsInteger := FBookingRecord.Driver2Id.AsInteger;
  spInsertMessage.ParamByName('p_msgtype').AsInteger := 1;
  spInsertMessage.ExecProc;
end;

procedure TdmPgCarServiceBookingStorage.OnCSDriver2SMSSent(const aMessage, aJson: string);
begin
  spInsertMessage.ParamByName('p_json').AsString := aJson;
  spInsertMessage.ParamByName('p_message').AsString := aMessage;
  spInsertMessage.ParamByName('p_booking_jguid').AsGUID := FBookingRecord.GUID;
  spInsertMessage.ParamByName('p_timetable_jguid').AsGUID := FBookingRecord.DeliveryDateTime.GUID;
  spInsertMessage.ParamByName('p_user_id').AsInteger := FBookingRecord.Driver2Id.AsInteger;
  spInsertMessage.ParamByName('p_msgtype').AsInteger := 2;
  spInsertMessage.ExecProc;
end;

procedure TdmPgCarServiceBookingStorage.OnCSServiceMailSent(const aMessage, aJson: string);
begin
  spInsertMessage.ParamByName('p_json').AsString := aJson;
  spInsertMessage.ParamByName('p_message').AsString := aMessage;
  spInsertMessage.ParamByName('p_booking_jguid').AsGUID := FBookingRecord.GUID;
  spInsertMessage.ParamByName('p_timetable_jguid').AsGUID := TGUID.Empty;
  spInsertMessage.ParamByName('p_user_id').AsInteger := FBookingRecord.OfficeID.AsInteger;
  spInsertMessage.ParamByName('p_msgtype').AsInteger := 2;
  spInsertMessage.ExecProc;
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
  sGUID: string;
begin
  FBookingRecord.DBDataset := qryBooking;
  FBookingRecord.Post;
  if FBookingRecord.Id.AsInteger > 0 then
    FBookingRecord.SaveToDataset(False, False)
  else
  begin
{$IFDEF DEBUG}
    Guard.CheckFalse(FBookingRecord.GUID.IsEmpty, 'FBookingRecord.GUID.IsEmpty');
{$ENDIF}
    sGUID := FBookingRecord.GUIDString;

    qryBooking.Close;
    qryBooking.ParamByName('jguid').AsString := sGUID;
    qryBooking.Open;

    if FCustomerID <> 0 then
      FBookingRecord.CustomerID.AsInteger := FCustomerID;

    if (FBookingRecord.OfficeID.AsInteger = 0) or (FBookingRecord.AnLastName.AsString = '') then
      UpdateOfficeConfiguration;

    var
    lTestB := False;
    var
    lTestI := 0;

    if FBookingRecord.AnagraphClient.AnagraphId.AsInteger = 0 then
    begin
      FBookingRecord.AnagraphClient.SyncMainAddress;
      lTestI := aModel.AddNewBookingAnagraph(FBookingRecord.AnagraphClient);
      if lTestI > 0 then
      begin
        FBookingRecord.AnagraphClient.Assign(aModel.BookingAnagraph);

        if FBookingRecord.AnagraphClient.MainAddress.Id.AsInteger = 0 then
          FBookingRecord.AnagraphClient.MainAddress.Assign(aModel.BookingAnagraph.MainAddress);

        if FBookingRecord.AnagraphClient.ReturnAddress.AnagraphId.AsInteger = 0 then
          FBookingRecord.AnagraphClient.ReturnAddress.Assign(aModel.BookingAnagraph.ReturnAddress);

        if FBookingRecord.AnagraphClient.ReturnAddress.AnagraphId.AsInteger = 0 then
          FBookingRecord.AnagraphClient.ReturnAddress.Assign(aModel.BookingAnagraph.MainAddress);

        Guard.CheckTrue(FBookingRecord.AnagraphClient.AnagraphId.AsInteger = lTestI,
          'AnagraphClient.AnagraphId');
        Guard.CheckTrue(FBookingRecord.AnagraphClient.MainAddress.Id.AsInteger > 0,
          'AnagraphClient.MainAddress.Id');
      end;
    end
    else
    begin
      lTestB := aModel.UpdateBookingAnagraph(FBookingRecord.AnagraphClient);

      if FBookingRecord.AnagraphClient.MainAddress.Id.AsInteger = 0 then
        FBookingRecord.AnagraphClient.MainAddress.Assign(aModel.BookingAnagraph.MainAddress);

      if FBookingRecord.AnagraphClient.ReturnAddress.AnagraphId.AsInteger = 0 then
        FBookingRecord.AnagraphClient.ReturnAddress.Assign(aModel.BookingAnagraph.ReturnAddress);

      if FBookingRecord.AnagraphClient.ReturnAddress.AnagraphId.AsInteger = 0 then
        FBookingRecord.AnagraphClient.ReturnAddress.Assign(aModel.BookingAnagraph.MainAddress);
    end;

{$IFDEF DEBUG}
    Guard.CheckTrue(lTestB or (lTestI > 0), 'Insert/Update anagraph failed');
    Guard.CheckFalse(FBookingRecord.AnagraphClient.AnagraphId.AsInteger = 0, 'AnagraphId = 0');
    Guard.CheckFalse(FBookingRecord.AnagraphClient.MainAddress.Id.AsInteger = 0, 'MainAddress.Id = 0');
    Guard.CheckFalse(FBookingRecord.AnagraphClient.ReturnAddress.Id.AsInteger = 0, 'ReturnAddress.Id = 0');
    Guard.CheckFalse(FBookingRecord.ServiceAnagraph.MainAddress.Id.AsInteger = 0, 'MainAddress.Id = 0');
{$ENDIF}
    FBookingRecord.CustomerID.AsInteger := FBookingRecord.AnagraphClient.AnagraphId.AsInteger;
    FBookingRecord.CustFirstName.AsString := FBookingRecord.AnagraphClient.AnName.AsString;
    FBookingRecord.CustLastName.AsString := FBookingRecord.AnagraphClient.AnLastName.AsString;
    FBookingRecord.CustCellular.AsString := FBookingRecord.AnagraphClient.AnCellular.AsString;
    FBookingRecord.CustEmail.AsString := FBookingRecord.AnagraphClient.AnEmail.AsString;
    FBookingRecord.FullAddress.AsString := FBookingRecord.AnagraphClient.AnFullAddress.AsString;

    FBookingRecord.DirectSaveToDataset(qryBooking { Dataset } , False { Force } );

    (*
      property AnagraphClient: IBookingAnagraphView read GetAnagraphClient;
      property ServiceAnagraph: IAnagraphView read GetServiceAnagraph;
      :p_from_latitude, :p_from_longitude, :p_from_full_address,
      :p_to_latitude, :p_to_longitude, :p_to_full_address
    *)

    if aSaveSlots then
      with FBookingRecord do
      begin
        for lTimeTableView in FPickupSlots do
          if lTimeTableView.Booked.AsBoolean then
          begin
            // SELECT ergomercator.carservice.carservice_book_jguid(:p_day, :p_slot_id, :p_pickup, :p_jguid)
            spBookPickup.ParamByName('p_day').AsDate := lTimeTableView.WorkingDay.AsDateTime;
            spBookPickup.ParamByName('p_slot_id').AsSmallint := lTimeTableView.SlotID.AsSmallint;
            spBookPickup.ParamByName('p_pickup').AsBoolean := True;
            spBookPickup.ParamByName('p_jguid').AsString := FBookingRecord.GUIDString;
            spBookPickup.ParamByName('p_from_id').AsInteger := AnagraphClient.MainAddress.Id.AsInteger;
            spBookPickup.ParamByName('p_from_latitude').AsFloat :=
              AnagraphClient.MainAddress.Latitude.AsFloat;
            spBookPickup.ParamByName('p_from_longitude').AsFloat :=
              AnagraphClient.MainAddress.Longitude.AsFloat;
            spBookPickup.ParamByName('p_from_full_address').AsString :=
              AnagraphClient.MainAddress.FullAddress.AsString;
            spBookPickup.ParamByName('p_to_id').AsInteger := ServiceAnagraph.MainAddress.Id.AsInteger;
            spBookPickup.ParamByName('p_to_latitude').AsFloat := ServiceAnagraph.MainAddress.Latitude.AsFloat;
            spBookPickup.ParamByName('p_to_longitude').AsFloat :=
              ServiceAnagraph.MainAddress.Longitude.AsFloat;
            spBookPickup.ParamByName('p_to_full_address').AsString :=
              ServiceAnagraph.MainAddress.FullAddress.AsString;
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
            spBookPickup.ParamByName('p_from_id').AsInteger := ServiceAnagraph.MainAddress.Id.AsInteger;
            spBookPickup.ParamByName('p_from_latitude').AsFloat :=
              ServiceAnagraph.MainAddress.Latitude.AsFloat;
            spBookPickup.ParamByName('p_from_longitude').AsFloat :=
              ServiceAnagraph.MainAddress.Longitude.AsFloat;
            spBookPickup.ParamByName('p_from_full_address').AsString :=
              ServiceAnagraph.MainAddress.FullAddress.AsString;
            spBookPickup.ParamByName('p_to_id').AsInteger := AnagraphClient.ReturnAddress.Id.AsInteger;
            spBookPickup.ParamByName('p_to_latitude').AsFloat :=
              AnagraphClient.ReturnAddress.Latitude.AsFloat;
            spBookPickup.ParamByName('p_to_longitude').AsFloat :=
              AnagraphClient.ReturnAddress.Longitude.AsFloat;
            spBookPickup.ParamByName('p_to_full_address').AsString :=
              AnagraphClient.ReturnAddress.FullAddress.AsString;
            spBookPickup.Execute;
          end;
      end;

    var
    lLog := ', "RecordCount" : ';
    qryBooking.Close;
    qryBooking.ParamByName('jguid').AsString := FBookingRecord.GUIDString;
    qryBooking.Open;
    lLog := lLog + qryBooking.RecordCount.ToString;

    if qryBooking.RecordCount > 0 then
      FBookingRecord.DirectLoadFromDataset(qryBooking)
    else
      raise Exception.Create('qryBooking no record found');

    qryPickupTimeTable.Close;
    qryPickupTimeTable.Open;
    Guard.CheckTrue(qryPickupTimeTable.RecordCount = 1,
      'qryPickup Record ' + qryPickupTimeTable.RecordCount.ToString);
    FBookingRecord.PickupDateTime.DirectLoadFromDataset(qryPickupTimeTable, False, False);
    lLog := lLog + ', "PickupCount" : ' + qryPickupTimeTable.RecordCount.ToString;

    if self.HasReturn then
    begin
      qryReturnTimeTable.Close;
      qryReturnTimeTable.Open;
      Guard.CheckTrue(qryReturnTimeTable.RecordCount = 1,
        'qryReturn Record ' + qryReturnTimeTable.RecordCount.ToString);
      FBookingRecord.DeliveryDateTime.DirectLoadFromDataset(qryReturnTimeTable, False, False);
      lLog := lLog + ', "DeliveryCount" : ' + qryReturnTimeTable.RecordCount.ToString;
    end;

    LogProc('DataModuleCreate', '{"level" : "INFO", "Booking" : ' + BoookingJsonSummary + lLog + '}', self);
  end;
end;

procedure TdmPgCarServiceBookingStorage.qryAccountBalanceBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  { SELECT * from carservice.account_balance(:p_customer_id) }
  qryAccountBalance.ParamByName('p_customer_id').AsInteger := FBookingRecord.OfficeID.AsInteger;
end;

procedure TdmPgCarServiceBookingStorage.qryBookingAmountBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  { SELECT * FROM carservice.booking_amount(:p_booking_id) }
  qryBookingAmount.ParamByName('p_booking_id').AsLargeInt := FBookingRecord.Id.AsLargeInt;
end;

procedure TdmPgCarServiceBookingStorage.qryBookingBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryBookingoffice_id.AsInteger := FUsersession.UserProfile.AnagraphId.AsInteger;
  if qryBookingstate_id.IsNull then
    qryBookingstate_id.AsInteger := 0;
  qryBookingbranch_id.AsInteger := FUsersession.UserProfile.AnagraphId.AsInteger;
  qryBookingdb_schema_id.AsInteger := PgErgoConnection.SchemaID;
  qryBookinguser_insert.AsInteger := FUsersession.UserProfile.Db_user_id.AsInteger;
end;

procedure TdmPgCarServiceBookingStorage.qryBookingPaymentBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  { SELECT * from carservice.booking_payment(:p_booking_id) }
  qryBookingPayment.ParamByName('p_booking_id').AsLargeInt := FBookingRecord.Id.AsLargeInt;
end;

procedure TdmPgCarServiceBookingStorage.qryBookingPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
var
  LJSONObject: TJSONObject;
begin
  inherited;
  LJSONObject := TUniQuery(DataSet).ToJSONObject(); // export a single record
  raise Exception.Create('"error" : { "message": "' + E.message + '", "Dataset" : "' + DataSet.Name +
    '"  , "sql" : "' + LJSONObject.ToJson + '", "record" : ' + LJSONObject.ToJson);
end;

procedure TdmPgCarServiceBookingStorage.qryCustomerVehiclesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  (*
    select distinct vehicle_model, vehicle_color, vehicle_numberplate
    from carservice.booking_head_view
    where customer_id = :customer_id;
  *)

  qryCustomerVehicles.ParamByName('customer_id').AsInteger := BookingRecord.CustomerID.AsInteger;
end;

procedure TdmPgCarServiceBookingStorage.qryDeliveryBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FBranchID := UserSession.UserProfile.AnagraphId.AsInteger;

  qryDelivery.ParamByName('booking_id').AsLargeInt := qryBookingid.AsLargeInt;
  if FFromBranch then
    qryDelivery.ParamByName('from_id').AsInteger := FCustomerID
  else
    qryDelivery.ParamByName('from_id').AsInteger := FBranchID;
  qryDelivery.ParamByName('pickupdate').AsDate := FDeliveryDate;
end;

procedure TdmPgCarServiceBookingStorage.qryDeliveryBeforePost(DataSet: TDataSet);
begin
  inherited;
  FBranchID := UserSession.UserProfile.AnagraphId.AsInteger;

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

procedure TdmPgCarServiceBookingStorage.qryLookupBranchesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryLookupBranches.ParamByName('office_id').AsInteger := FOfficeID;
{$IFDEF DEBUG}
  var
  vTest := qryLookupBranches.RecordCount;
{$ENDIF}
end;

procedure TdmPgCarServiceBookingStorage.qryLookupBranchesBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryLookupBranchesan_main_group_id.AsInteger := 28;
  qryLookupBranchesan_office_id.AsInteger := qryBookingoffice_id.AsInteger;
end;

procedure TdmPgCarServiceBookingStorage.qryLookupUsersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryLookupUsers.ParamByName('office_id').AsInteger := FOfficeID;
end;

procedure TdmPgCarServiceBookingStorage.qryPickupBeforeOpen(DataSet: TDataSet);
begin
  { select * from carservice.timetable_view v1
    where
    (booked and booking_id = :booking_id and from_id = :from_id)
    and workingday = :pickupdate }
  FBranchID := UserSession.UserProfile.AnagraphId.AsInteger;
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
  FBranchID := UserSession.UserProfile.AnagraphId.AsInteger;

  if qryPickupbooked.AsBoolean then
  begin
    qryPickupbooking_id.AsInteger := qryBookingid.AsInteger;
    if FFromBranch then
    begin
      qryPickupfrom_id.AsInteger := UserSession.UserProfile.AnagraphId.AsInteger { FBranchID };
      qryPickupto_id.AsInteger := FCustomerID;
    end
    else
    begin
      qryPickupfrom_id.AsInteger := FCustomerID;
      qryPickupto_id.AsInteger := UserSession.UserProfile.AnagraphId.AsInteger { FBranchID };
    end;
  end
end;

procedure TdmPgCarServiceBookingStorage.qryPickupTimeTableBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // booking_id = :booking_id and slot_id = :pickup_slot_id
  qryPickupTimeTable.ParamByName('booking_id').AsLargeInt := qryBookingid.AsInteger;
  qryPickupTimeTable.ParamByName('pickup_slot_id').AsInteger := qryBookingpickup_slot_id.AsInteger;
end;

procedure TdmPgCarServiceBookingStorage.qryReturnTimeTableBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // booking_id = :booking_id and slot_id = :return_slot_id
  qryReturnTimeTable.ParamByName('booking_id').AsLargeInt := qryBookingid.AsInteger;
  qryReturnTimeTable.ParamByName('return_slot_id').AsInteger := qryBookingreturn_slot_id.AsInteger;
end;

procedure TdmPgCarServiceBookingStorage.RefreshBooking;
begin
  var
  lLog := ', "RecordCount" : ';
  qryBooking.Close;
  qryBooking.ParamByName('jguid').AsString := FBookingRecord.GUIDString;
  qryBooking.Open;
  lLog := lLog + qryBooking.RecordCount.ToString;
  if qryBooking.IsEmpty then
  begin
    qryBooking.Append;
    qryBooking.FieldByName('jguid').AsString := FBookingRecord.GUIDString;
  end
  else
  begin
    RefreshDetails;
    if qryBooking.RecordCount > 0 then
      FBookingRecord.DirectLoadFromDataset(qryBooking);
  end;

  LogProc('RefreshBooking', '{"level" : "INFO", "Booking" : ' + BoookingJsonSummary + lLog + '}', self);
end;

procedure TdmPgCarServiceBookingStorage.RefreshDetails;
begin
  inherited;
  SearchTimetable;
end;

procedure TdmPgCarServiceBookingStorage.RegisterPickupDeliverySlots;
var
  lTimeTableSlot: ItimetableSlot;
  lLog: string;
begin
  for lTimeTableSlot in FPickupSlots do
    if lTimeTableSlot.Booked.AsBoolean then
    begin
      FBookingRecord.PickupDateTime.MasterBooking := FBookingRecord;
      FBookingRecord.PickupDateTime.Append;
      FBookingRecord.PickupDateTime.Assign(lTimeTableSlot);
      FBookingRecord.PickupDateTime.BookingId.AsInteger := FBookingRecord.Id.AsInteger;
      FBookingRecord.PickupDateTime.FromId.AsInteger :=
        FBookingRecord.AnagraphClient.MainAddress.Id.AsInteger;
      FBookingRecord.PickupDateTime.ToId.AsInteger := FBookingRecord.ServiceAnagraph.MainAddress.Id.AsInteger;
      FBookingRecord.PickupDateTime.Direction := 0;
      lLog := ', "pickub_booked" : true, "from_id" : ' + FBookingRecord.PickupDateTime.FromId.AsString;
    end;

  for lTimeTableSlot in FDeliverySlots do
    if lTimeTableSlot.Booked.AsBoolean then
    begin
      FBookingRecord.DeliveryDateTime.MasterBooking := FBookingRecord;
      FBookingRecord.DeliveryDateTime.Append;
      FBookingRecord.DeliveryDateTime.Assign(lTimeTableSlot);
      FBookingRecord.DeliveryDateTime.BookingId.AsInteger := FBookingRecord.Id.AsInteger;
      FBookingRecord.DeliveryDateTime.FromId.AsInteger :=
        FBookingRecord.ServiceAnagraph.MainAddress.Id.AsInteger;
      FBookingRecord.DeliveryDateTime.ToId.AsInteger :=
        FBookingRecord.AnagraphClient.MainAddress.Id.AsInteger;
      FBookingRecord.DeliveryDateTime.Direction := 1;
      lLog := lLog + ', "return_booked" : true, "from_id" : ' + FBookingRecord.PickupDateTime.FromId.AsString;
    end;

  LogProc('AppendRecord', '{"level" : "INFO", "Booking" : ' + BoookingJsonSummary + lLog + '}', self);
end;

procedure TdmPgCarServiceBookingStorage.SaveErrorLog;
begin
  TJanuaLogger.SaveLogToFile(DateFile(Date) + FBookingRecord.GUIDString + '.err');
end;

procedure TdmPgCarServiceBookingStorage.SearchBooking(const aGUID: string);
begin
  var
  lLog := ', "RecordCount" : ';
  qryBooking.Close;
  qryBooking.ParamByName('jguid').AsString := aGUID;
  qryBooking.Open;
  lLog := lLog + qryBooking.RecordCount.ToString;
  if qryBooking.RecordCount > 0 then
  begin
    RefreshDetails;
    if qryBooking.RecordCount > 0 then
      FBookingRecord.DirectLoadFromDataset(qryBooking);
  end;
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

  if HasReturn then
    FCSCustomerMailBuilder.SendMailMessage
  else
    FCSCustomerMailNRBuilder.SendMailMessage;

  FCSDriverMailBuilder2.SendMailMessage;
end;

procedure TdmPgCarServiceBookingStorage.SendSMSBookingConfirmation;
begin
  SetupSMSBookingConfirmation;
  FCSDriverSMSBuilder1.SendSMS(qryBooking, nil,
    procedure(E: Exception; aMessage: string)
    begin
      TJanuaLogger.LogError('DriverSMSBuilder1.SendSMS', aMessage, self, E);
    end, nil);
  FCSDriverSMSBuilder2.SendSMS(qryBooking, nil,
    procedure(E: Exception; aMessage: string)
    begin
      TJanuaLogger.LogError('DriverSMSBuilder2.SendSMS', aMessage, self, E);
    end, nil);
  FCSCustomerSMSBuilder.SendSMS(qryBooking, nil,
    procedure(E: Exception; aMessage: string)
    begin
      TJanuaLogger.LogError('CustomerSMSBuilder.SendSMS', aMessage, self, E);
    end, nil);
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

procedure TdmPgCarServiceBookingStorage.SetBranchesList(const Value: IAnagraphViews);
begin
  FBranchesList := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetCustomerID(const Value: Integer);
begin
  FCustomerID := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetDeliveryDate(const Value: TNullableDate);
begin
  FDeliveryDate := Value;
  if FDeliveryDate.HasValue then
  begin
    FBookingRecord.ReturnDay.Clear;
    FBookingRecord.DeliveryDateTime.Clear;
  end
  else
    FBookingRecord.ReturnDay.AsDateTime := FDeliveryDate
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
  FBookingRecord.Append;
  FBookingRecord.GUID := Value;
  RefreshBooking;
end;

procedure TdmPgCarServiceBookingStorage.SetHasReturn(const Value: Boolean);
begin
  FBookingRecord.HasReturn := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetLandingMsgBuilder(const Value: IJanuaCSBookingLandingMsgBuilder);
begin
  FLandingMsgBuilder := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetOfficeID(const Value: Integer);
begin
  if FOfficeID <> Value then
  begin
    FOfficeID := Value;
    // **** Apro : Lista Branch, Lista Customers e Scheda Ufficio
    UpdateOfficeConfiguration;
  end;
end;

procedure TdmPgCarServiceBookingStorage.SetPickuList(const Value: ItimetableSlots);
begin
  FPickupList := Value;
end;

procedure TdmPgCarServiceBookingStorage.SetPickupDate(const Value: TNullableDate);
begin
  FPickupDate := Value;
  if FPickupDate.HasValue then
    BookingRecord.PickupDate.AsDateTime := FPickupDate
  else
    BookingRecord.PickupDate.Clear;
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
{$IFDEF JANUATEST} FCSCustomerMailBuilder.sTo := 'riccardoarduino@me.com'; {$ENDIF}
  end;

  // FCSCustomerMailNRBuilder: IJanuaCSCustomerMailNRBuilder; ------------------------------------------------
  if not Assigned(FCSCustomerMailNRBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailNRBuilder, FCSCustomerMailNRBuilder);
    FCSCustomerMailNRBuilder.DataSet := qryBooking;
    FCSCustomerMailNRBuilder.MailSender := FGridMailSender;
    FCSCustomerMailNRBuilder.LogProc := LogProc;
    FCSCustomerMailNRBuilder.LoadSettings;
{$IFDEF JANUATEST} FCSCustomerMailNRBuilder.sTo := 'riccardoarduino@me.com'; {$ENDIF}
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSDriverMailBuilder1) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder1, FCSDriverMailBuilder1);
    FCSDriverMailBuilder1.DataSet := qryBooking;
    FCSDriverMailBuilder1.MailSender := FGridMailSender;
    FCSDriverMailBuilder1.LogProc := LogProc;
    FCSDriverMailBuilder1.LoadSettings;
{$IFDEF JANUATEST} FCSDriverMailBuilder1.sTo := 'riccardoarduino@me.com'; {$ENDIF}
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSDriverMailBuilder2) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder2, FCSDriverMailBuilder2);
    FCSDriverMailBuilder2.DataSet := qryBooking;
    FCSDriverMailBuilder2.MailSender := FGridMailSender;
    FCSDriverMailBuilder2.LogProc := LogProc;
    FCSDriverMailBuilder2.LoadSettings;
{$IFDEF JANUATEST} FCSDriverMailBuilder2.sTo := 'riccardoarduino@me.com'; {$ENDIF}
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSBackOfficeMailBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSBackOfficeMailBuilder, FCSBackOfficeMailBuilder);
    FCSBackOfficeMailBuilder.DataSet := qryBooking;
    FCSBackOfficeMailBuilder.MailSender := FGridMailSender;
    FCSBackOfficeMailBuilder.LogProc := LogProc;
    FCSBackOfficeMailBuilder.LoadSettings;
{$IFDEF JANUATEST} FCSBackOfficeMailBuilder.sTo := 'riccardoarduino@me.com'; {$ENDIF}
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSServiceMailBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSServiceMailBuilder, FCSServiceMailBuilder);
    FCSServiceMailBuilder.DataSet := qryBooking;
    FCSServiceMailBuilder.MailSender := FGridMailSender;
    FCSServiceMailBuilder.LogProc := LogProc;
    FCSServiceMailBuilder.LoadSettings;
{$IFDEF JANUATEST} FCSServiceMailBuilder.sTo := 'riccardoarduino@me.com'; {$ENDIF}
  end;

  // FCSDriverMailBuilder1: IJanuaCSDriverMailBuilder1;
  FCSDriverMailBuilder1.AfterMessageSent := OnCSDriver1MailSent;
  // FCSCustomerMailBuilder: IJanuaCSCustomerMailBuilder;
  // FCSCustomerMailNRBuilder: IJanuaCSCustomerMailNRBuilder;
  FCSCustomerMailBuilder.AfterMessageSent := OnCSCustomerMailSent;
  // FCSDriverMailBuilder2: IJanuaCSDriverMailBuilder2;
  FCSDriverMailBuilder2.AfterMessageSent := OnCSDriver2MailSent;

  // FCSServiceMailBuilder: IJanuaCSServiceMailBuilder;
  FCSServiceMailBuilder.AfterMessageSent := OnCSServiceMailSent;
  // FCSBackOfficeMailBuilder: IJanuaCSBackOfficeMailBuilder;
  FCSBackOfficeMailBuilder.AfterMessageSent := OnCSBackOfficMailSent;
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
    FCSCustomerSMSBuilder.LogProc := LogProc;
    FCSCustomerSMSBuilder.SMSSender := FCSSMSSender;
    FCSCustomerSMSBuilder.LoadSettings;
{$IFDEF JANUATEST}FCSCustomerSMSBuilder.sTo := '+393409111351'; {$ENDIF}
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSDriverSMSBuilder1) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder1, FCSDriverSMSBuilder1);
    FCSDriverSMSBuilder1.DataSet := qryBooking;
    FCSDriverSMSBuilder1.LogProc := LogProc;
    FCSDriverSMSBuilder1.SMSSender := FCSSMSSender;
    FCSDriverSMSBuilder1.LoadSettings;
{$IFDEF JANUATEST}FCSDriverSMSBuilder1.sTo := '+393409111351'; {$ENDIF}
  end;

  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSDriverSMSBuilder2) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder2, FCSDriverSMSBuilder2);
    FCSDriverSMSBuilder2.DataSet := qryBooking;
    FCSDriverSMSBuilder2.LogProc := LogProc;
    FCSDriverSMSBuilder2.SMSSender := FCSSMSSender;
    FCSDriverSMSBuilder2.LoadSettings;
{$IFDEF JANUATEST}FCSDriverSMSBuilder2.sTo := '+393409111351'; {$ENDIF}
  end;

  // FCSDriverSMSBuilder1: IJanuaCSDriverSMSBuilder1;
  FCSDriverSMSBuilder1.AfterMessageSent := OnCSDriver1SMSSent;
  // FCSDriverSMSBuilder2: IJanuaCSDriverSMSBuilder2;
  FCSDriverSMSBuilder2.AfterMessageSent := OnCSDriver2SMSSent;
  // FCSCustomerSMSBuilder: IJanuaCSCustomerSMSBuilder;
  FCSCustomerSMSBuilder.AfterMessageSent := OnCSCustomerSMSSent;

end;

procedure TdmPgCarServiceBookingStorage.SetUserProfile(const Value: IUserProfile);
begin
  if (FUserProfile <> Value) then
  begin
    FUserProfile := Value;
    if Assigned(FUserProfile) then
    begin
      SetOfficeID(FUserProfile.AnagraphId.AsInteger);
      FBookingRecord.ServiceAnagraph.Assign(FUserProfile.AnagraphProfile);
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

    if FUsersession.UserProfile.AnagraphId.AsInteger = 0 then
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

procedure TdmPgCarServiceBookingStorage.UpdateAccountBalance;
begin
  qryAccountBalance.Close;
  qryAccountBalance.Open;
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
      lTimeTableView.OnRecordChange := self.OnDeliveryTimeSlotChange;
      FDeliverySlots.Add(lTimeTableView);
      FDeliveryList.Next;
    end;
  end;

end;

procedure TdmPgCarServiceBookingStorage.UpdateOfficeConfiguration;
begin
  if FOfficeID <> 0 then
  begin
    qryOffice.Close;
    qryOffice.ParamByName('office_id').AsInteger := FOfficeID;
    qryOffice.Open;
    var
    bOfficeFound := qryOffice.RecordCount > 0;

    qryLookupUsers.Close;
    qryLookupUsers.ParamByName('office_id').AsInteger := FOfficeID;
    qryLookupUsers.Open;
{$IFDEF DEBUG}
    var
    i := qryLookupUsers.RecordCount;
{$ENDIF}
    UsersList.DirectLoadFromDataset(qryLookupUsers);
{$IFDEF DEBUG}
    i := UsersList.RecordCount;
{$ENDIF}
    qryLookupBranches.Close;
    qryLookupBranches.ParamByName('office_id').AsInteger := FOfficeID;
    qryLookupBranches.Open;
    var
    bHasBranches := qryLookupBranches.RecordCount > 0;

    if bHasBranches then
      BranchesList.DirectLoadFromDataset(qryLookupBranches);

    OfficeUpdate;

  end
  else
  begin
    UsersList.Clear;
  end;
end;

procedure TdmPgCarServiceBookingStorage.UpdatePickup;
begin
  spBookPickup.ParamByName('p_day').AsDate := BookingRecord.PickupDateTime.WorkingDay.AsDateTime;
  spBookPickup.ParamByName('p_slot_id').AsSmallint := BookingRecord.PickupDateTime.SlotID.AsSmallint;
  spBookPickup.ParamByName('p_pickup').AsBoolean := True;
  spBookPickup.ParamByName('p_jguid').AsString := FBookingRecord.GUIDString;
  spBookPickup.ParamByName('p_from_id').AsInteger := BookingRecord.PickupDateTime.FromId.AsInteger;
  spBookPickup.ParamByName('p_from_latitude').AsFloat := BookingRecord.PickupDateTime.FromLatitude.AsFloat;
  spBookPickup.ParamByName('p_from_longitude').AsFloat := BookingRecord.PickupDateTime.FromLongitude.AsFloat;
  spBookPickup.ParamByName('p_from_full_address').AsString :=
    BookingRecord.PickupDateTime.FromFullAddress.AsString;
  spBookPickup.ParamByName('p_to_id').AsInteger := BookingRecord.PickupDateTime.ToId.AsInteger;
  spBookPickup.ParamByName('p_to_latitude').AsFloat := BookingRecord.PickupDateTime.ToLatitude.AsFloat;
  spBookPickup.ParamByName('p_to_longitude').AsFloat := BookingRecord.PickupDateTime.ToLongitude.AsFloat;
  spBookPickup.ParamByName('p_to_full_address').AsString :=
    BookingRecord.PickupDateTime.ToFullAddress.AsString;
  spBookPickup.Execute;
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

procedure TdmPgCarServiceBookingStorage.UpdateReturn;
begin
  spBookPickup.ParamByName('p_day').AsDate := BookingRecord.DeliveryDateTime.WorkingDay.AsDateTime;
  spBookPickup.ParamByName('p_slot_id').AsSmallint := BookingRecord.DeliveryDateTime.SlotID.AsSmallint;
  spBookPickup.ParamByName('p_Return').AsBoolean := True;
  spBookPickup.ParamByName('p_jguid').AsString := FBookingRecord.GUIDString;
  spBookPickup.ParamByName('p_from_id').AsInteger := BookingRecord.DeliveryDateTime.FromId.AsInteger;
  spBookPickup.ParamByName('p_from_latitude').AsFloat := BookingRecord.DeliveryDateTime.FromLatitude.AsFloat;
  spBookPickup.ParamByName('p_from_longitude').AsFloat :=
    BookingRecord.DeliveryDateTime.FromLongitude.AsFloat;
  spBookPickup.ParamByName('p_from_full_address').AsString :=
    BookingRecord.DeliveryDateTime.FromFullAddress.AsString;
  spBookPickup.ParamByName('p_to_id').AsInteger := BookingRecord.DeliveryDateTime.ToId.AsInteger;
  spBookPickup.ParamByName('p_to_latitude').AsFloat := BookingRecord.DeliveryDateTime.ToLatitude.AsFloat;
  spBookPickup.ParamByName('p_to_longitude').AsFloat := BookingRecord.DeliveryDateTime.ToLongitude.AsFloat;
  spBookPickup.ParamByName('p_to_full_address').AsString :=
    BookingRecord.DeliveryDateTime.ToFullAddress.AsString;
  spBookPickup.Execute;
end;

end.
