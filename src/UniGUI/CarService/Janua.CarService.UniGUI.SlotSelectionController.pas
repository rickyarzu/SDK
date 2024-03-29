unit Janua.CarService.UniGUI.SlotSelectionController;

interface

uses
  SysUtils, Variants, Classes, Spring.Collections,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniCalendar, uniLabel,
  uniButton, uniGUIForm, uniGUIApplication, UniFSToggle, uniImage, uniDateTimePicker, uniMemo,
  // Januaproject
  Janua.CarService.UniGUI.TimeSlotController, Janua.UniGUI.Controller, JOrm.CarService.Booking.Intf;

type
  TCarServiceSlotSelectionController = class(TJanuaUniGUIController)
  private
    FTimeTableSlots: IList<ItimetableSlot>;
    FFRames: IList<TTimeSelectUniGUIController>;
    FUpdating: Boolean;
  private
    FIsTest: Boolean;
    FframeTimeSelect2: TTimeSelectUniGUIController;
    FframeTimeSelect3: TTimeSelectUniGUIController;
    FframeTimeSelect1: TTimeSelectUniGUIController;
    FframeTimeSelect6: TTimeSelectUniGUIController;
    FframeTimeSelect4: TTimeSelectUniGUIController;
    FframeTimeSelect5: TTimeSelectUniGUIController;
    FlbDelivery: TUniLabel;
    FlbPickup: TUniLabel;
    FulbPickupDate: TUniLabel;
    FulbDate: TUniLabel;
    FUniDateTimePicker1: TUniDateTimePicker;
    FBookingDate: TDate;
    FSlotID: Integer;
    FmemoLog: TUniMemo;
    function GetSlotID: Integer;
    procedure SetmemoLog(const Value: TUniMemo);
  protected
    procedure SetTimeTableSlots(const Value: IList<ItimetableSlot>);
    procedure SetIsTest(const Value: Boolean);
    procedure SetframeTimeSelect1(const Value: TTimeSelectUniGUIController);
    procedure SetframeTimeSelect2(const Value: TTimeSelectUniGUIController);
    procedure SetframeTimeSelect3(const Value: TTimeSelectUniGUIController);
    procedure SetframeTimeSelect4(const Value: TTimeSelectUniGUIController);
    procedure SetframeTimeSelect5(const Value: TTimeSelectUniGUIController);
    procedure SetframeTimeSelect6(const Value: TTimeSelectUniGUIController);
    procedure SetlbDelivery(const Value: TUniLabel);
    procedure SetlbPickup(const Value: TUniLabel);
    procedure SetulbDate(const Value: TUniLabel);
    procedure SetulbPickupDate(const Value: TUniLabel);
    procedure SetUniDateTimePicker1(const Value: TUniDateTimePicker);
    procedure SetBookingDate(const Value: TDate);
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetupFrames;
    procedure OnToggleChange(Sender: TObject);
    procedure AfterConstruction; override;
    procedure ClearAllFrames;
    procedure ClearAllSlots;
  published
    property BookingDate: TDate read FBookingDate write SetBookingDate;
    property ulbPickupDate: TUniLabel read FulbPickupDate write SetulbPickupDate;
    property UniDateTimePicker1: TUniDateTimePicker read FUniDateTimePicker1 write SetUniDateTimePicker1;
    property ulbDate: TUniLabel read FulbDate write SetulbDate;
    property lbPickup: TUniLabel read FlbPickup write SetlbPickup;
    property lbDelivery: TUniLabel read FlbDelivery write SetlbDelivery;
    property IsTest: Boolean read FIsTest write SetIsTest;
  public
    property TimeTableSlots: IList<ItimetableSlot> read FTimeTableSlots write SetTimeTableSlots;
    property SlotID: Integer read GetSlotID;
  published
    property memoLog: TUniMemo read FmemoLog write SetmemoLog;
    property frameTimeSelect1: TTimeSelectUniGUIController read FframeTimeSelect1 write SetframeTimeSelect1;
    property frameTimeSelect2: TTimeSelectUniGUIController read FframeTimeSelect2 write SetframeTimeSelect2;
    property frameTimeSelect3: TTimeSelectUniGUIController read FframeTimeSelect3 write SetframeTimeSelect3;
    property frameTimeSelect5: TTimeSelectUniGUIController read FframeTimeSelect5 write SetframeTimeSelect5;
    property frameTimeSelect6: TTimeSelectUniGUIController read FframeTimeSelect6 write SetframeTimeSelect6;
    property frameTimeSelect4: TTimeSelectUniGUIController read FframeTimeSelect4 write SetframeTimeSelect4;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua CarService UniGUI', [TCarServiceSlotSelectionController]);
end;

procedure TCarServiceSlotSelectionController.AfterConstruction;
begin
  inherited;
end;

procedure TCarServiceSlotSelectionController.ClearAllFrames;
var
  I: Integer;
begin
  if not FUpdating then
    try
      FUpdating := True;
      ClearAllSlots;
      for I := 0 to Pred(FFRames.Count) do
      begin
        if FFRames[I].tgSelected.Toggled then
          FFRames[I].tgSelected.Toggled := False;
        if FTimeTableSlots[I].Booked.AsBoolean then
          FTimeTableSlots[I].Booked.AsBoolean := False;
      end;
    finally
      FUpdating := False;
    end;
end;

procedure TCarServiceSlotSelectionController.ClearAllSlots;
var
  lSlot: ItimetableSlot;
begin
  for lSlot in FTimeTableSlots do
    lSlot.Booked.AsBoolean := False;
end;

constructor TCarServiceSlotSelectionController.Create(AOwner: TComponent);
begin
  inherited;
  FFRames := Spring.Collections.TCollections.CreateList<TTimeSelectUniGUIController>;
  FUpdating := False;
  FSlotID := -1;
end;

function TCarServiceSlotSelectionController.GetSlotID: Integer;
begin
  Result := FSlotID
end;

function TCarServiceSlotSelectionController.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := Enabled and inherited and notDesigning;
      if Result then
      begin
        SetupFrames;
        Result := True;
      end;
    except
      on e: exception do
        raise exception.Create('Error Message');
    end;
end;

procedure TCarServiceSlotSelectionController.OnToggleChange(Sender: TObject);
var
  I, J: Integer;
begin
  if not FUpdating then
    try
      FUpdating := True;
      J := -1;
      for I := 0 to Pred(FFRames.Count) do
      begin
        if FFRames[I].tgSelected.Toggled <> FTimeTableSlots[I].Booked.AsBoolean then
          FFRames[I].tgSelected.Toggled := FTimeTableSlots[I].Booked.AsBoolean;
        if FTimeTableSlots[I].Booked.AsBoolean then
        begin
          FSlotID := FTimeTableSlots[I].SlotID.AsInteger;
          J := I;
        end;
      end;
      if Assigned(FmemoLog) and (J > -1) then
      begin
        var
        sLog := FTimeTableSlots[J].SlotDes.AsString + ' - ' + FTimeTableSlots[J].Workingday.AsString;
        FmemoLog.Text := sLog;
      end;

    finally
      FUpdating := False;
    end;
end;

procedure TCarServiceSlotSelectionController.SetBookingDate(const Value: TDate);
begin
  FBookingDate := Value;
  if Assigned(UniDateTimePicker1) then
    UniDateTimePicker1.DateTime := FBookingDate;
end;

procedure TCarServiceSlotSelectionController.SetframeTimeSelect1(const Value: TTimeSelectUniGUIController);
begin
  FframeTimeSelect1 := Value;
end;

procedure TCarServiceSlotSelectionController.SetframeTimeSelect2(const Value: TTimeSelectUniGUIController);
begin
  FframeTimeSelect2 := Value;
end;

procedure TCarServiceSlotSelectionController.SetframeTimeSelect3(const Value: TTimeSelectUniGUIController);
begin
  FframeTimeSelect3 := Value;
end;

procedure TCarServiceSlotSelectionController.SetframeTimeSelect4(const Value: TTimeSelectUniGUIController);
begin
  FframeTimeSelect4 := Value;
end;

procedure TCarServiceSlotSelectionController.SetframeTimeSelect5(const Value: TTimeSelectUniGUIController);
begin
  FframeTimeSelect5 := Value;
end;

procedure TCarServiceSlotSelectionController.SetframeTimeSelect6(const Value: TTimeSelectUniGUIController);
begin
  FframeTimeSelect6 := Value;
end;

procedure TCarServiceSlotSelectionController.SetIsTest(const Value: Boolean);
begin
  FIsTest := Value;
  for var I := 0 to FFRames.Count - 1 do
    if FFRames[I].IsTest <> FIsTest then
      FFRames[I].IsTest := FIsTest;
end;

procedure TCarServiceSlotSelectionController.SetlbDelivery(const Value: TUniLabel);
begin
  FlbDelivery := Value;
end;

procedure TCarServiceSlotSelectionController.SetlbPickup(const Value: TUniLabel);
begin
  FlbPickup := Value;
end;

procedure TCarServiceSlotSelectionController.SetmemoLog(const Value: TUniMemo);
begin
  FmemoLog := Value;
end;

procedure TCarServiceSlotSelectionController.SetTimeTableSlots(const Value: IList<ItimetableSlot>);
var
  I: Integer;
begin
  FTimeTableSlots := Value;
  SetupFrames;

  for I := 0 to FFRames.Count - 1 do
  begin
    FFRames[I].TimeTableSlot := nil;
    FFRames[I].tgSelected.Toggled := False;
    FFRames[I].imgBooked.Visible := False;
  end;

  if Assigned(FTimeTableSlots) then
    for I := 0 to FTimeTableSlots.Count - 1 do
    begin
      FFRames[I].TimeTableSlot := FTimeTableSlots[I];
      FFRames[I].OnToggledChange := OnToggleChange;
      FFRames[I].ClearAllSlots := ClearAllSlots;
{$IFDEF DEBUG}
      var
      iSlotID := FFRames[I].TimeTableSlot.SlotID.AsInteger;
      var
      sName := FFRames[I].Name;
{$ENDIF}
    end;
end;

procedure TCarServiceSlotSelectionController.SetulbDate(const Value: TUniLabel);
begin
  FulbDate := Value;
end;

procedure TCarServiceSlotSelectionController.SetulbPickupDate(const Value: TUniLabel);
begin
  FulbPickupDate := Value;
end;

procedure TCarServiceSlotSelectionController.SetUniDateTimePicker1(const Value: TUniDateTimePicker);
begin
  FUniDateTimePicker1 := Value;
end;

procedure TCarServiceSlotSelectionController.SetupFrames;
begin
  if FFRames.Count = 0 then
  begin
    FFRames.Add(frameTimeSelect1);
    FFRames.Add(frameTimeSelect2);
    FFRames.Add(frameTimeSelect3);
    FFRames.Add(frameTimeSelect4);
    FFRames.Add(frameTimeSelect5);
    FFRames.Add(frameTimeSelect6);
  end;
end;

end.
