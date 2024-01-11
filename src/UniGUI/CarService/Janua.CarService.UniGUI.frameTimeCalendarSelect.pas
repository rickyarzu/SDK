unit Janua.CarService.UniGUI.frameTimeCalendarSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  // Business Logic
  JOrm.CarService.Booking.Intf,
  // VCL
  Controls, Forms,
  // UniGui
  uniImage, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, UniFSToggle,
  uniLabel,
  //
  Janua.UniGUI.Interposers, Janua.CarService.Commons, Janua.CarService.dmPgDrivers, uniPanel;

type
  TframeTimeCalendarSelect = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    ulbDate: TUniLabel;
    ulbTime: TUniLabel;
    imgBooked: TUniImage;
  private
    FDM: TdmPgCarServiceBookingDrivers;
    FGUID: TGUID;
    FOnTimetableSelect: TCalendarSelectEvent;
    procedure SetDM(const Value: TdmPgCarServiceBookingDrivers);
    procedure SetGUID(const Value: TGUID);
    procedure SetOnTimetableSelect(const Value: TCalendarSelectEvent);

    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  public
    procedure OnClick(Sender: TObject);
    property DM: TdmPgCarServiceBookingDrivers read FDM write SetDM;
    property OnTimetableSelect: TCalendarSelectEvent read FOnTimetableSelect write SetOnTimetableSelect;
    property GUID: TGUID read FGUID write SetGUID;
  end;

implementation

{$R *.dfm}
{ TframeTimeSelect }

constructor TframeTimeCalendarSelect.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TframeTimeCalendarSelect.OnClick(Sender: TObject);
begin
  if Assigned(FOnTimetableSelect) then
    FOnTimetableSelect(Self, FGUID);

end;

procedure TframeTimeCalendarSelect.SetDM(const Value: TdmPgCarServiceBookingDrivers);
begin
  FDM := Value;
end;

procedure TframeTimeCalendarSelect.SetGUID(const Value: TGUID);
begin
  FGUID := Value;
end;

procedure TframeTimeCalendarSelect.SetOnTimetableSelect(const Value: TCalendarSelectEvent);
begin
  FOnTimetableSelect := Value;
end;

end.
