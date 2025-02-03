unit Janua.CarService.UniGUI.frameSlotSelection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, Spring.Collections,
  // UniGui
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniImageList,
  // Januaproject
  JOrm.CarService.Booking.Intf, Janua.CarService.UniGUI.frameTimeSlot, Janua.UniGUI.Interposers, uniPanel,
  uniLabel, UniFSToggle, uniImage;

type
  TframeCarServiceSlotSelection = class(TUniFrame)
  // Frames
      frameTimeSelect1: TframeTimeSelect;
    frameTimeSelect2: TframeTimeSelect;
    frameTimeSelect3: TframeTimeSelect;
    frameTimeSelect5: TframeTimeSelect;
    frameTimeSelect6: TframeTimeSelect;
    frameTimeSelect4: TframeTimeSelect;

    imglSlotBooking: TUniNativeImageList;
    pnlTimeSelect1: TUniSimplePanel;
    pnlTimeSelect2: TUniSimplePanel;
    procedure UniFrameCreate(Sender: TObject);
  private
    FTimeTableSlots: IList<ItimetableSlot>;
    FFRames: IList<TframeTimeSelect>;
    FUpdating: Boolean;
  private
    FSlotID: Smallint;
    procedure SetTimeTableSlots(const Value: IList<ItimetableSlot>);
    function GetSlotID: Integer;
    procedure SetmemoLog(const Value: TUniMemo);
  private
    FIsTest: Boolean;
    FmemoLog: TUniMemo;
    procedure SetIsTest(const Value: Boolean); { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetupFrames;
    procedure OnToggleChange(Sender: TObject);
    procedure AfterConstruction; override;
    procedure ClearAllFrames;
    procedure ClearAllSlots;
  public
    { Public declarations }
    property TimeTableSlots: IList<ItimetableSlot> read FTimeTableSlots write SetTimeTableSlots;
    property IsTest: Boolean read FIsTest write SetIsTest;
    property SlotID: Integer read GetSlotID;
    property memoLog: TUniMemo read FmemoLog write SetmemoLog;
  end;

implementation

{$R *.dfm}
{ TUniFrame1 }

procedure TframeCarServiceSlotSelection.AfterConstruction;
begin
  inherited;
  SetupFrames;
end;

procedure TframeCarServiceSlotSelection.ClearAllFrames;
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

procedure TframeCarServiceSlotSelection.ClearAllSlots;
var
  lSlot: ItimetableSlot;
begin
  for lSlot in FTimeTableSlots do
    lSlot.Booked.AsBoolean := False;
end;

constructor TframeCarServiceSlotSelection.Create(AOwner: TComponent);
begin
  inherited;

end;

function TframeCarServiceSlotSelection.GetSlotID: Integer;
begin
  Result := FSlotID
end;

procedure TframeCarServiceSlotSelection.OnToggleChange(Sender: TObject);
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
(*
var
  I: Integer;
begin
  if not FUpdating then
    try
      FUpdating := True;
      for I := 0 to Pred(FFRames.Count) do
        FFRames[I].tgSelected.Toggled := FTimeTableSlots[I].Booked.AsBoolean;
    finally
      FUpdating := False;
    end;
  *)
end;

procedure TframeCarServiceSlotSelection.SetIsTest(const Value: Boolean);
begin
  FIsTest := Value;
  for var I := 0 to FFRames.Count - 1 do
    if FFRames[I].IsTest <> FIsTest then
      FFRames[I].IsTest := FIsTest;
end;

procedure TframeCarServiceSlotSelection.SetmemoLog(const Value: TUniMemo);
begin

end;

procedure TframeCarServiceSlotSelection.SetTimeTableSlots(const Value: IList<ItimetableSlot>);
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

procedure TframeCarServiceSlotSelection.SetupFrames;
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

procedure TframeCarServiceSlotSelection.UniFrameCreate(Sender: TObject);
begin
  FUpdating := False;
  FSlotID := -1;
  FFRames := Spring.Collections.TCollections.CreateList<TframeTimeSelect>;
end;

end.
