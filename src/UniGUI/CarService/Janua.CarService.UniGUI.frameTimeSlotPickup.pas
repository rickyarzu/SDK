unit Janua.CarService.UniGUI.frameTimeSlotPickup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Spring.Collections,
  // Controls
  Vcl.Forms, Vcl.Controls,
  // UniGUI
  uniLabel, uniGUITypes, uniGUIAbstractClasses, uniGUIBaseClasses, uniGUIClasses, uniDateTimePicker,
  uniGUIFrame, uniImageList,
  // Januaproject
  Janua.CarService.PgBooking, Janua.UniGUI.Interposers, Janua.CarService.UniGUI.frameSlotSelection,
  JOrm.CarService.Booking.Intf, uniPanel, Janua.CarService.dmPgService;

type
  TframeUniGUITimeSlotPickup = class(TUniFrame)
    ulbPickupDate: TUniLabel;
    PickupDate: TUniDateTimePicker;
    ulbDate: TUniLabel;
    lbPickup: TUniLabel;
    lbDelivery: TUniLabel;
    pnlCarServiceSlotSelection: TUniSimplePanel;
    frameCarServiceSlotSelection1: TframeCarServiceSlotSelection;
    procedure FormCreate(Sender: TObject);
    procedure PickupDateChange(Sender: TObject);
  private
    FTimeTableSlots: IList<ItimetableSlot>;
    FBookingDate: TDate;
    FdmPgCarServiceBooking: TdmPgCarServiceBookingStorage;
    FOnDateChange: TNotifyEvent;
    FIsPickup: Boolean;
    procedure SetTimeTableSlots(const Value: IList<ItimetableSlot>);
    procedure SetBookingDate(const Value: TDate);
    function GetmemoLog: TUniMemo;
    function GetSlotID: Integer;
    procedure SetmemoLog(const Value: TUniMemo);
    procedure SetdmPgCarServiceBooking(const Value: TdmPgCarServiceBookingStorage);
    procedure SetOnDateChange(const Value: TNotifyEvent);
    procedure SetIsPickup(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateTimeSlotPickup;
  public
    property TimeTableSlots: IList<ItimetableSlot> read FTimeTableSlots write SetTimeTableSlots;
    property BookingDate: TDate read FBookingDate write SetBookingDate;
    property SlotID: Integer read GetSlotID;
    property memoLog: TUniMemo read GetmemoLog write SetmemoLog;
    property dmPgCarServiceBooking: TdmPgCarServiceBookingStorage read FdmPgCarServiceBooking
      write SetdmPgCarServiceBooking;
    property OnDateChange: TNotifyEvent read FOnDateChange write SetOnDateChange;
    property IsPickup: Boolean read FIsPickup write SetIsPickup;
  end;

implementation

{$R *.dfm}
{ TframeUniGUITimeSlotPickup }

procedure TframeUniGUITimeSlotPickup.FormCreate(Sender: TObject);
begin
  frameCarServiceSlotSelection1 := TframeCarServiceSlotSelection.Create(self);
  frameCarServiceSlotSelection1.Parent := pnlCarServiceSlotSelection;
  frameCarServiceSlotSelection1.Align := TAlign.alClient;
end;

function TframeUniGUITimeSlotPickup.GetmemoLog: TUniMemo;
begin
  Result := frameCarServiceSlotSelection1.memoLog;
end;

function TframeUniGUITimeSlotPickup.GetSlotID: Integer;
begin
  Result := frameCarServiceSlotSelection1.SlotID
end;

procedure TframeUniGUITimeSlotPickup.SetBookingDate(const Value: TDate);
begin
  FBookingDate := Value;
  PickupDate.DateTime := FBookingDate;
end;

procedure TframeUniGUITimeSlotPickup.SetdmPgCarServiceBooking(const Value: TdmPgCarServiceBookingStorage);
begin
  FdmPgCarServiceBooking := Value;
end;

procedure TframeUniGUITimeSlotPickup.SetIsPickup(const Value: Boolean);
begin
  FIsPickup := Value;
end;

procedure TframeUniGUITimeSlotPickup.SetmemoLog(const Value: TUniMemo);
begin
  frameCarServiceSlotSelection1.memoLog := Value;
end;

procedure TframeUniGUITimeSlotPickup.SetOnDateChange(const Value: TNotifyEvent);
begin
  FOnDateChange := Value;
end;

procedure TframeUniGUITimeSlotPickup.SetTimeTableSlots(const Value: IList<ItimetableSlot>);
begin
  FTimeTableSlots := Value;
  if Assigned(FTimeTableSlots) then
    UpdateTimeSlotPickup
end;

procedure TframeUniGUITimeSlotPickup.PickupDateChange(Sender: TObject);
begin
  if IsPickup then
  begin
    if PickupDate.DateTime <> FdmPgCarServiceBooking.PickupDate then
    begin
      frameCarServiceSlotSelection1.ClearAllFrames;
      FdmPgCarServiceBooking.PickupDate := PickupDate.DateTime;
      FdmPgCarServiceBooking.UpdatePickupSlots;
      frameCarServiceSlotSelection1.TimeTableSlots := FdmPgCarServiceBooking.PickupSlots;
      if Assigned(FOnDateChange) then
        FOnDateChange(self);
    end
  end
  else
  begin
    if PickupDate.DateTime <> FdmPgCarServiceBooking.DeliveryDate then
    begin
      frameCarServiceSlotSelection1.ClearAllFrames;
      FdmPgCarServiceBooking.DeliveryDate := PickupDate.DateTime;
      FdmPgCarServiceBooking.UpdateDeliverySlots;
      frameCarServiceSlotSelection1.TimeTableSlots := FdmPgCarServiceBooking.DeliverySlots;
      if Assigned(FOnDateChange) then
        FOnDateChange(self);
    end;
  end;
end;

procedure TframeUniGUITimeSlotPickup.UpdateTimeSlotPickup;
begin
  if Assigned(FTimeTableSlots) and Assigned(frameCarServiceSlotSelection1) then
    frameCarServiceSlotSelection1.TimeTableSlots := FTimeTableSlots;
end;

end.
