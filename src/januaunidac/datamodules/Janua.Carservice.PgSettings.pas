unit Janua.Carservice.PgSettings;

interface

uses
  System.SysUtils, System.Classes,
  // Db
  PostgreSQLUniProvider, Data.DB, Uni, MemDS, DBAccess,
  // Janua Project DB Classes
  Janua.Core.DB.Types, Janua.Core.DB.Intf, Janua.Uni.Intf,
  // Janua Project Core Classes
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf,
  Janua.Core.Types, Janua.Core.Entities, Janua.Core.DataModule, Janua.Core.System, Janua.Core.Exceptions,
  UniProvider, Janua.Unidac.Connection,
  // Forms and Libs
  udmPgStorage, DAScript, UniScript;

type
  TdmCarserviceUniPgSettings = class(TdmPgStorage, IJanuaDataModule, IJanuaBindable)
    qryConfigTimetable: TUniQuery;
    qryConfiguration: TUniQuery;
    qryConfigurationdb_schema_id: TIntegerField;
    qryConfigurationkey: TWideStringField;
    qryConfigurationconf: TWideMemoField;
    qryConfigurationjguid: TGuidField;
    qryConfigurationdeleted: TBooleanField;
    qryTimeTable: TUniQuery;
    DateField1: TDateField;
    SmallintField1: TSmallintField;
    LargeintField1: TLargeintField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField2: TSmallintField;
    BooleanField1: TBooleanField;
    WideStringField1: TWideStringField;
    GuidField1: TGuidField;
    qryTimeTabledriver_anagraph_id: TIntegerField;
    qryTimeTablean_cellular: TWideStringField;
    qryTimeTablepickup_an_id: TIntegerField;
    qryTimeTablepickup_first_name: TWideStringField;
    qryTimeTablepickup_vat_id: TSmallintField;
    qryTimeTablepickup_address: TWideStringField;
    qryTimeTablepickup_postal_code: TWideStringField;
    qryTimeTablepickup_fiscal_code: TWideStringField;
    qryTimeTablepickup_town: TWideStringField;
    qryTimeTablepickup_last_name: TWideStringField;
    qryTimeTablepickup_full_address: TWideMemoField;
    qryTimeTablepickup_phone: TWideStringField;
    qryTimeTablepickup_email: TWideStringField;
    qryTimeTablepickup_cellular: TWideStringField;
    qryTimeTabledelivery_an_id: TIntegerField;
    qryTimeTabledelivery_first_name: TWideStringField;
    qryTimeTabledelivery_vat_id: TSmallintField;
    qryTimeTabledelivery_address: TWideStringField;
    qryTimeTabledelivery_postal_code: TWideStringField;
    qryTimeTabledelivery_fiscal_code: TWideStringField;
    qryTimeTabledelivery_town: TWideStringField;
    qryTimeTabledelivery_last_name: TWideStringField;
    qryTimeTabledelivery_full_address: TWideMemoField;
    qryTimeTabledelivery_phone: TWideStringField;
    qryTimeTabledelivery_email: TWideStringField;
    qryTimeTabledelivery_cellular: TWideStringField;
    qryTimeTablepickup_time: TWideStringField;
    qryTimeTablepickup_date: TDateField;
    qryTimeTabledriver_id: TIntegerField;
    qryTimeTabledriver_email: TWideStringField;
    qryTimeTabledriver1_cellular: TWideStringField;
    qryTimeTabledriver_jguid: TGuidField;
    qryTimeTablevehicle_numberplate: TWideStringField;
    qryTimeTablevehicle_model: TWideStringField;
    qryTimeTablevehicle_color: TWideStringField;
    qryTimeTablepickup_day: TDateField;
    qryTimeTablepickup_slot_id: TSmallintField;
    qryTimeTablereturn_day: TDateField;
    qryBooking: TUniQuery;
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
    qryConfigTimetablepickup_an_id: TIntegerField;
    qryConfigTimetablepickup_first_name: TWideStringField;
    qryConfigTimetablepickup_vat_id: TSmallintField;
    qryConfigTimetablepickup_address: TWideStringField;
    qryConfigTimetablepickup_postal_code: TWideStringField;
    qryConfigTimetablepickup_fiscal_code: TWideStringField;
    qryConfigTimetablepickup_town: TWideStringField;
    qryConfigTimetablepickup_last_name: TWideStringField;
    qryConfigTimetablepickup_full_address: TWideMemoField;
    qryConfigTimetablepickup_phone: TWideStringField;
    qryConfigTimetablepickup_email: TWideStringField;
    qryConfigTimetablepickup_cellular: TWideStringField;
    qryConfigTimetabledelivery_an_id: TIntegerField;
    qryConfigTimetabledelivery_first_name: TWideStringField;
    qryConfigTimetabledelivery_vat_id: TSmallintField;
    qryConfigTimetabledelivery_address: TWideStringField;
    qryConfigTimetabledelivery_postal_code: TWideStringField;
    qryConfigTimetabledelivery_fiscal_code: TWideStringField;
    qryConfigTimetabledelivery_town: TWideStringField;
    qryConfigTimetabledelivery_last_name: TWideStringField;
    qryConfigTimetabledelivery_full_address: TWideMemoField;
    qryConfigTimetabledelivery_phone: TWideStringField;
    qryConfigTimetabledelivery_email: TWideStringField;
    qryConfigTimetabledelivery_cellular: TWideStringField;
    qryConfigTimetablejguid: TGuidField;
    qryConfigTimetablepickup_time: TWideStringField;
    qryConfigTimetablepickup_date: TDateField;
    qryConfigTimetabledriver_id: TIntegerField;
    qryConfigTimetablebooking_id: TLargeintField;
    qryConfigTimetabledriver_email: TWideStringField;
    qryConfigTimetabledriver1_cellular: TWideStringField;
    qryConfigTimetabledriver_jguid: TGuidField;
    qryConfigTimetableslot_id: TSmallintField;
    qryConfigTimetablevehicle_numberplate: TWideStringField;
    qryConfigTimetablevehicle_model: TWideStringField;
    qryConfigTimetablevehicle_color: TWideStringField;
    qryConfigTimetablepickup_day: TDateField;
    qryConfigTimetablepickup_slot_id: TSmallintField;
    qryConfigTimetablereturn_day: TDateField;
    qryBookingpickup_slot_delivery: TWideStringField;
    qryBookingreturn_slot_delivery: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

var
  dmCarserviceUniPgSettings: TdmCarserviceUniPgSettings;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmCarserviceUniPgSettings }

procedure TdmCarserviceUniPgSettings.RefreshDetails;
begin
  inherited;
  qryTimeTable.Close;
  qryTimeTable.Open;
end;

end.
