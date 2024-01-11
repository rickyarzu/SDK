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
  JOrm.CarService.Booking.Intf, uniPanel;

type
  TframeUniGUITimeSlotPickup = class(TUniFrame)
    ulbPickupDate: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    ulbDate: TUniLabel;
    lbPickup: TUniLabel;
    lbDelivery: TUniLabel;
    pnlCarServiceSlotSelection: TUniSimplePanel;
    procedure FormCreate(Sender: TObject);
  public
    frameCarServiceSlotSelection1: TframeCarServiceSlotSelection;
  private
    FTimeTableSlots: IList<ItimetableSlot>;
    FBookingDate: TDate;
    procedure SetTimeTableSlots(const Value: IList<ItimetableSlot>);
    procedure SetBookingDate(const Value: TDate);
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateTimeSlotPickup;
  public
    property TimeTableSlots: IList<ItimetableSlot> read FTimeTableSlots write SetTimeTableSlots;
    property BookingDate: TDate read FBookingDate write SetBookingDate;
  end;

implementation

{$R *.dfm}
{ TframeUniGUITimeSlotPickup }

procedure TframeUniGUITimeSlotPickup.FormCreate(Sender: TObject);
begin
  frameCarServiceSlotSelection1:= TframeCarServiceSlotSelection.Create(self);
  frameCarServiceSlotSelection1.Parent := pnlCarServiceSlotSelection;
  frameCarServiceSlotSelection1.Align := TAlign.alClient;
end;

procedure TframeUniGUITimeSlotPickup.SetBookingDate(const Value: TDate);
begin
  FBookingDate := Value;
  UniDateTimePicker1.DateTime := FBookingDate;
end;

procedure TframeUniGUITimeSlotPickup.SetTimeTableSlots(const Value: IList<ItimetableSlot>);
begin
  FTimeTableSlots := Value;
  if Assigned(FTimeTableSlots) then
    UpdateTimeSlotPickup
end;

procedure TframeUniGUITimeSlotPickup.UpdateTimeSlotPickup;
begin
  if Assigned(FTimeTableSlots) and Assigned(frameCarServiceSlotSelection1) then
    frameCarServiceSlotSelection1.TimeTableSlots := FTimeTableSlots;
end;

end.
