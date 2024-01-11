unit Janua.CarService.UniGUI.frameCalendarSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniCalendar, uniLabel,
  uniButton, uniGUIForm,
  // Januaproject
  JOrm.CarService.Booking.Intf, Janua.UniGUI.Interposers, JOrm.Anagraph.Intf, Janua.Core.Types,
  Janua.CarService.PgBooking;

type
  TframeUNICalendarSelect = class(TUniForm)
    cldPickup1: TUniCalendar;
    lbPickupDate: TUniLabel;
    lbPickupDateSelect: TUniLabel;
    btnCheckPickupDate: TUniButton;
    procedure btnCheckPickupDateClick(Sender: TObject);
    procedure cldPickup1Click(Sender: TObject);
  private
    FCarBooking: IBookingHeadView;
    FDM: TdmPgCarServiceBookingStorage;
    FIsPickup: Boolean;
    procedure SetCarBooking(const Value: IBookingHeadView);
    procedure SetDM(const Value: TdmPgCarServiceBookingStorage);
    procedure SetIsPickup(const Value: Boolean);
    procedure UpdatePickupDate;
    { Private declarations }
  public
    { Public declarations }
    function CheckBookingDate: Boolean;
    property CarBooking: IBookingHeadView read FCarBooking write SetCarBooking;
    property DM: TdmPgCarServiceBookingStorage read FDM write SetDM;
    property IsPickup: Boolean read FIsPickup write SetIsPickup;
  end;

implementation

uses Janua.CarService.UniGUI.dlgTimetableCheck;

{$R *.dfm}
{ TframeUNICalendarSelect }

procedure TframeUNICalendarSelect.btnCheckPickupDateClick(Sender: TObject);
var
  dlgTimeTablePIckup: TdlgUniGUICarserviceTimetableCheck;
begin
  DM.OpenTimeTablePlaces(cldPickup1.Date);
  dlgTimeTablePIckup := TdlgUniGUICarserviceTimetableCheck.Create(UniApplication);
  dlgTimeTablePIckup.BookingDate := cldPickup1.Date;
  dlgTimeTablePIckup.TimeTableSlots := DM.CheckUpSlots;
  dlgTimeTablePIckup.ShowModal();
end;

function TframeUNICalendarSelect.CheckBookingDate: Boolean;
var
  dlgTimeTablePIckup: TdlgUniGUICarserviceTimetableCheck;
begin
  Result := True;
  DM.OpenTimeTablePlaces(cldPickup1.Date);
  if DM.CheckUpSlots.Count = 0 then
  begin
    Result := False;
    dlgTimeTablePIckup := TdlgUniGUICarserviceTimetableCheck.Create(UniApplication);
    dlgTimeTablePIckup.BookingDate := cldPickup1.Date;
    dlgTimeTablePIckup.TimeTableSlots := DM.CheckUpSlots;
    dlgTimeTablePIckup.ShowModal();
  end;
end;

procedure TframeUNICalendarSelect.cldPickup1Click(Sender: TObject);
begin
  UpdatePickupDate;
end;

procedure TframeUNICalendarSelect.SetCarBooking(const Value: IBookingHeadView);
begin
  FCarBooking := Value;
end;

procedure TframeUNICalendarSelect.SetDM(const Value: TdmPgCarServiceBookingStorage);
begin
  FDM := Value;
end;

procedure TframeUNICalendarSelect.SetIsPickup(const Value: Boolean);
begin
  FIsPickup := Value;
  UpdatePickupDate;
end;

procedure TframeUNICalendarSelect.UpdatePickupDate;
begin
  if IsPickup then
  begin
    if Assigned(FDM) then
      FDM.PickupDate := cldPickup1.Date;
    if Assigned(CarBooking) then
      CarBooking.PickupDateTime.Workingday.AsDateTime := cldPickup1.Date;
  end
  else
  begin
    if Assigned(FDM) then
      FDM.DeliveryDate := cldPickup1.Date;
    if Assigned(CarBooking) then
      CarBooking.DeliveryDateTime.Workingday.AsDateTime := cldPickup1.Date;
  end;

end;

end.
