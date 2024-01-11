unit Janua.UniGUI.DriverConfirmationMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniTabControl, uniPageControl, uniLabel, uniButton, uniBitBtn, UniFSButton, uniPanel, uniMemo, uniHTMLMemo,
  uniGUIFrame, Janua.Carservice.UniGUI.frameTimeSlot, uniHTMLFrame, uniImage, uniImageList, UniSFButton,
  // Janua
  // JOrm.Documents.Impl Booking
  Janua.Cloud.Intf, JOrm.Carservice.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  Janua.Carservice.dmPgDrivers, Janua.Carservice.Intf, Janua.Cloud.Types,
  // Janua UniGUI
  Janua.Carservice.UniGUI.frameTimeCalendarSelect,  Janua.Carservice.UniGUI.frameCalendarList;

type
  TMainForm = class(TUniForm)
    pgConfirmation: TUniPageControl;
    pgMainPage: TUniTabSheet;
    pgConfirmatioin: TUniTabSheet;
    btnConfirmation: TUniFSButton;
    btnUndoConfirmation: TUniFSButton;
    framePickup: TframeTimeCalendarSelect;
    ulbTitle: TUniLabel;
    ulbRitiro: TUniLabel;
    unhtmlfrm1: TUniHTMLFrame;
    imgltop: TUniNativeImageList;
    imgTop: TUniImage;
    tabList: TUniTabSheet;
    tabTravel: TUniTabSheet;
    frameCSUniGuiCalendarList1: TframeCSUniGuiCalendarList;
    btnCalendarList: TUniSFButton;
    lbBookingChecked: TUniLabel;
    htmlFrameConfirmed: TUniHTMLFrame;
    tabNotFound: TUniTabSheet;
    UniHTMLFrame1: TUniHTMLFrame;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnConfirmationClick(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
  private
    FNotFound: Boolean;
    FDM: TdmPgCarServiceBookingDrivers;
    FMessage: TLandingMessage;
    { FBookingRecord: IBookingHeadView; }
    FOnConfirmation: TNotifyEvent;
    FCSDriverLandingMsgBuilder: IJanuaCSDriverLandingMsgBuilder;
    FBookNotFound: Boolean;
    procedure SetBookingRecord(const Value: IBookingHeadView);
    function LocalStringToGUID(const aParam: string): TGUID;
    procedure SetOnConfirmation(const Value: TNotifyEvent);
    procedure SetBookNotFound(const Value: Boolean);
  public
    procedure DoOnTimetableSelect(Sender: TObject; GUID: TGUID);
    { property BookingRecord: IBookingHeadView read FBookingRecord write SetBookingRecord; }
    property OnConfirmation: TNotifyEvent read FOnConfirmation write SetOnConfirmation;
    property BookNotFound: Boolean read FBookNotFound write SetBookNotFound;
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  System.StrUtils, uniGUIVars, JOrm.Carservice.Booking.Impl, Janua.UniGUI.MainModule,
  uniGUIApplication, Janua.Application.Framework;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnConfirmationClick(Sender: TObject);
begin
  if FDM.ConfirmBooking then
    pgConfirmation.ActivePageIndex := 1
  else
    ShowMessage('Attenzione errore di sitema per la conferma avvisare il servizio')
end;

procedure TMainForm.DoOnTimetableSelect(Sender: TObject; GUID: TGUID);
begin
  if FDM.LocateCalendar(GUID) then
    pgConfirmation.ActivePageIndex := 3

end;

function TMainForm.LocalStringToGUID(const aParam: string): TGUID;
begin
  Result := StringToGUID(IfThen(Copy(aParam, 1, 1) = '{', aParam, '{' + aParam + '}'));
end;

procedure TMainForm.SetBookingRecord(const Value: IBookingHeadView);
begin
  { FBookingRecord := Value; }
end;

procedure TMainForm.SetBookNotFound(const Value: Boolean);
begin
  FBookNotFound := Value;
end;

procedure TMainForm.SetOnConfirmation(const Value: TNotifyEvent);
begin
  FOnConfirmation := Value;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
  function OpenBookingRecord: Boolean;
  begin
    var
    sJguid := TUniGUIApplication(UniApplication).Parameters.Values['BookingID'];
    Result := (sJguid <> '') and FDM.OpenBooking(LocalStringToGUID(sJguid));
  end;

begin
  { At first I connect only the 'Main' View with the Dataset }

  FDM := TdmPgCarServiceBookingDrivers.Create(nil);
  FNotFound := (TUniGUIApplication(UniApplication).Parameters.Count = 0) or not OpenBookingRecord;
  if not FNotFound then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverLandingMsgBuilder, FCSDriverLandingMsgBuilder);
    FCSDriverLandingMsgBuilder.Dataset := FDM.qryBooking;
    FCSDriverLandingMsgBuilder.LoadSettings;
    FMessage := FCSDriverLandingMsgBuilder.GenerateLandingMessage;
    unhtmlfrm1.HTML.Add('<html><body>');
    unhtmlfrm1.HTML.Add(FMessage.Text);
    unhtmlfrm1.HTML.Add('</body></html>');
  end
  else
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSBookingURLNotFoundBuilder, FCSDriverLandingMsgBuilder);
    FCSDriverLandingMsgBuilder.LoadSettings;
    FMessage := FCSDriverLandingMsgBuilder.GenerateLandingMessage;
    UniHTMLFrame1.HTML.Clear;
    UniHTMLFrame1.HTML.Add(FMessage.Text);
  end;
end;

procedure TMainForm.UniFormDestroy(Sender: TObject);
begin
  FCSDriverLandingMsgBuilder := nil;
  FDM.Free;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  if FNotFound then
  begin
    pgConfirmation.ActivePageIndex := 4;
  end
  else
  begin
    pgConfirmation.ActivePageIndex := 0;
  end;
  imgTop.Height := Trunc(imgTop.Width / 2);
end;

initialization

RegisterAppFormClass(TMainForm);

end.
