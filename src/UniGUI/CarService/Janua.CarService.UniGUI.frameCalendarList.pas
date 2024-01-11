unit Janua.CarService.UniGUI.frameCalendarList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, System.Generics.Collections,
  // VCL
  Controls, Forms,
  // UniGui
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, UniFSToggle, uniLabel,
  //
  Janua.CarService.Commons, Janua.CarService.dmPgDrivers, Janua.UniGUI.Interposers,
  Janua.CarService.UniGUI.frameTimeCalendarSelect;

type
  TframeCSUniGuiCalendarList = class(TUniFrame)
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
    FCalendarList: TObjectList<TframeTimeCalendarSelect>;
    FDM: TdmPgCarServiceBookingDrivers;
    FOnTimetableSelect: TCalendarSelectEvent;
    procedure SetDM(const Value: TdmPgCarServiceBookingDrivers);
    procedure SetOnTimetableSelect(const Value: TCalendarSelectEvent);
  public
    { Public declarations }
    procedure DoOnTimetableSelect(Sender: TObject; GUID: TGUID);
    procedure SetupList;
    property DM: TdmPgCarServiceBookingDrivers read FDM write SetDM;
    property OnTimetableSelect: TCalendarSelectEvent read FOnTimetableSelect write SetOnTimetableSelect;
  end;

implementation

{$R *.dfm}

uses Janua.Application.Framework;

{ TframeCSUniGuiCalendarList }

procedure TframeCSUniGuiCalendarList.DoOnTimetableSelect(Sender: TObject; GUID: TGUID);
begin
  if Assigned(FOnTimetableSelect) then
    FOnTimetableSelect(Self, GUID);
end;

procedure TframeCSUniGuiCalendarList.SetDM(const Value: TdmPgCarServiceBookingDrivers);
begin
  FDM := Value;
end;

procedure TframeCSUniGuiCalendarList.SetOnTimetableSelect(const Value: TCalendarSelectEvent);
begin
  FOnTimetableSelect := Value;
end;

procedure TframeCSUniGuiCalendarList.SetupList;
var
  lFrame: TframeTimeCalendarSelect;
begin
  if Assigned(DM) and (DM.qryDriverCalendar.RecordCount > 0) then
  begin
    if FCalendarList.Count > 0 then
      FCalendarList.Clear;
    DM.qryDriverCalendar.First;
    while not DM.qryDriverCalendar.Eof do
    begin
      lFrame := TframeTimeCalendarSelect.Create(Self);
      lFrame.GUID := DM.qryDriverCalendarjguid.AsGUID;
      lFrame.DM := FDM;
      lFrame.Parent := Self;
      lFrame.Top := FCalendarList.Count * lFrame.Height + 2;
      lFrame.Align := alTop;
      FCalendarList.Add(lFrame);
    end;
  end;
end;

procedure TframeCSUniGuiCalendarList.UniFrameCreate(Sender: TObject);
begin
  FCalendarList := TObjectList<TframeTimeCalendarSelect>.Create;
end;

end.
