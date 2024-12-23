unit Janua.CarService.UniGUI.dlgBookingFrameWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, VCL.Graphics, VCL.Controls, VCL.Forms, Spring.Collections,
  // Unigui
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniPageControl,
  uniButton, uniGUIFrame, uniCalendar, uniLabel, uniImage, uniEdit, uniBitBtn, uniColorButton,
  VCL.Imaging.pngimage, uniImageList, uniDateTimePicker, UniFSButton, uniCheckBox, uniRadioGroup, UniFSToggle,
  uniMultiItem, uniComboBox, UniFSCombobox, uniHTMLFrame, uniGroupBox,
  // Januaproject
  Janua.Core.Commons, JOrm.CarService.Booking.Intf, Janua.Core.Types, Janua.UniGUI.Controller,
  // Frames
  {Janua.CarService.UniGUI.frameTimeSlotPickup,  ->} // Janua.CarService.UniGUI.TimeSlotController,
  {Janua.CarService.UniGUI.frameCalendarSelect,  ->} // Janua.CarService.UniGUI.CalendarSelectController,
  {Janua.CarService.UniGUI.frameCarBookingClient ->} // Janua.CarService.UniGUI.CarBookingClientController,
  {Janua.CarService.UniGUI.frameAddressesSelect  ->} // Janua.CarService.UniGUI.AddressSelectController,
  {Janua.CarService.UniGUI.frameBookingSummary   ->} // Janua.CarService.UniGUI.BookingSummaryController,
  {Janua.CarService.UniGUI.frameTimeTable        ->} // Janua.CarService.UniGUI.TimeTableSelectController,
  Janua.CarService.UniGUI.SlotSelectionController,
  Janua.CarService.PgBooking, Janua.UniGUI.Interposers, uniMemo,
  Janua.CarService.UniGUI.frameCalendarSelect, Janua.CarService.UniGUI.frameTimeSlotPickup,
  Janua.CarService.UniGUI.frameCarBookingClient, Janua.CarService.UniGUI.frameAddressesSelect,
  Janua.CarService.UniGUI.BookingSummaryController;

type
  TBookingPageEnum = (pgSelectDate, pgSelectSlot, pgCustomer, pgLocations, pgSummary, pgPayment);

  TdlgUniGUIBookingFrameWizard = class(TUniForm)
    framePickup: TframeUNICalendarSelect;
    frameDelivery: TframeUNICalendarSelect; // -> CalendarSelectPickup
    framePickupTimeSelect: TframeUniGUITimeSlotPickup; // -> PickupSlotTimeSelect
    frameDeliveryTimeSelect: TframeUniGUITimeSlotPickup; // -> DeliveryTimeSelect
    frameUniGuiCarBookingClient1: TframeUniGuiCarBookingClient; // -> CarBookingClientController1
    frameUniGUICarServiceAddressSelect: TframeUniGUICarServiceAddressSelect;
    // -> AddressSelectUniGUICController1
    btnNext: TUniFSButton;
    btnBack: TUniFSButton;
    PgCBookingSteps: TUniPageControl;
    pgDateSelectionPage: TUniTabSheet;
    pgTimeSelection: TUniTabSheet;
    pgClientInformationsPage: TUniTabSheet;
    pgSummaryConfirmationPage: TUniTabSheet;
    pnlBottom: TUniSimplePanel;
    lbAmount: TUniLabel;
    lbVat: TUniLabel;
    lbTotalAmount: TUniLabel;
    lbBookingAmount: TUniLabel;
    lbBookingVAT: TUniLabel;
    lbBookingTotalAmount: TUniLabel;
    pgPaymentPage: TUniTabSheet;
    imgCreditCards: TUniImage;
    lbPaymentAmount: TUniLabel;
    lbPaymentAmountEuro: TUniLabel;
    btnPayment: TUniFSButton;
    UniPanel1: TUniPanel;
    tgHasReturn: TUniFSToggle;
    lbHasReturn: TUniLabel;
    pgTimetableLocations: TUniTabSheet;
    UniContainerPanel1: TUniContainerPanel;
    pnlPickupTimeSelect: TUniContainerPanel;
    pnlDeliveryTimeSelect: TUniContainerPanel;
    pnlBookingClient: TUniContainerPanel;
    pnlTimetableLocations: TUniContainerPanel;
    pnlBookingSummary: TUniContainerPanel;
    imglSlotBooking: TUniNativeImageList;
    UniNativeImageList1: TUniNativeImageList;
    memoLog: TUniMemo;
    cntAddressSelect: TUniContainerPanel;
    cntBookingSummary: TUniContainerPanel;
    UniFSButton1: TUniFSButton;
    cboBranchSelection: TUniFSComboBox;
    grpDelivery: TUniGroupBox;
    grpDeliveryDirection: TUniRadioGroup;
    ulbDeliveryDate: TUniLabel;
    ulbDeliveryTime: TUniLabel;
    grpPickup: TUniGroupBox;
    grpPickupDirection: TUniRadioGroup;
    UniLabel3: TUniLabel;
    ulbPickupTime: TUniLabel;
    htmlBookingSummary: TUniHTMLFrame;
    lbCurrentAccountBalanceDes: TUniLabel;
    lbCurrentAccountBalance: TUniLabel;
    lbAccountBalanceAfterDes: TUniLabel;
    lbAccountBalanceAfter: TUniLabel;
    UniContainerPanel24: TUniContainerPanel;
    ckbConditiions: TUniCheckBox;
    btnShowContract: TUniFSButton;
    UniContainerPanel25: TUniContainerPanel;
    UniImage7: TUniImage;
    UniContainerPanel26: TUniContainerPanel;
    UniImage8: TUniImage;
    UniContainerPanel27: TUniContainerPanel;
    UniImage9: TUniImage;
    cntframePickup: TUniContainerPanel;
    cntframeDelivery: TUniContainerPanel;
    BookingSummaryUniGUIController1: TBookingSummaryUniGUIController;

    // Procedures
    procedure btnNextClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboPickupReturnClick(Sender: TObject);
    procedure tgHasReturnToggled(const Value: Boolean);
    procedure btnPaymentClick(Sender: TObject);
    procedure PickupDateChange(Sender: TObject);
    procedure PickupDeliveryChange(Sender: TObject);
  public
    // Calenddar Select
    (*
      frameDelivery: TframeUNICalendarSelect; -> CalendarSelectDelivery
      framePickup: TframeUNICalendarSelect; -> CalendarSelectPickup
    *)
    // Address Select (TframeUniGUICarServiceAddressSelect)
    {
      frameUniGUICarServiceAddressSelect: -> AddressSelectUniGUICController1
      frameTimeTablePickup -> TimeTablePickupController
      frameTimeTableDeliver -> TimeTableDeliveryController
    }
    // Booking Client  : TframeUniGuiCarBookingClient
    {
      frameUniGuiCarBookingClient1; -> CarBookingClientController1
    }
    // Booking Summary  : TframeUniGUIBookingSummary
    {
      frameUniGUIBookingSummary: -> BookingSummaryUniGUIController1
    }
    // Time Select
    (*
      framePickupTimeSelect: TframeUniGUITimeSlotPickup; -> PickupSlotTimeSelect
      frameDeliveryTimeSelect: TframeUniGUITimeSlotPickup; -> DeliveryTimeSelect
    *)
  private
    FdmPgCarServiceBooking: TdmPgCarServiceBookingStorage;
    procedure SetdmPgCarServiceBooking(const Value: TdmPgCarServiceBookingStorage);
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateBooking;
    property dmPgCarServiceBooking: TdmPgCarServiceBookingStorage read FdmPgCarServiceBooking
      write SetdmPgCarServiceBooking;
  end;

implementation

uses
  uniGUIApplication, System.Math, System.StrUtils, Janua.UniGUI.dlgHTMLMessage,
  Janua.UniGUI.dlgHTMLDisclaimer, Spring;

{$R *.dfm}
{ TdlgUniGUIBookingWizard }

procedure TdlgUniGUIBookingFrameWizard.ActivateBooking;
var
  lDate: TNullableDate;
begin
  if Assigned(FdmPgCarServiceBooking) then
  begin
    lDate := FdmPgCarServiceBooking.DeliveryDate;
    if lDate.HasValue then
      frameDelivery.cldPickup1.Date := FdmPgCarServiceBooking.DeliveryDate
    else
      FdmPgCarServiceBooking.DeliveryDate := frameDelivery.cldPickup1.Date;
    lDate := FdmPgCarServiceBooking.PickupDate;
    if lDate.HasValue then
      framePickup.cldPickup1.Date := FdmPgCarServiceBooking.PickupDate
    else
      FdmPgCarServiceBooking.PickupDate := framePickup.cldPickup1.Date;
  end;
end;

procedure TdlgUniGUIBookingFrameWizard.btnBackClick(Sender: TObject);
begin
  // pgSelectDate, pgSelectSlot, pgCustomer, pgSummary
  case PgCBookingSteps.TabIndex of
    Ord(pgSelectDate):
      begin
        PgCBookingSteps.ActivePageIndex := Ord(pgSelectDate);
      end;
    Ord(pgSelectSlot):
      begin
        PgCBookingSteps.ActivePageIndex := Ord(pgSelectDate);
      end;
    Ord(pgCustomer):
      begin
        PgCBookingSteps.ActivePageIndex := Ord(pgSelectSlot);
      end;
    Ord(pgLocations):
      begin
        PgCBookingSteps.ActivePageIndex := Ord(pgCustomer);
      end;
    Ord(pgSummary):
      begin
        PgCBookingSteps.ActivePageIndex := Ord(pgLocations);
      end;
    Ord(pgPayment):
      begin
        PgCBookingSteps.ActivePageIndex := Ord(pgPayment);
      end;
  end;
end;

procedure TdlgUniGUIBookingFrameWizard.btnNextClick(Sender: TObject);
var
  lMessageDlg: TfrmUniGUIHtmlMessage;
  PickupDate, DeliveryDate: TDate;
begin
  // pgSelectDate, pgSelectSlot, pgCustomer, pgSummary
  case PgCBookingSteps.TabIndex of
    Ord(pgSelectDate):
      begin
        if not FdmPgCarServiceBooking.HasReturn or
          (frameDelivery.cldPickup1.Date >= framePickup.cldPickup1.Date) then
        begin
          FdmPgCarServiceBooking.PickupDate := framePickup.cldPickup1.Date;
          FdmPgCarServiceBooking.UpdatePickupSlots;
          framePickupTimeSelect.TimeTableSlots := FdmPgCarServiceBooking.PickupSlots;

          if FdmPgCarServiceBooking.HasReturn then
          begin
            FdmPgCarServiceBooking.DeliveryDate := frameDelivery.cldPickup1.Date;
            FdmPgCarServiceBooking.UpdateDeliverySlots;
            frameDeliveryTimeSelect.TimeTableSlots := FdmPgCarServiceBooking.DeliverySlots;
          end;

          if framePickup.CheckBookingDate and
            (not FdmPgCarServiceBooking.HasReturn or frameDelivery.CheckBookingDate) then
          begin
            framePickupTimeSelect.BookingDate := FdmPgCarServiceBooking.PickupDate;
            if FdmPgCarServiceBooking.HasReturn then
              frameDeliveryTimeSelect.BookingDate := FdmPgCarServiceBooking.DeliveryDate;
            PgCBookingSteps.ActivePageIndex := Ord(pgSelectSlot);
          end;
        end
        else
        begin
          lMessageDlg := TfrmUniGUIHtmlMessage.Create(UniApplication);
          lMessageDlg.Lines.Clear;
          lMessageDlg.Lines.Add('<p></p>');
          lMessageDlg.Lines.Add('<h1 style="text-align: center;"><span style="color: #ff0000;">');
          lMessageDlg.Lines.Add('Attenzione la data di ritorno </span><span style="color: #0000ff;">' +
            DateTimeToStr(frameDelivery.cldPickup1.Date) + '</span><span style="color: #ff0000;">' +
            '<br /> è anteriore alla data di Pickup  </span><span style="color: #0000ff;">' +
            DateTimeToStr(framePickup.cldPickup1.Date) + '</span><span style="color: #ff0000;">');
          lMessageDlg.Lines.Add('</span></h1>');
          lMessageDlg.ShowModal();
        end;

      end;
    Ord(pgSelectSlot):
      begin
        PickupDate := FdmPgCarServiceBooking.PickupDate;
        DeliveryDate := FdmPgCarServiceBooking.DeliveryDate;
        if not FdmPgCarServiceBooking.CheckPickuSlots then
          ShowMessage('Occorre selezionare una data/ora di Ritiro')
        else if FdmPgCarServiceBooking.HasReturn and not FdmPgCarServiceBooking.CheckDeliverySlots then
          ShowMessage('Occorre selezionare una data/ora di Riconsegna')
        else if FdmPgCarServiceBooking.HasReturn and (PickupDate > DeliveryDate) then
          ShowMessage('Data di riconsegna  anteriore alla data di Ritiro Veicolo')
        else if FdmPgCarServiceBooking.HasReturn and (PickupDate = DeliveryDate) and
          (frameDeliveryTimeSelect.SlotID <= framePickupTimeSelect.SlotID) then
          ShowMessage('Ora di riconsegna  anteriore all''Ora di Ritiro Veicolo')
        else
        begin
          frameUniGuiCarBookingClient1.CarBooking := FdmPgCarServiceBooking.BookingRecord;
          frameUniGuiCarBookingClient1.UsersList := FdmPgCarServiceBooking.UsersList;
          frameUniGuiCarBookingClient1.CustomerVehicleDataset := FdmPgCarServiceBooking.qryCustomerVehicles;
          var
          hr := FdmPgCarServiceBooking.HasReturn;
          frameUniGuiCarBookingClient1.edReturnAddress.Visible := hr;
          frameUniGuiCarBookingClient1.btnReturnAddress.Visible := hr;
          PgCBookingSteps.ActivePageIndex := Ord(pgCustomer);
        end;
      end;
    Ord(pgCustomer):
      begin
        frameUniGuiCarBookingClient1.PostRecord;

        if FdmPgCarServiceBooking.BookingRecord.checkBooking then
        begin
{$IFDEF DEBUG }
          Guard.CheckTrue(FdmPgCarServiceBooking.BookingRecord.AnagraphClient.AnFullAddress.AsString <> '',
            'AnFullAddress');
          FdmPgCarServiceBooking.BookingRecord.AnagraphClient.SyncMainAddress;
          Guard.CheckTrue(FdmPgCarServiceBooking.BookingRecord.AnagraphClient.MainAddress.FullAddress.AsString
            <> '', 'MainAddress');

          var
          lMainAddress := FdmPgCarServiceBooking.BookingRecord.AnagraphClient.MainAddress.
            FullAddress.AsString;
          var
          lReturnAddress := FdmPgCarServiceBooking.BookingRecord.AnagraphClient.ReturnAddress.
            FullAddress.AsString;

{$ENDIF}
          FdmPgCarServiceBooking.PostRecord(True);
{$IFDEF DEBUG }
          lMainAddress := FdmPgCarServiceBooking.BookingRecord.AnagraphClient.MainAddress.
            FullAddress.AsString;
          lReturnAddress := FdmPgCarServiceBooking.BookingRecord.AnagraphClient.ReturnAddress.
            FullAddress.AsString;

          if lMainAddress <> lReturnAddress then
          begin
            var
            lCount := FdmPgCarServiceBooking.BookingRecord.Addresses.RecordCount;
            // Guard.CheckTrue(3 = lCount, 'Error address count ' + lCount.ToString + ' ' + lReturnAddress);
          end;

{$ENDIF}
          frameUniGUICarServiceAddressSelect.BookingHead := FdmPgCarServiceBooking.BookingRecord;
          PgCBookingSteps.ActivePageIndex := Ord(pgLocations);
        end
        else
          ShowMessage('Attenzione alcuni campi non sono compilati correttamente')
      end;
    Ord(pgLocations):
      begin
        if frameUniGUICarServiceAddressSelect.frameTimeTablePickup.Modified then
          FdmPgCarServiceBooking.UpdatePickup;
        if frameUniGUICarServiceAddressSelect.frameTimeTableDelivery.Modified then
          FdmPgCarServiceBooking.UpdateReturn;
        BookingSummaryUniGUIController1.dsBookingAmount := FdmPgCarServiceBooking.qryBookingAmount;
        BookingSummaryUniGUIController1.BookingHead := FdmPgCarServiceBooking.BookingRecord;
        { FdmPgCarServiceBooking.PostRecord(True); }
        BookingSummaryUniGUIController1.InsertBranchProc := FdmPgCarServiceBooking.InsertBranchProc;
        BookingSummaryUniGUIController1.HtmlText := FdmPgCarServiceBooking.GenerateBookingSummaryMessage;
        BookingSummaryUniGUIController1.BranchesList := FdmPgCarServiceBooking.BranchesList;
        BookingSummaryUniGUIController1.HtmlContract := FdmPgCarServiceBooking.GetServiceContract;
        BookingSummaryUniGUIController1.Refresh;
        PgCBookingSteps.ActivePageIndex := Ord(pgSummary);
      end;
    Ord(pgSummary):
      begin
        if BookingSummaryUniGUIController1.ckbConditiions.Checked then
        begin
          FdmPgCarServiceBooking.UpdateAccountBalance;
          lbPaymentAmountEuro.Caption := FdmPgCarServiceBooking.TotalAmountDue;
          lbCurrentAccountBalance.Caption := FdmPgCarServiceBooking.CurrentAccountBalance;
          PgCBookingSteps.ActivePageIndex := Ord(pgPayment);
          btnNext.Caption := 'Termina';
        end
        else
        begin
          lMessageDlg := TfrmUniGUIHtmlMessage.Create(UniApplication);
          lMessageDlg.Lines.Clear;
          lMessageDlg.Lines.Add('<p></p>');
          lMessageDlg.Lines.Add('<h1 style="text-align: center;"><span style="color: #ff0000;">');
          lMessageDlg.Lines.Add
            ('Attenzione occorre selezionare la spunta di accettazione delle regole contrattuali' +
            ' </span><span style="color: #0000ff;">' +
            'la spunta è in basso a sinistra, potete anche prendere visione del contratto con il bottone a destra'
            + '</span><span style="color: #ff0000;">' + '<br /> Grazie ');
          lMessageDlg.Lines.Add('</span></h1>');
          lMessageDlg.ShowModal();
        end;
      end;
    Ord(pgPayment):
      begin
        FdmPgCarServiceBooking.ConfirmBooking;
        ModalResult := mrOK;
        Close;
      end;
  end;
  btnBack.Visible := not(PgCBookingSteps.ActivePageIndex <= 0);
end;

procedure TdlgUniGUIBookingFrameWizard.btnPaymentClick(Sender: TObject);
begin
  FdmPgCarServiceBooking.doBookingPayment;
  lbAccountBalanceAfter.Text := FdmPgCarServiceBooking.CurrentAccountBalance;
  FdmPgCarServiceBooking.ConfirmBooking;
  ShowMessage('Grazie per Aver prenotato il viaggio');
  {
    property TotalAmountDue: string read GetTotalAmountDue;
    property CurrentAccountBalance: string read GetCurrentAccountBalance;
  }
end;

procedure TdlgUniGUIBookingFrameWizard.cboPickupReturnClick(Sender: TObject);
begin
  // FdmPgCarServiceBooking.PickupDate :=
end;

procedure TdlgUniGUIBookingFrameWizard.PickupDateChange(Sender: TObject);
begin
  (*
    if PickupDate.DateTime <> FdmPgCarServiceBooking.PickupDate then
    begin
    framePickupTimeSelect.ClearAllFrames;
    FdmPgCarServiceBooking.PickupDate := PickupDate.DateTime;
    framePickup.cldPickup1.Date := PickupDate.DateTime;
    FdmPgCarServiceBooking.UpdatePickupSlots;
    framePickupTimeSelect.TimeTableSlots := FdmPgCarServiceBooking.PickupSlots;
    end;
  *)
  framePickup.cldPickup1.Date := framePickupTimeSelect.PickupDate.DateTime;
end;

procedure TdlgUniGUIBookingFrameWizard.PickupDeliveryChange(Sender: TObject);
begin
  (*
    if PickupDelivery.DateTime <> FdmPgCarServiceBooking.DeliveryDate then
    begin
    frameDeliveryTimeSelect.ClearAllFrames;
    FdmPgCarServiceBooking.DeliveryDate := PickupDelivery.DateTime;
    frameDelivery.cldPickup1.Date := PickupDelivery.DateTime;
    FdmPgCarServiceBooking.UpdateDeliverySlots;
    frameDeliveryTimeSelect.TimeTableSlots := FdmPgCarServiceBooking.DeliverySlots;
    end;
  *)
  framePickup.cldPickup1.Date := frameDeliveryTimeSelect.PickupDate.DateTime;
end;

procedure TdlgUniGUIBookingFrameWizard.SetdmPgCarServiceBooking(const Value: TdmPgCarServiceBookingStorage);
begin
  FdmPgCarServiceBooking := Value;
  framePickup.DM := Value;
  frameDelivery.DM := Value;
  tgHasReturn.Toggled := FdmPgCarServiceBooking.HasReturn;
  ActivateBooking;
  framePickupTimeSelect.dmPgCarServiceBooking := FdmPgCarServiceBooking;
  frameDeliveryTimeSelect.dmPgCarServiceBooking := FdmPgCarServiceBooking;
end;

procedure TdlgUniGUIBookingFrameWizard.tgHasReturnToggled(const Value: Boolean);
begin
  FdmPgCarServiceBooking.HasReturn := tgHasReturn.Toggled;
  cntframeDelivery.Visible := tgHasReturn.Toggled;
  pnlDeliveryTimeSelect.Visible := tgHasReturn.Toggled;
end;

procedure TdlgUniGUIBookingFrameWizard.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  FdmPgCarServiceBooking.CloseLogBooking;
  BookingSummaryUniGUIController1.BookingHead := nil;
  FdmPgCarServiceBooking := nil;
  framePickup.DM := nil;
  frameDelivery.DM := nil;
end;

procedure TdlgUniGUIBookingFrameWizard.UniFormCreate(Sender: TObject);
begin
  framePickup.IsPickup := True;
  frameDelivery.IsPickup := False;
  framePickupTimeSelect.IsPickup := True;
  framePickupTimeSelect.OnDateChange := self.PickupDateChange;
  frameDeliveryTimeSelect.IsPickup := False;
  frameDeliveryTimeSelect.OnDateChange := self.PickupDateChange;
  (*
    // Time Select
    framePickupTimeSelect := TframeUniGUITimeSlotPickup.Create(self);
    framePickupTimeSelect.Parent := pnlPickupTimeSelect;
    framePickupTimeSelect.Align := TAlign.alClient;

    frameDeliveryTimeSelect := TframeUniGUITimeSlotPickup.Create(self);
    frameDeliveryTimeSelect.Parent := pnlDeliveryTimeSelect;
    frameDeliveryTimeSelect.Align := TAlign.alClient;

    // Booking Client
    frameUniGuiCarBookingClient1 := TframeUniGuiCarBookingClient.Create(self);
    frameUniGuiCarBookingClient1.Parent := pnlBookingClient;
    frameUniGuiCarBookingClient1.Align := TAlign.alClient;

    // Address Select  pnlTimetableLocations
    frameUniGUICarServiceAddressSelect := TframeUniGUICarServiceAddressSelect.Create(self);
    frameUniGUICarServiceAddressSelect.Parent := pnlTimetableLocations;
    frameUniGUICarServiceAddressSelect.Align := TAlign.alClient;

    // Booking Summary  pnlBookingSummary
    BookingSummaryUniGUIController1 := TBookingSummaryUniGUIController1.Create(self);
    BookingSummaryUniGUIController1.Parent := pnlBookingSummary;
    BookingSummaryUniGUIController1.Align := TAlign.alClient;
  *)

end;

procedure TdlgUniGUIBookingFrameWizard.UniFormShow(Sender: TObject);
begin
  PgCBookingSteps.TabIndex := 0;
end;

end.
