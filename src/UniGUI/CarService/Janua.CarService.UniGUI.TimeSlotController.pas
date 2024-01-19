unit Janua.CarService.UniGUI.TimeSlotController;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniCalendar, uniLabel,
  uniButton, uniGUIForm, uniGUIApplication, UniFSToggle, uniImage,
  // Januaproject
  JOrm.CarService.Booking.Intf, JOrm.Anagraph.Intf, Janua.Core.Types, Janua.CarService.PgBooking,
  Janua.UniGUI.Controller;

type
  TTimeSelectUniGUIController = class(TJanuaUniGUIController)
  private
    FTimeTableSlot: ItimetableSlot;
    FOnToggledChange: TNotifyEvent;
    FIsTest: Boolean;
    FtgSelected: TUniFSToggle;
    FulbDate: TUniLabel;
    FulbDeliveryTime: TUniLabel;
    FulbTime: TUniLabel;
    FimgBooked: TUniImage;
  protected
    procedure SetTimeTableSlot(const Value: ItimetableSlot);
    procedure SetOnToggledChange(const Value: TNotifyEvent);
    procedure SetIsTest(const Value: Boolean);
    procedure SetimgBooked(const Value: TUniImage);
    procedure SettgSelected(const Value: TUniFSToggle);
    procedure SetulbDate(const Value: TUniLabel);
    procedure SetulbDeliveryTime(const Value: TUniLabel);
    procedure SetulbTime(const Value: TUniLabel);
    procedure SetVisibleTest;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    procedure tgSelectedToggled(const Value: Boolean);
    property TimeTableSlot: ItimetableSlot read FTimeTableSlot write SetTimeTableSlot;
  published
    // TUniControl
    property IsTest: Boolean read FIsTest write SetIsTest;
    property tgSelected: TUniFSToggle read FtgSelected write SettgSelected;
    property OnToggledChange: TNotifyEvent read FOnToggledChange write SetOnToggledChange;
    property imgBooked: TUniImage read FimgBooked write SetimgBooked;
    property ulbTime: TUniLabel read FulbTime write SetulbTime;
    property ulbDate: TUniLabel read FulbDate write SetulbDate;
    property ulbDeliveryTime: TUniLabel read FulbDeliveryTime write SetulbDeliveryTime;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua CarService UniGUI', [TTimeSelectUniGUIController]);
end;

constructor TTimeSelectUniGUIController.Create(AOwner: TComponent);
begin
  inherited;
  FIsTest := False;
end;

procedure TTimeSelectUniGUIController.SetimgBooked(const Value: TUniImage);
begin
  FimgBooked := Value;
  SetVisibleTest;
end;

procedure TTimeSelectUniGUIController.SetIsTest(const Value: Boolean);
begin
  FIsTest := Value;
  SetVisibleTest;
end;

procedure TTimeSelectUniGUIController.SetOnToggledChange(const Value: TNotifyEvent);
begin
  FOnToggledChange := Value;
end;

procedure TTimeSelectUniGUIController.SettgSelected(const Value: TUniFSToggle);
begin
  FtgSelected := Value;
  SetVisibleTest;
  if Assigned(FtgSelected) then
    FtgSelected.OnToggled := tgSelectedToggled;
end;

procedure TTimeSelectUniGUIController.SetTimeTableSlot(const Value: ItimetableSlot);
begin
  FTimeTableSlot := Value;
  if Assigned(FTimeTableSlot) then
  begin
    ulbTime.Caption := FTimeTableSlot.SlotDes.AsString;
    ulbDate.Caption := FTimeTableSlot.Workingday.AsString;
    ulbDeliveryTime.Caption := FTimeTableSlot.GetSlotDelivery.AsString;
    tgSelected.Toggled := FTimeTableSlot.Booked.AsBoolean;
    { tgSelected.BindToField(FTimeTableSlot.Booked); }
    if not FTimeTableSlot.IsFree.AsBoolean then
    begin
      ulbDate.Font.Color := clRed;
      ulbTime.Font.Color := clRed;
      ulbDeliveryTime.Font.Color := clRed;
      tgSelected.Visible := False;
      imgBooked.Visible := True;
      imgBooked.ImageIndex := 1;
    end
    else if FIsTest then
    begin
      ulbDate.Font.Color := clGreen;
      ulbDeliveryTime.Font.Color := clGreen;
      ulbTime.Font.Color := clGreen;
      tgSelected.Visible := False;
      imgBooked.Visible := True;
      imgBooked.ImageIndex := 0;
    end;
  end;
end;

procedure TTimeSelectUniGUIController.SetulbDate(const Value: TUniLabel);
begin
  FulbDate := Value;
end;

procedure TTimeSelectUniGUIController.SetulbDeliveryTime(const Value: TUniLabel);
begin
  FulbDeliveryTime := Value;
end;

procedure TTimeSelectUniGUIController.SetulbTime(const Value: TUniLabel);
begin
  FulbTime := Value;
end;

procedure TTimeSelectUniGUIController.SetVisibleTest;
begin
  if Assigned(FimgBooked) then
    FimgBooked.Visible := FIsTest;
  if Assigned(tgSelected) then
    tgSelected.Visible := not FIsTest;
end;

procedure TTimeSelectUniGUIController.tgSelectedToggled(const Value: Boolean);
begin
  FTimeTableSlot.Booked.AsBoolean := tgSelected.Toggled;
  if Assigned(FOnToggledChange) then
    FOnToggledChange(self);
end;

end.
