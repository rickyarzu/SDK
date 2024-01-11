unit Janua.CarService.UniGUI.CalendarSelectController;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniCalendar, uniLabel,
  uniButton, uniGUIForm, uniGUIApplication,
  // Januaproject
  JOrm.CarService.Booking.Intf, Janua.UniGUI.Interposers, JOrm.Anagraph.Intf, Janua.Core.Types,
  Janua.CarService.PgBooking, Janua.UniGUI.Controller;

type
  TUNIControllerCalendarSelect = class(TJanuaUniGUIController { TframeUNICalendarSelect } )
  private
    FCarBooking: IBookingHeadView;
    FDM: TdmPgCarServiceBookingStorage;
    FIsPickup: Boolean;
    FcldPickup1: TUniCalendar;
    FbtnCheckPickupDate: TUniButton;
  protected
    procedure SetCarBooking(const Value: IBookingHeadView);
    procedure SetDM(const Value: TdmPgCarServiceBookingStorage);
    procedure SetIsPickup(const Value: Boolean);
    procedure UpdatePickupDate;
    procedure SetcldPickup1(const Value: TUniCalendar);
    procedure SetbtnCheckPickupDate(const Value: TUniButton);
    { Private declarations }
  public
    { Public declarations }
    procedure btnCheckPickupDateClick(Sender: TObject); // FbtnCheckPickupDate
    procedure cldPickup1Click(Sender: TObject); // FcldPickup1
    function CheckBookingDate: Boolean;
  published
    property CarBooking: IBookingHeadView read FCarBooking write SetCarBooking;
    property DM: TdmPgCarServiceBookingStorage read FDM write SetDM;
    property IsPickup: Boolean read FIsPickup write SetIsPickup;
    property cldPickup1: TUniCalendar read FcldPickup1 write SetcldPickup1;
    property btnCheckPickupDate: TUniButton read FbtnCheckPickupDate write SetbtnCheckPickupDate;
  end;

procedure Register;

implementation

uses Janua.CarService.UniGUI.dlgTimetableCheck;

procedure Register;
begin
  RegisterComponents('Janua CarService UniGUI', [TUNIControllerCalendarSelect]);
end;

{ TUNIControllerCalendarSelect }

procedure TUNIControllerCalendarSelect.btnCheckPickupDateClick(Sender: TObject);
var
  dlgTimeTablePIckup: TdlgUniGUICarserviceTimetableCheck;
begin
  DM.OpenTimeTablePlaces(cldPickup1.Date);
  dlgTimeTablePIckup := TdlgUniGUICarserviceTimetableCheck.Create(UniApplication);
  dlgTimeTablePIckup.BookingDate := cldPickup1.Date;
  dlgTimeTablePIckup.TimeTableSlots := DM.CheckUpSlots;
  dlgTimeTablePIckup.ShowModal();
end;

function TUNIControllerCalendarSelect.CheckBookingDate: Boolean;
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

procedure TUNIControllerCalendarSelect.cldPickup1Click(Sender: TObject);
begin
  UpdatePickupDate;
end;

procedure TUNIControllerCalendarSelect.SetbtnCheckPickupDate(const Value: TUniButton);
begin
  FbtnCheckPickupDate := Value;
  // btnCheckPickupDateClick
  if Assigned(FbtnCheckPickupDate) then
    FbtnCheckPickupDate.OnClick := btnCheckPickupDateClick
end;

procedure TUNIControllerCalendarSelect.SetCarBooking(const Value: IBookingHeadView);
begin
  FCarBooking := Value;
end;

procedure TUNIControllerCalendarSelect.SetcldPickup1(const Value: TUniCalendar);
begin
  FcldPickup1 := Value;
  // cldPickup1Click
  if Assigned(FcldPickup1) then
    FcldPickup1.OnClick := cldPickup1Click

end;

procedure TUNIControllerCalendarSelect.SetDM(const Value: TdmPgCarServiceBookingStorage);
begin
  FDM := Value;
end;

procedure TUNIControllerCalendarSelect.SetIsPickup(const Value: Boolean);
begin
  FIsPickup := Value;
  UpdatePickupDate;
end;

procedure TUNIControllerCalendarSelect.UpdatePickupDate;
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
