unit Janua.CarService.UniGUI.frameTimeSlot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  // Business Logic
  JOrm.CarService.Booking.Intf,
  // VCL
  Controls, Forms,
  // UniGui
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, UniFSToggle, uniLabel,
  uniImage,
  //
  Janua.UniGUI.Interposers;

type
  TframeTimeSelect = class(TUniFrame)
    tgSelected: TUniFSToggle;
    ulbTime: TUniLabel;
    ulbDate: TUniLabel;
    imgBooked: TUniImage;
    ulbDeliveryTime: TUniLabel;
    procedure tgSelectedToggled(const Value: Boolean);
  private
    FTimeTableSlot: ItimetableSlot;
    FOnToggledChange: TNotifyEvent;
    FIsTest: Boolean;
    procedure SetTimeTableSlot(const Value: ItimetableSlot);
    procedure SetOnToggledChange(const Value: TNotifyEvent);
    procedure SetIsTest(const Value: Boolean);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  public
    property TimeTableSlot: ItimetableSlot read FTimeTableSlot write SetTimeTableSlot;
    property OnToggledChange: TNotifyEvent read FOnToggledChange write SetOnToggledChange;
    property IsTest: Boolean read FIsTest write SetIsTest;
  end;

implementation

{$R *.dfm}
{ TframeTimeSelect }

constructor TframeTimeSelect.Create(AOwner: TComponent);
begin
  inherited;
  FIsTest := False;
end;

procedure TframeTimeSelect.SetIsTest(const Value: Boolean);
begin
  FIsTest := Value;
  imgBooked.Visible := FIsTest;
  tgSelected.Visible := not FIsTest;
end;

procedure TframeTimeSelect.SetOnToggledChange(const Value: TNotifyEvent);
begin
  FOnToggledChange := Value;
end;

procedure TframeTimeSelect.SetTimeTableSlot(const Value: ItimetableSlot);
begin
  FTimeTableSlot := Value;
  if Assigned(FTimeTableSlot) then
  begin
    ulbTime.Caption := FTimeTableSlot.SlotDes.AsString;
    ulbDate.Caption := FTimeTableSlot.Workingday.AsString;
    ulbDeliveryTime.Caption := FTimeTableSlot.SlotDelivery.AsString;
    tgSelected.Toggled := FTimeTableSlot.Booked.AsBoolean;
    tgSelected.BindToField(FTimeTableSlot.Booked);
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

procedure TframeTimeSelect.tgSelectedToggled(const Value: Boolean);
begin
  FTimeTableSlot.Booked.AsBoolean := tgSelected.Toggled;
  if Assigned(FOnToggledChange) then
    FOnToggledChange(self);
end;

end.
