unit Janua.CarService.PgRemoteDrivers;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS, DAScript, UniScript,
  // JOrm.Documents.Impl Booking
  JOrm.CarService.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  // Januaproject
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Core.DB.Intf, Janua.Uni.Intf,
  Janua.Orm.Intf, JOrm.System.Intf,
  // Janua DataModule
  udmPgStorage, Janua.Unidac.Connection,
  // CarService
  Janua.CarService.Driver.ViewModel.Intf, Janua.CarService.Driver.Model.Impl, Janua.CarService.Commons;

type
  TdmCarServicePgRemoteDrivers = class(TdmPgStorage, IJanuaDataModule, IJanuaBindable)
    qryDriverCalendar: TUniQuery;
    qryDriverCalendartitle: TWideStringField;
    qryDriverCalendarrownum: TLargeintField;
    qryDriverCalendarjguid: TGuidField;
    qryDriverCalendarworkingday: TDateField;
    qryDriverCalendarslot_id: TSmallintField;
    qryDriverCalendarbooking_id: TLargeintField;
    qryDriverCalendarfrom_id: TIntegerField;
    qryDriverCalendarto_id: TIntegerField;
    qryDriverCalendarstate_id: TSmallintField;
    qryDriverCalendarslot_des: TWideStringField;
    qryDriverCalendarbooked: TBooleanField;
    qryDriverCalendardriver_anagraph_id: TIntegerField;
    qryDriverCalendaran_cellular: TWideStringField;
    qryDriverCalendardriver_name: TWideMemoField;
    qryDriverCalendaran_email: TWideStringField;
    qryDriverCalendarfrom_latitude: TFloatField;
    qryDriverCalendarfrom_longitude: TFloatField;
    qryDriverCalendarfrom_full_address: TWideStringField;
    qryDriverCalendarto_latitude: TFloatField;
    qryDriverCalendarto_longitude: TFloatField;
    qryDriverCalendarto_full_address: TWideStringField;
    qryDriverCalendarfrom_cellular: TWideStringField;
    qryDriverCalendarfrom_email: TWideStringField;
    qryDriverCalendarfrom_name: TWideMemoField;
    qryDriverCalendarto_cellular: TWideStringField;
    qryDriverCalendarto_email: TWideStringField;
    qryDriverCalendarto_name: TWideMemoField;
    qryTimeTableRecord: TUniQuery;
    qryTimeTableRecordpickup_an_id: TIntegerField;
    qryTimeTableRecordpickup_first_name: TWideStringField;
    qryTimeTableRecordpickup_vat_id: TSmallintField;
    qryTimeTableRecordpickup_address: TWideStringField;
    qryTimeTableRecordpickup_postal_code: TWideStringField;
    qryTimeTableRecordpickup_fiscal_code: TWideStringField;
    qryTimeTableRecordpickup_town: TWideStringField;
    qryTimeTableRecordpickup_last_name: TWideStringField;
    qryTimeTableRecordpickup_full_address: TWideMemoField;
    qryTimeTableRecordpickup_phone: TWideStringField;
    qryTimeTableRecordpickup_email: TWideStringField;
    qryTimeTableRecordpickup_cellular: TWideStringField;
    qryTimeTableRecorddelivery_an_id: TIntegerField;
    qryTimeTableRecorddelivery_first_name: TWideStringField;
    qryTimeTableRecorddelivery_vat_id: TSmallintField;
    qryTimeTableRecorddelivery_address: TWideStringField;
    qryTimeTableRecorddelivery_postal_code: TWideStringField;
    qryTimeTableRecorddelivery_fiscal_code: TWideStringField;
    qryTimeTableRecorddelivery_town: TWideStringField;
    qryTimeTableRecorddelivery_last_name: TWideStringField;
    qryTimeTableRecorddelivery_full_address: TWideMemoField;
    qryTimeTableRecorddelivery_phone: TWideStringField;
    qryTimeTableRecorddelivery_email: TWideStringField;
    qryTimeTableRecorddelivery_cellular: TWideStringField;
    qryTimeTableRecordjguid: TGuidField;
    qryTimeTableRecordpickup_time: TWideStringField;
    qryTimeTableRecordpickup_date: TDateField;
    qryTimeTableRecorddriver_id: TIntegerField;
    qryTimeTableRecordbooking_id: TLargeintField;
    qryTimeTableRecorddriver_email: TWideStringField;
    qryTimeTableRecorddriver1_cellular: TWideStringField;
    qryTimeTableRecorddriver_jguid: TGuidField;
    qryTimeTableRecordslot_id: TSmallintField;
    qryTimeTableRecordvehicle_numberplate: TWideStringField;
    qryTimeTableRecordvehicle_model: TWideStringField;
    qryTimeTableRecordvehicle_color: TWideStringField;
    qryTimeTableRecordpickup_day: TDateField;
    qryTimeTableRecordpickup_slot_id: TSmallintField;
    qryTimeTableRecordreturn_day: TDateField;
    qryTimetableMessages: TUniQuery;
    qryTimetableMessagesrownum: TLargeintField;
    qryTimetableMessagestitle: TWideMemoField;
    qryTimetableMessagessubtitle: TWideMemoField;
    qryTimetableMessagesid: TIntegerField;
    qryTimetableMessagesdb_schema_id: TIntegerField;
    qryTimetableMessagesjguid: TGuidField;
    qryTimetableMessagesdeleted: TBooleanField;
    qryTimetableMessagesinsert_date: TDateTimeField;
    qryTimetableMessagesupdate_date: TDateTimeField;
    qryTimetableMessagesuser_insert: TWideStringField;
    qryTimetableMessagesuser_update: TWideStringField;
    qryTimetableMessagesanagraph_id: TIntegerField;
    qryTimetableMessagesdb_user_id: TIntegerField;
    qryTimetableMessagesmsgtype: TIntegerField;
    qryTimetableMessagesmsgtext: TWideMemoField;
    qryTimetableMessagesjson: TWideMemoField;
    qryTimetableMessagesbooking_jguid: TGuidField;
    qryTimetableMessagestimetable_jguid: TGuidField;
    spUpdateCalendar: TUniStoredProc;
    spChangeBookDriver: TUniStoredProc;
    spConfirmBooking: TUniStoredProc;
    qryMessages: TUniQuery;
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
    qryMessagesmsgtext: TWideMemoField;
    qryMessagesjson: TWideMemoField;
    qryMessagesbooking_jguid: TGuidField;
    qryMessagestimetable_jguid: TGuidField;
    qryMessagesrownum: TLargeintField;
    qryMessagestitle: TWideStringField;
    qryMessagessubtitle: TWideStringField;
    qryTimeTableRecorddriver_anagraph_id: TIntegerField;
    qryTimeTableRecordworkingday: TDateField;
    qryTimeTableRecordslot_des: TWideStringField;
    qryTimeTableRecordstate_id: TSmallintField;
    qryTimeTableRecordbooked: TBooleanField;
    qryTimeTableRecordto_latitude: TFloatField;
    qryTimeTableRecordto_longitude: TFloatField;
    qryTimeTableRecordto_full_address: TWideStringField;
    qryTimeTableRecordfrom_latitude: TFloatField;
    qryTimeTableRecordfrom_longitude: TFloatField;
    qryTimeTableRecordfrom_full_address: TWideStringField;
    procedure qryTimeTableRecordAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure RefreshDetails; override;
  end;

  TJanuaPgDriversDataModule = class(TJanuaCustomDriversDataModule, IJanuaCSDriversDataModule)
  private
    { Private declarations }
    FDM: TdmCarServicePgRemoteDrivers;
  protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmCarServicePgRemoteDrivers: TdmCarServicePgRemoteDrivers;

implementation

uses System.StrUtils, Janua.Application.Framework, Janua.Orm.Unidac;
{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

{ TJanuaPgDriversDataModule }
constructor TJanuaPgDriversDataModule.Create;
begin
  inherited;
end;

destructor TJanuaPgDriversDataModule.Destroy;
begin
  if Assigned(FDM) then
  begin
    FDM.Free;
    FDM := nil;
  end;
  inherited;
end;

procedure TJanuaPgDriversDataModule.GetInternalCreate;
begin
  inherited;
  FInternalCreate := procedure
    begin
      FDM := TdmCarServicePgRemoteDrivers.Create(nil);
      try
        SetMainDataModule(FDM);
        SetjdsCalendar(TJanuaPgDataset.Create(FDM.qryDriverCalendar, [TJanuaEntity.DocHeads]));
        SetjdsTimeTable(TJanuaPgDataset.Create(FDM.qryTimeTableRecord, [TJanuaEntity.DocHeads]));
        SetjdsTimeTableMessages(TJanuaPgDataset.Create(FDM.qryTimetableMessages, [TJanuaEntity.DocHeads]));
        { spUpdateCalendar: TUniStoredProc; }
        SetjspUpdateCalendar(TJanuaPgStoredProcedure.Create(FDM.spUpdateCalendar, []));
        { spChangeBookDriver: TUniStoredProc; }
        SetjspChangeBookDriver(TJanuaPgStoredProcedure.Create(FDM.spChangeBookDriver, []));
        { spConfirmBooking: TUniStoredProc; }
        SetjspConfirmBooking(TJanuaPgStoredProcedure.Create(FDM.spConfirmBooking, []));
        { qryMessages: TUniQuery; }
        SetjdsMessages(TJanuaPgDataset.Create(FDM.qryMessages, [TJanuaEntity.DocHeads]))
      except
        on e: exception do
          Raise exception.Create(ClassName + 'FInternalCreate: ' + e.Message);
      end;
    end;
end;

procedure TdmCarServicePgRemoteDrivers.qryTimeTableRecordAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryTimetableMessages.Close;
  qryTimetableMessages.ParamByName('jguid').AsGuid := qryTimeTableRecordjguid.AsGuid;
  qryTimetableMessages.Open;
end;

procedure TdmCarServicePgRemoteDrivers.RefreshDetails;
begin
  inherited;
  // no Details to Refresh
end;

end.
