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
    [weak]
    FTimeTableSlot: ItimetableSlot;
    FOnToggledChange: TNotifyEvent;
    FIsTest: Boolean;
    FClearAllSlots: TProc;
    procedure SetTimeTableSlot(const Value: ItimetableSlot);
    procedure SetOnToggledChange(const Value: TNotifyEvent);
    procedure SetIsTest(const Value: Boolean);
    procedure SetClearAllSlots(const Value: TProc);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  public
    property TimeTableSlot: ItimetableSlot read FTimeTableSlot write SetTimeTableSlot;
    property OnToggledChange: TNotifyEvent read FOnToggledChange write SetOnToggledChange;
    property IsTest: Boolean read FIsTest write SetIsTest;
    property ClearAllSlots: TProc read FClearAllSlots write SetClearAllSlots;
  end;

implementation

{$R *.dfm}
{ TframeTimeSelect }

constructor TframeTimeSelect.Create(AOwner: TComponent);
begin
  inherited;
  FIsTest := False;
end;

procedure TframeTimeSelect.SetClearAllSlots(const Value: TProc);
begin
  FClearAllSlots := Value;
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
  if Assigned(Value) then
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
      end
      else
      begin
        ulbDate.Font.Color := clBlack;
        ulbTime.Font.Color := clBlack;
        ulbDeliveryTime.Font.Color := clBlack;
        tgSelected.Visible := True;
        imgBooked.Visible := False;
        imgBooked.ImageIndex := 0;
      end;
    end;
  end
  else
  begin
    FTimeTableSlot := nil;
  end;
end;

procedure TframeTimeSelect.tgSelectedToggled(const Value: Boolean);
begin
  // per prima cosa chiama il controller centrale ed azzera tutti i Frames
  if Assigned(ClearAllSlots) then
    ClearAllSlots;
  // poi reimposta come Toggled Se stesso
  FTimeTableSlot.Booked.AsBoolean := tgSelected.Toggled;
  if Assigned(FOnToggledChange) then
    FOnToggledChange(self);
end;

end.
