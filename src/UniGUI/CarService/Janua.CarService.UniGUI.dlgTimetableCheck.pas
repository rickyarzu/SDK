unit Janua.CarService.UniGUI.dlgTimetableCheck;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Spring.Collections, System.SysUtils,
  // VCL
  Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniGUIFrame,
  // Business Logic
  uniGUIBaseClasses, uniButton, uniBitBtn, UniFSButton, uniPanel, uniHTMLFrame,
  // Janua
  JOrm.CarService.Booking.Intf, Janua.CarService.UniGUI.SlotSelectionController,
  // CarService UniGUI
  uniImageList, uniLabel, UniFSToggle, uniImage, Janua.Core.Commons, Janua.UniGUI.Controller,
  Janua.CarService.UniGUI.TimeSlotController;

type
  TdlgUniGUICarserviceTimetableCheck = class(TUniForm)
    btnOK: TUniFSButton;
    unhtmlfrm1: TUniHTMLFrame;
    pnlSlotSelection: TUniSimplePanel;
    pnlTimeSelect1: TUniSimplePanel;
    imgBooked1: TUniImage;
    tgSelected1: TUniFSToggle;
    ulbDate1: TUniLabel;
    ulbDeliveryTime1: TUniLabel;
    ulbTime1: TUniLabel;
    pnlTimeSelect5: TUniSimplePanel;
    ulbDate5: TUniLabel;
    ulbTime5: TUniLabel;
    ulbDeliveryTime5: TUniLabel;
    tgSelected5: TUniFSToggle;
    imgBooked5: TUniImage;
    pnlTimeSelect4: TUniSimplePanel;
    ulbDate4: TUniLabel;
    ulbTime4: TUniLabel;
    ulbDeliveryTime4: TUniLabel;
    tgSelected4: TUniFSToggle;
    imgBooked4: TUniImage;
    pnlTimeSelect3: TUniSimplePanel;
    ulbDate3: TUniLabel;
    ulbTime3: TUniLabel;
    ulbDeliveryTime3: TUniLabel;
    tgSelected3: TUniFSToggle;
    imgBooked3: TUniImage;
    pnlTimeSelect2: TUniSimplePanel;
    ulbDate2: TUniLabel;
    ulbTime2: TUniLabel;
    ulbDeliveryTime2: TUniLabel;
    tgSelected2: TUniFSToggle;
    imgBooked2: TUniImage;
    pnlTimeSelect6: TUniSimplePanel;
    ulbDate6: TUniLabel;
    ulbTime6: TUniLabel;
    ulbDeliveryTime6: TUniLabel;
    tgSelected6: TUniFSToggle;
    imgBooked6: TUniImage;
    imglSlotBooking: TUniNativeImageList;
    TimeSelectUniGUIController1: TTimeSelectUniGUIController;
    TimeSelectUniGUIController2: TTimeSelectUniGUIController;
    TimeSelectUniGUIController3: TTimeSelectUniGUIController;
    TimeSelectUniGUIController4: TTimeSelectUniGUIController;
    TimeSelectUniGUIController5: TTimeSelectUniGUIController;
    TimeSelectUniGUIController6: TTimeSelectUniGUIController;
    // Replaced Janua.CarService.UniGUI.frameSlotSelection
    CarServiceSlotSelectionController1: TCarServiceSlotSelectionController;
    procedure btnOKClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    FBookingDate: TDate;
    function GetTimeTableSlots: IList<ItimetableSlot>;
    procedure SetTimeTableSlots(const Value: IList<ItimetableSlot>);
    procedure SetBookingDate(const Value: TDate);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  public
    { Public declarations }
    property TimeTableSlots: IList<ItimetableSlot> read GetTimeTableSlots write SetTimeTableSlots;
    property BookingDate: TDate read FBookingDate write SetBookingDate;
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}
{ TdlgUniGUICarserviceTimetableCheck }

procedure TdlgUniGUICarserviceTimetableCheck.btnOKClick(Sender: TObject);
begin
  Close;
end;

constructor TdlgUniGUICarserviceTimetableCheck.Create(AOwner: TComponent);
begin
  inherited;
end;

function TdlgUniGUICarserviceTimetableCheck.GetTimeTableSlots: IList<ItimetableSlot>;
begin
  Result := CarServiceSlotSelectionController1.TimeTableSlots;
end;

procedure TdlgUniGUICarserviceTimetableCheck.SetBookingDate(const Value: TDate);
begin
  FBookingDate := Value;
end;

procedure TdlgUniGUICarserviceTimetableCheck.SetTimeTableSlots(const Value: IList<ItimetableSlot>);
begin
  if not CarServiceSlotSelectionController1.Active then
    CarServiceSlotSelectionController1.Activate;

  if Value.Count > 0 then
  begin
    CarServiceSlotSelectionController1.TimeTableSlots := Value;
    unhtmlfrm1.Visible := False;
  end
  else
  begin
    unhtmlfrm1.Visible := True;
    pnlSlotSelection.Visible := False;
    unhtmlfrm1.HTML.Clear;
    unhtmlfrm1.HTML.Add('<p></p>');
    unhtmlfrm1.HTML.Add('<h1 style="text-align: center;"><span style="color: #ff0000;">');
    unhtmlfrm1.HTML.Add('Attenzione il giorno </span><span style="color: #0000ff;">' +
      DateTimeToStr(FBookingDate) + '</span><span style="color: #ff0000;"> Non è prenotabile');
    unhtmlfrm1.HTML.Add('</span></h1>');
  end;
end;

procedure TdlgUniGUICarserviceTimetableCheck.UniFormCreate(Sender: TObject);
begin
  CarServiceSlotSelectionController1.Enabled := True;
  CarServiceSlotSelectionController1.IsTest := True;
  CarServiceSlotSelectionController1.Activate;
end;

end.
