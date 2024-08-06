unit Janua.Carservice.Driver.Model.Impl;

interface

uses
  // RTL
  System.SysUtils, Data.DB, Janua.Core.Classes, Janua.Core.DB.Types, Janua.Core.Types,
  // Interfaces
  Janua.ViewModels.Intf, Janua.Carservice.Driver.ViewModel.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf,
  // JOrm
  JOrm.Shipping.Intf, JOrm.Documents.Intf, JOrm.Anagraph.Intf, JOrm.Items.Intf,
  JOrm.Carservice.Booking.Intf, JOrm.Carservice.BookingHeadView.Custom.Intf,
  JOrm.Carservice.TimetableView.Custom.Intf,
  // Januaproject
  Janua.Models.Templates;

type
  TJanuaCustomDriversDataModule = class(TJanuaDataModuleTemplate, IJanuaCSDriversDataModule)
  private
    FjdsCalendar: IJanuaDBDataset;
    FjdsTimeTable: IJanuaDBDataset;
    FjdsTimeTableMessages: IJanuaDBDataset;
    FjdsMessages: IJanuaDBDataset;
    FjspConfirmBooking: IJanuaDBStoredProcedure;
    FjspUpdateCalendar: IJanuaDBStoredProcedure;
    FjspChangeBookDriver: IJanuaDBStoredProcedure;
  strict protected
    procedure SetjdsCalendar(const Value: IJanuaDBDataset);
    procedure SetjdsTimeTable(const Value: IJanuaDBDataset);
    procedure SetjdsMessages(const Value: IJanuaDBDataset);
    procedure SetjdsTimeTableMessages(const Value: IJanuaDBDataset);
    procedure SetjspConfirmBooking(const Value: IJanuaDBStoredProcedure);
    procedure SetjspUpdateCalendar(const Value: IJanuaDBStoredProcedure);
    procedure SetjspChangeBookDriver(const Value: IJanuaDBStoredProcedure);
  protected
    function GetjdsCalendar: IJanuaDBDataset;
    function GetjdsTimeTable: IJanuaDBDataset;
    function GetjdsMessages: IJanuaDBDataset;
    function GetjdsTimeTableMessages: IJanuaDBDataset;
    function GetjspConfirmBooking: IJanuaDBStoredProcedure;
    function GetjspUpdateCalendar: IJanuaDBStoredProcedure;
    function GetjspChangeBookDriver: IJanuaDBStoredProcedure;
  public
    property jdsCalendar: IJanuaDBDataset read GetjdsCalendar write SetjdsCalendar;
    property jdsTimeTable: IJanuaDBDataset read GetjdsTimeTable write SetjdsTimeTable;
    property jdsTimeTableMessages: IJanuaDBDataset read GetjdsTimeTableMessages;
    property jdsMessages: IJanuaDBDataset read GetjdsMessages;
    // IJanuaDBStoredProcedure
    { spUpdateCalendar: TUniStoredProc; }
    property jspUpdateCalendar: IJanuaDBStoredProcedure read GetjspUpdateCalendar;
    { spChangeBookDriver: TUniStoredProc; }
    property jspChangeBookDriver: IJanuaDBStoredProcedure read GetjspChangeBookDriver;
    { spConfirmBooking: TUniStoredProc; }
    property jspConfirmBooking: IJanuaDBStoredProcedure read GetjspConfirmBooking;
  public
    /// <summary> Boolean change_book_driver(:p_day, :p_slot_id, :p_booking_id, :p_driver_id) </summary>
    function ChangeBookDriver(const aDay: TDate; aSlotID: Word; aBookingID: Int64;
      aDriverID: Integer): Boolean;

    function ChangeTimeTableDriver(const aJGUID: TGUID): Boolean;

    /// <summary> Boolean carservice.update_timetable_state(:p_state_id, :p_guid) </summary>
    function UpdateTimeTableState(const aJGUID: TGUID; aStateID: Word): Boolean;

    /// <summary> Boolean ergomercator.carservice.book_confirmation(:p_guid) </summary>
    function ConfirmBooking(const aJGUID: TGUID): Boolean;
  public
    Destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

  // *********************************************************************************************************
  TJanuaCSDriversDBModel = class(TJanuaModelDBTemplate, IJanuaCSDriversDBModel, IJanuaServerDBModel,
    IJanuaModel)
  strict private
    FTimetableRecord: IBookingTimetableView;
    FDriversDataModule: IJanuaCSDriversDataModule;
  protected
    function GetjdsCalendar: IJanuaDBDataset;
    function GetjdsTimeTable: IJanuaDBDataset;
    function GetjdsMessages: IJanuaDBDataset;
    function GetjdsTimeTableMessages: IJanuaDBDataset;
    function GetTimetableRecord: IBookingTimetableView;
  strict protected
    function FactoryCreateDataModule: IJanuaCSDriversDataModule; virtual;
    procedure InternalSetParams; override;
    procedure vtMessagesAfterScroll(DataSet: TDataSet);
    function InternalActivate: Boolean; override;
  public
    property jdsCalendar: IJanuaDBDataset read GetjdsCalendar;
    property jdsTimeTable: IJanuaDBDataset read GetjdsTimeTable;
    property jdsMessages: IJanuaDBDataset read GetjdsMessages;
    property TimetableRecord: IBookingTimetableView read GetTimetableRecord;
  public
    procedure StartSearch; override;
    /// <summary> Boolean change_book_driver(:p_day, :p_slot_id, :p_booking_id, :p_driver_id) </summary>
    function ChangeBookDriver(const aDay: TDate; aSlotID: Word; aBookingID: Int64;
      aDriverID: Integer): Boolean;
    /// <summary></summary>
    function ChangeTimeTableDriver(const aJGUID: TGUID): Boolean;
    /// <summary> Boolean carservice.update_timetable_state(:p_state_id, :p_guid) </summary>
    function UpdateTimeTableState(const aJGUID: TGUID; aStateID: Word): Boolean;
    /// <summary> Boolean ergomercator.carservice.book_confirmation(:p_guid) </summary>
    function ConfirmBooking(const aJGUID: TGUID): Boolean;
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    destructor Destroy; override;
    procedure BeforeDestruction; override;
  end;

  // *********************************************************************************************************
  TJanuaCSDriversRESTModel = class(TJanuaRESTModelTemplate, IJanuaCSDriversRestModel, IJanuaDataRESTModel)
  strict private
    FTimetableRecord: IBookingTimetableView;
    FDriversDataModule: IJanuaCSDriversDataModule;
    FjdsCalendar: IJanuaDBDataset;
    FjdsMessages: IJanuaDBDataset;
  protected
    function GetjdsCalendar: IJanuaDBDataset;
    function GetTimetableRecord: IBookingTimetableView;
    function GetjdsMessages: IJanuaDBDataset;
  strict protected
    function InternalActivate: Boolean; override;
  public
    property jdsCalendar: IJanuaDBDataset read GetjdsCalendar;
    property jdsMessages: IJanuaDBDataset read GetjdsMessages;
  public
    procedure StartSearch; override;
    /// <summary> Boolean change_book_driver(:p_day, :p_slot_id, :p_booking_id, :p_driver_id) </summary>
    function ChangeBookDriver(const aDay: TDate; aSlotID: Word; aBookingID: Int64;
      aDriverID: Integer): Boolean;
    /// <summary></summary>
    function ChangeTimeTableDriver(const aJGUID: TGUID): Boolean;
    /// <summary> Boolean carservice.update_timetable_state(:p_state_id, :p_guid) </summary>
    function UpdateTimeTableState(const aJGUID: TGUID; aStateID: Word): Boolean;
    /// <summary> Boolean ergomercator.carservice.book_confirmation(:p_guid) </summary>
    function ConfirmBooking(const aJGUID: TGUID): Boolean;
    procedure SetRestFormat(const Value: TRestFormat); override;
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    destructor Destroy; override;
    procedure BeforeDestruction; override;
  end;
  // *********************************************************************************************************

implementation

uses JOrm.Carservice.Booking.Impl, Janua.Application.Framework, Janua.Core.Functions, Spring;

{ TJanuaCustomDriversDataModule }

procedure TJanuaCustomDriversDataModule.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaCustomDriversDataModule.BeforeDestruction;
begin
  inherited;

end;

function TJanuaCustomDriversDataModule.ChangeBookDriver(const aDay: TDate; aSlotID: Word; aBookingID: Int64;
  aDriverID: Integer): Boolean;
begin

end;

function TJanuaCustomDriversDataModule.ChangeTimeTableDriver(const aJGUID: TGUID): Boolean;
begin

end;

function TJanuaCustomDriversDataModule.ConfirmBooking(const aJGUID: TGUID): Boolean;
begin

end;

destructor TJanuaCustomDriversDataModule.Destroy;
begin
  FjdsCalendar := nil;
  FjdsTimeTable := nil;
  inherited;
end;

function TJanuaCustomDriversDataModule.GetjdsCalendar: IJanuaDBDataset;
begin
  Result := FjdsCalendar;
end;

function TJanuaCustomDriversDataModule.GetjdsMessages: IJanuaDBDataset;
begin
  Result := FjdsMessages
end;

function TJanuaCustomDriversDataModule.GetjdsTimeTable: IJanuaDBDataset;
begin
  Result := FjdsTimeTable
end;

function TJanuaCustomDriversDataModule.GetjdsTimeTableMessages: IJanuaDBDataset;
begin
  Result := FjdsTimeTableMessages
end;

function TJanuaCustomDriversDataModule.GetjspChangeBookDriver: IJanuaDBStoredProcedure;
begin
  Result := FjspChangeBookDriver
end;

function TJanuaCustomDriversDataModule.GetjspConfirmBooking: IJanuaDBStoredProcedure;
begin
  Result := FjspConfirmBooking
end;

function TJanuaCustomDriversDataModule.GetjspUpdateCalendar: IJanuaDBStoredProcedure;
begin
  Result := FjspUpdateCalendar
end;

procedure TJanuaCustomDriversDataModule.SetjdsCalendar(const Value: IJanuaDBDataset);
begin
  FjdsCalendar := Value;
  SetMainDataset(FjdsCalendar);
end;

procedure TJanuaCustomDriversDataModule.SetjdsMessages(const Value: IJanuaDBDataset);
begin
  FjdsMessages := Value
end;

procedure TJanuaCustomDriversDataModule.SetjdsTimeTable(const Value: IJanuaDBDataset);
begin
  FjdsTimeTable := Value;
end;

procedure TJanuaCustomDriversDataModule.SetjdsTimeTableMessages(const Value: IJanuaDBDataset);
begin
  FjdsTimeTableMessages := Value
end;

procedure TJanuaCustomDriversDataModule.SetjspChangeBookDriver(const Value: IJanuaDBStoredProcedure);
begin
  FjspChangeBookDriver := Value
end;

procedure TJanuaCustomDriversDataModule.SetjspConfirmBooking(const Value: IJanuaDBStoredProcedure);
begin
  FjspConfirmBooking := Value
end;

procedure TJanuaCustomDriversDataModule.SetjspUpdateCalendar(const Value: IJanuaDBStoredProcedure);
begin
  FjspUpdateCalendar := Value
end;

function TJanuaCustomDriversDataModule.UpdateTimeTableState(const aJGUID: TGUID; aStateID: Word): Boolean;
begin

end;

{ TJanuaCSDriversDBModel }

procedure TJanuaCSDriversDBModel.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaCSDriversDBModel.BeforeDestruction;
begin
  inherited;

end;

function TJanuaCSDriversDBModel.ChangeBookDriver(const aDay: TDate; aSlotID: Word; aBookingID: Int64;
  aDriverID: Integer): Boolean;
begin

end;

function TJanuaCSDriversDBModel.ChangeTimeTableDriver(const aJGUID: TGUID): Boolean;
begin

end;

function TJanuaCSDriversDBModel.ConfirmBooking(const aJGUID: TGUID): Boolean;
begin
  FDriversDataModule.jspConfirmBooking.ParamByName('p_jguid').AsString := aJGUID.ToString;
  FDriversDataModule.jspConfirmBooking.ExecSQL;
  Result := FDriversDataModule.jspConfirmBooking.ParamByName('Result').AsBoolean;
end;

constructor TJanuaCSDriversDBModel.Create;
begin
  inherited;
  try
    FDriversDataModule := FactoryCreateDataModule;
    SetInternalDataModule(FDriversDataModule as IJanuaDataModuleContainer);
    FDriversDataModule.Activate;
    // record creation and Assignement must be put BEFORE Dataset Assignments to avoid Error on Scroll Event
    FTimetableRecord := TBookingTimetableView.Create;
{$IFDEF  DEBUG}
    Guard.CheckNotNull(FTimetableRecord, 'FDocHeadRecord');
    Guard.CheckNotNull(FDriversDataModule.jdsTimeTable, 'jdsDocHeads');
    Guard.CheckNotNull(FDriversDataModule.jdsCalendar, 'jdsDocRows');
    Guard.CheckNotNull(FDriversDataModule.jdsMessages, 'jdsDocAttachments');
    Guard.CheckNotNull(FDriversDataModule.jdsTimeTableMessages, 'jdsDocTypes');
{$ENDIF}
    FTimetableRecord.StoreDataset := FDriversDataModule.jdsTimeTable;
    FTimetableRecord.PickupAnagraph.StoreDataset := FDriversDataModule.jdsTimeTable;
    FTimetableRecord.DeliveryAnagraph.StoreDataset := FDriversDataModule.jdsTimeTable;
    FTimetableRecord.BookingHead.StoreDataset := FDriversDataModule.jdsTimeTable;

    SetInternalRecord(FTimetableRecord);

    { SetjdsDataset(FDriversDataModule.jdsMessages); }
    jdsMaster := FDriversDataModule.jdsTimeTable;
    jdsDetail := FDriversDataModule.jdsTimeTableMessages;
    SetInternalDataset(FDriversDataModule.jdsCalendar);
    SetjdsRecordDataset(FDriversDataModule.jdsTimeTable);

    FDriversDataModule.jdsCalendar.Params.AddParam('driver_id', TJanuaFieldType.jptInteger, 253174);
  except
    on e: Exception do
      RaiseException('Create', e, Self);
  end;
end;

destructor TJanuaCSDriversDBModel.Destroy;
begin

  inherited;
end;

function TJanuaCSDriversDBModel.FactoryCreateDataModule: IJanuaCSDriversDataModule;
begin
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriversDataModule, Result) then
      raise Exception.Create('IJanuaDocumentsDataModule not set');
  except
    on e: Exception do
      RaiseException('FactoryCreateDataModule', e, Self);
  end;
end;

function TJanuaCSDriversDBModel.GetjdsCalendar: IJanuaDBDataset;
begin
  Result := FDriversDataModule.jdsCalendar
end;

function TJanuaCSDriversDBModel.GetjdsMessages: IJanuaDBDataset;
begin
  Result := FDriversDataModule.jdsMessages
end;

function TJanuaCSDriversDBModel.GetjdsTimeTable: IJanuaDBDataset;
begin
  Result := FDriversDataModule.jdsTimeTable
end;

function TJanuaCSDriversDBModel.GetjdsTimeTableMessages: IJanuaDBDataset;
begin
  Result := FDriversDataModule.jdsTimeTableMessages
end;

function TJanuaCSDriversDBModel.GetTimetableRecord: IBookingTimetableView;
begin
  Result := FTimetableRecord
end;

function TJanuaCSDriversDBModel.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        FTimetableRecord.MapToDataset := True;
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;
end;

procedure TJanuaCSDriversDBModel.InternalSetParams;
begin
  inherited;

end;

procedure TJanuaCSDriversDBModel.StartSearch;
begin
  inherited;

end;

function TJanuaCSDriversDBModel.UpdateTimeTableState(const aJGUID: TGUID; aStateID: Word): Boolean;
begin

end;

procedure TJanuaCSDriversDBModel.vtMessagesAfterScroll(DataSet: TDataSet);
begin
  // does nothing right now
end;

{ TJanuaCSDriversRESTModel }

procedure TJanuaCSDriversRESTModel.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaCSDriversRESTModel.BeforeDestruction;
begin
  inherited;

end;

function TJanuaCSDriversRESTModel.ChangeBookDriver(const aDay: TDate; aSlotID: Word; aBookingID: Int64;
  aDriverID: Integer): Boolean;
begin

end;

function TJanuaCSDriversRESTModel.ChangeTimeTableDriver(const aJGUID: TGUID): Boolean;
begin

end;

function TJanuaCSDriversRESTModel.ConfirmBooking(const aJGUID: TGUID): Boolean;
begin

end;

constructor TJanuaCSDriversRESTModel.Create;
begin
  inherited;
  FjdsCalendar := FjdsRESTRemotDataset; { Main Dataset is Calendar View derived from Timetable by Date }
  FjdsMessages := GetDBDatasetFactory.CreateDataset;
  FTimetableRecord := TBookingTimetableView.Create;
  SetInternalRecord(FTimetableRecord);
  FjdsCalendar.Params.AddParam('driver_id', TJanuaFieldType.jptInteger, 253174);
  RestAPIEndpoint := 'driver';
end;

destructor TJanuaCSDriversRESTModel.Destroy;
begin

  inherited;
end;

function TJanuaCSDriversRESTModel.GetjdsCalendar: IJanuaDBDataset;
begin
  Result := FjdsCalendar
end;

function TJanuaCSDriversRESTModel.GetjdsMessages: IJanuaDBDataset;
begin
  Result := FjdsMessages
end;

function TJanuaCSDriversRESTModel.GetTimetableRecord: IBookingTimetableView;
begin
  Result := FTimetableRecord
end;

function TJanuaCSDriversRESTModel.InternalActivate: Boolean;
begin

end;

procedure TJanuaCSDriversRESTModel.SetRestFormat(const Value: TRestFormat);
begin
  inherited;
  FjdsCalendar.RemoteFormat := Value;
  FjdsMessages.RemoteFormat := Value;
end;

procedure TJanuaCSDriversRESTModel.StartSearch;
begin
  inherited;

end;

function TJanuaCSDriversRESTModel.UpdateTimeTableState(const aJGUID: TGUID; aStateID: Word): Boolean;
begin

end;

end.

