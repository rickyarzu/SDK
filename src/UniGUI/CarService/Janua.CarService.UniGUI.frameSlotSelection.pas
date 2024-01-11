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
    imglSlotBooking: TUniNativeImageList;
    pnlTimeSelect1: TUniSimplePanel;
    pnlTimeSelect2: TUniSimplePanel;
    imgBooked1: TUniImage;
    tgSelected1: TUniFSToggle;
    ulbDate1: TUniLabel;
    ulbDeliveryTime1: TUniLabel;
    ulbTime1: TUniLabel;
    ulbDate2: TUniLabel;
    ulbTime2: TUniLabel;
    ulbDeliveryTime2: TUniLabel;
    tgSelected2: TUniFSToggle;
    imgBooked2: TUniImage;
    ulbDate3: TUniLabel;
    ulbTime3: TUniLabel;
    ulbDeliveryTime3: TUniLabel;
    tgSelected3: TUniFSToggle;
    imgBooked3: TUniImage;
    ulbDate4: TUniLabel;
    ulbTime4: TUniLabel;
    ulbDeliveryTime4: TUniLabel;
    tgSelected4: TUniFSToggle;
    imgBooked4: TUniImage;
    ulbDate5: TUniLabel;
    ulbTime5: TUniLabel;
    ulbDeliveryTime5: TUniLabel;
    tgSelected5: TUniFSToggle;
    imgBooked5: TUniImage;
    ulbDate: TUniLabel;
    ulbTime: TUniLabel;
    ulbDeliveryTime: TUniLabel;
    tgSelected: TUniFSToggle;
    imgBooked: TUniImage;
    procedure UniFrameCreate(Sender: TObject);
  public
    frameTimeSelect1: TframeTimeSelect;
    frameTimeSelect2: TframeTimeSelect;
    frameTimeSelect3: TframeTimeSelect;
    frameTimeSelect5: TframeTimeSelect;
    frameTimeSelect6: TframeTimeSelect;
    frameTimeSelect4: TframeTimeSelect;
  private
    FTimeTableSlots: IList<ItimetableSlot>;
    FFRames: IList<TframeTimeSelect>;
    FUpdating: Boolean;
    procedure SetTimeTableSlots(const Value: IList<ItimetableSlot>);
  private
    FIsTest: Boolean;
    constructor Create(AOwner: TComponent); override;
    procedure SetupFrames;
    procedure OnToggleChange(Sender: TObject);
    procedure AfterConstruction; override;
    procedure SetIsTest(const Value: Boolean); { Private declarations }
  public
    { Public declarations }
    property TimeTableSlots: IList<ItimetableSlot> read FTimeTableSlots write SetTimeTableSlots;
    property IsTest: Boolean read FIsTest write SetIsTest;
  end;

implementation

{$R *.dfm}
{ TUniFrame1 }

procedure TframeCarServiceSlotSelection.AfterConstruction;
begin
  inherited;
  SetupFrames;
end;

constructor TframeCarServiceSlotSelection.Create(AOwner: TComponent);
begin
  inherited;
  FUpdating := False;
end;

procedure TframeCarServiceSlotSelection.OnToggleChange(Sender: TObject);
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
end;

procedure TframeCarServiceSlotSelection.SetIsTest(const Value: Boolean);
begin
  FIsTest := Value;
  for var I := 0 to FFRames.Count - 1 do
    if FFRames[I].IsTest <> FIsTest then
      FFRames[I].IsTest := FIsTest;
end;

procedure TframeCarServiceSlotSelection.SetTimeTableSlots(const Value: IList<ItimetableSlot>);
var
  I: Integer;
begin
  FTimeTableSlots := Value;
  if Assigned(FTimeTableSlots) then
    for I := 0 to FTimeTableSlots.Count - 1 do
    begin
      FFRames[I].TimeTableSlot := FTimeTableSlots[I];
      FFRames[I].OnToggledChange := OnToggleChange;
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
  FFRames := Spring.Collections.TCollections.CreateList<TframeTimeSelect>;
end;

end.
