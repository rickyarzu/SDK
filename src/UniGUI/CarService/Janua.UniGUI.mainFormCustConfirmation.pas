unit Janua.UniGUI.mainFormCustConfirmation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniTabControl, uniPageControl, uniLabel, uniButton, uniBitBtn, UniFSButton, uniPanel, uniMemo, uniHTMLMemo,
  uniGUIFrame, uniHTMLFrame, uniImageList, uniImage,
  // JOrm.Documents.Impl Booking
  Janua.Carservice.Intf, JOrm.Carservice.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  Janua.UniGUI.TextConfirmation, Janua.Carservice.PgCustomers, Janua.Carservice.UniGUI.frameTimeSlot,
  Janua.Cloud.Types;

type
  TMainCustConfForm = class(TUniForm)
    pgConfirmation: TUniPageControl;
    tsBookingConfirmation: TUniTabSheet;
    btnConfirmation: TUniFSButton;
    btnUndoConfirmation: TUniFSButton;
    frameDelivery: TframeTimeSelect;
    framePickup: TframeTimeSelect;
    frameInsurance: TframeUniGUITextConfirmation;
    frameOverhaulCar: TframeUniGUITextConfirmation;
    ulbTitle: TUniLabel;
    ulbRitiro: TUniLabel;
    unhtmlfrm1: TUniHTMLFrame;
    pgOK: TUniTabSheet;
    pgNotFound: TUniTabSheet;
    imgltop: TUniNativeImageList;
    ulbClausole: TUniLabel;
    tsContract: TUniTabSheet;
    UniHTMLFrame1: TUniHTMLFrame;
    btnReadContract: TUniFSButton;
    btnViewContract: TUniFSButton;
    imgTop: TUniImage;
    UniHTMLFrame2: TUniHTMLFrame;
    UniHTMLFrame3: TUniHTMLFrame;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnConfirmationClick(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure btnViewContractClick(Sender: TObject);
    procedure btnReadContractClick(Sender: TObject);
  private
    { Private declarations }
    FNotFound: Boolean;
    FDM: TdmPgCarServiceCustomers;
    FBookingRecord: IBookingHeadView;
    FMessage: TLandingMessage;
    FCSCustomerLandingMsgBuilder: IJanuaCSCustomerLandingMsgBuilder;
    FCSCustomerConfMsgBuilder: IJanuaCSCustConfirmationMsgBuilder;
    FPickupSlot: ITimeTableSlot;
    FDeliverySlot: ITimeTableSlot;
    procedure SetBookingRecord(const Value: IBookingHeadView);
    function LocalStringToGUID(const aParam: string): TGUID;
    procedure SetCSCustomerLandingMsgBuilder(const Value: IJanuaCSCustomerLandingMsgBuilder);
  public
    { Public declarations }
    property BookingRecord: IBookingHeadView read FBookingRecord write SetBookingRecord;
    property CSCustomerLandingMsgBuilder: IJanuaCSCustomerLandingMsgBuilder read FCSCustomerLandingMsgBuilder
      write SetCSCustomerLandingMsgBuilder;
  end;

function MainCustConfForm: TMainCustConfForm;

implementation

{$R *.dfm}

uses
  System.StrUtils, uniGUIVars, JOrm.Carservice.Booking.Impl, Janua.UniGUI.MainModule,
  uniGUIApplication, Janua.Application.Framework;

function MainCustConfForm: TMainCustConfForm;
begin
  Result := TMainCustConfForm(UniMainModule.GetFormInstance(TMainCustConfForm));
end;

procedure TMainCustConfForm.btnConfirmationClick(Sender: TObject);
  procedure SetCustConfirmationMsgBuilder;
  begin
    if FBookingRecord.HasReturn then
      TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustConfirmationMsgBuilder, FCSCustomerConfMsgBuilder)
    else
      TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustConfirmationNRMsgBuilder,
        FCSCustomerConfMsgBuilder);
  end;

begin
  if framePickup.tgSelected.Toggled and frameInsurance.tgSelected.Toggled and frameOverhaulCar.tgSelected.Toggled
  then
  begin
    SetCustConfirmationMsgBuilder;
    FCSCustomerConfMsgBuilder.Dataset := FDM.qryBooking;
    FCSCustomerConfMsgBuilder.LoadSettings;
    FMessage := FCSCustomerConfMsgBuilder.GenerateLandingMessage;
    pgConfirmation.ActivePageIndex := 1;
    UniHTMLFrame2.HTML.Clear;
    UniHTMLFrame2.HTML.Add(FMessage.Text);
  end
  else
    ShowMessage('Attenzione occorre confermare: ' + sLineBreak + ' la copertura assicurativa del veicolo' +
      sLineBreak + 'la revisione del veicolo');
end;

procedure TMainCustConfForm.btnReadContractClick(Sender: TObject);
begin
  pgConfirmation.ActivePage := tsBookingConfirmation
end;

procedure TMainCustConfForm.btnViewContractClick(Sender: TObject);
begin
  pgConfirmation.ActivePage := tsContract;
end;

function TMainCustConfForm.LocalStringToGUID(const aParam: string): TGUID;
begin
  Result := StringToGUID(IfThen(Copy(aParam, 1, 1) = '{', aParam, '{' + aParam + '}'));
end;

procedure TMainCustConfForm.SetBookingRecord(const Value: IBookingHeadView);
begin
  FBookingRecord := Value;
end;

procedure TMainCustConfForm.SetCSCustomerLandingMsgBuilder(const Value: IJanuaCSCustomerLandingMsgBuilder);
begin
  FCSCustomerLandingMsgBuilder := Value;
end;

procedure TMainCustConfForm.UniFormCreate(Sender: TObject);

  function OpenBookingRecord: Boolean;
  begin
    var
    sJguid := TUniGUIApplication(UniApplication).Parameters.Values['BookingID'];
    Result := (sJguid <> '') and FDM.OpenBooking(LocalStringToGUID(sJguid));
  end;

begin
  { At first I connect only the 'Main' View with the Dataset }

  FDM := TdmPgCarServiceCustomers.Create(nil);
  FNotFound := (TUniGUIApplication(UniApplication).Parameters.Count = 0) or not OpenBookingRecord;
  if not FNotFound then
  begin
    FBookingRecord := FDM.BookingRecord;

    if FBookingRecord.HasReturn then
      TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerLandingMsgBuilder,
        FCSCustomerLandingMsgBuilder)
    else
      TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerLandingMsgNRBuilder,
        FCSCustomerLandingMsgBuilder);

    FCSCustomerLandingMsgBuilder.Dataset := FDM.qryBooking;
    FCSCustomerLandingMsgBuilder.LoadSettings;
    FMessage := FCSCustomerLandingMsgBuilder.GenerateLandingMessage;
    unhtmlfrm1.HTML.Clear;
    unhtmlfrm1.HTML.Add(FMessage.Text);
  end
  else
  begin
    FBookingRecord := TBookingHeadView.Create('CarBooking');
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSBookingURLNotFoundBuilder, FCSCustomerLandingMsgBuilder);
    FCSCustomerLandingMsgBuilder.LoadSettings;
    FMessage := FCSCustomerLandingMsgBuilder.GenerateLandingMessage;
    UniHTMLFrame3.HTML.Clear;
    UniHTMLFrame3.HTML.Add(FMessage.Text);
  end;

  FPickupSlot := TTimeTableSlot.Create();
  FDeliverySlot := TTimeTableSlot.Create();
end;

procedure TMainCustConfForm.UniFormDestroy(Sender: TObject);
begin
  FDM.Free;
end;

procedure TMainCustConfForm.UniFormShow(Sender: TObject);
begin
  if FNotFound then
  begin
    pgConfirmation.ActivePageIndex := 2;
  end
  else if FBookingRecord.Id.AsInteger > 0 then
  begin
    FPickupSlot.Assign(FBookingRecord.PickupDateTime);
    FDeliverySlot.Assign(FBookingRecord.DeliveryDateTime);

    FPickupSlot.Booked.AsBoolean := False;
    FPickupSlot.IsFree.AsBoolean := True;
    FDeliverySlot.Booked.AsBoolean := False;
    FDeliverySlot.IsFree.AsBoolean := True;

    if Assigned(framePickup) then
    begin
      framePickup.IsTest := False;
      framePickup.TimeTableSlot := FPickupSlot;
    end;

    // A Booking can be One Way Pickup or have a Delivery (Return) Slot if not then
    if Assigned(frameDelivery) then
    begin
      frameDelivery.IsTest := False;
      if FBookingRecord.HasReturn then
        frameDelivery.TimeTableSlot := FDeliverySlot
      else
        frameDelivery.Visible := False;
    end;

    pgConfirmation.ActivePageIndex := 0;
  end;

  imgTop.Height := Trunc(1.2 * imgTop.Width / 2);

end;

initialization

RegisterAppFormClass(TMainCustConfForm);

end.
