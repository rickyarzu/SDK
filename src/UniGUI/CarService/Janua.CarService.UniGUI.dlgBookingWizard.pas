unit Janua.CarService.UniGUI.dlgBookingWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, VCL.Graphics, VCL.Controls, VCL.Forms, Spring.Collections,
  // Unigui
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniPageControl,
  uniButton, uniGUIFrame, uniCalendar, uniLabel, uniImage, uniEdit, uniBitBtn, uniColorButton,
  Vcl.Imaging.pngimage, uniImageList, uniDateTimePicker, UniFSButton, uniCheckBox, uniRadioGroup, UniFSToggle,
  uniMultiItem, uniComboBox, UniFSCombobox, uniHTMLFrame, uniGroupBox,
  // Januaproject
  Janua.Core.Commons, JOrm.CarService.Booking.Intf, Janua.Core.Types, Janua.UniGUI.Controller,
  // Frames
  {Janua.CarService.UniGUI.frameTimeSlotPickup,  ->} Janua.CarService.UniGUI.TimeSlotController,
  {Janua.CarService.UniGUI.frameCalendarSelect,  ->} Janua.CarService.UniGUI.CalendarSelectController,
  {Janua.CarService.UniGUI.frameCarBookingClient ->} Janua.CarService.UniGUI.CarBookingClientController,
  {Janua.CarService.UniGUI.frameAddressesSelect  ->} Janua.CarService.UniGUI.AddressSelectController,
  {Janua.CarService.UniGUI.frameBookingSummary   ->} Janua.CarService.UniGUI.BookingSummaryController,
  Janua.CarService.UniGUI.SlotSelectionController, Janua.CarService.UniGUI.TimeTableSelectController,
  Janua.CarService.PgBooking, Janua.UniGUI.Interposers;

type
  TBookingPageEnum = (pgSelectDate, pgSelectSlot, pgCustomer, pgLocations, pgSummary, pgPayment);

  TdlgUniGUIBookingWizard = class(TUniForm)
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
    edtCardNumber: TUniEdit;
    edtCardHolderName: TUniEdit;
    edtPaymentYear: TUniEdit;
    edtMonth: TUniEdit;
    edtPaymentSecurityCode: TUniEdit;
    lbPaymentAmount: TUniLabel;
    lbPaymentAmountEuro: TUniLabel;
    btnPayment: TUniFSButton;
    UniPanel1: TUniPanel;
    pnlDateSelection: TUniContainerPanel;
    tgHasReturn: TUniFSToggle;
    lbHasReturn: TUniLabel;
    pgTimetableLocations: TUniTabSheet;
    pnlPickup: TUniContainerPanel;
    pnlDelivery: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    pnlPickupTimeSelect: TUniContainerPanel;
    pnlDeliveryTimeSelect: TUniContainerPanel;
    pnlBookingClient: TUniContainerPanel;
    pnlTimetableLocations: TUniContainerPanel;
    pnlBookingSummary: TUniContainerPanel;
    cldPickup1: TUniCalendar;
    lbPickupDate: TUniLabel;
    lbPickupDateSelect: TUniLabel;
    btnCheckPickupDate: TUniButton;
    btnCheckReturnDate: TUniButton;
    cldReturn1: TUniCalendar;
    UniLabel1: TUniLabel;
    lbReturnDate: TUniLabel;
    ulbPickupDate: TUniLabel;
    PickupDate: TUniDateTimePicker;
    ulbDate: TUniLabel;
    lbPickup: TUniLabel;
    lbDelivery: TUniLabel;
    pnlCarServiceSlotSelection: TUniSimplePanel;
    UniLabel2: TUniLabel;
    PickupDelivery: TUniDateTimePicker;
    ulbDateR: TUniLabel;
    lbPickupR: TUniLabel;
    lbDeliveryR: TUniLabel;
    UniSimplePanel1: TUniSimplePanel;
    PickupSlotTimeSelect: TCarServiceSlotSelectionController;
    imglSlotBooking: TUniNativeImageList;
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
    TimeSelectUniGUIController1: TTimeSelectUniGUIController;
    TimeSelectUniGUIController2: TTimeSelectUniGUIController;
    TimeSelectUniGUIController3: TTimeSelectUniGUIController;
    TimeSelectUniGUIController4: TTimeSelectUniGUIController;
    TimeSelectUniGUIController5: TTimeSelectUniGUIController;
    TimeSelectUniGUIController6: TTimeSelectUniGUIController;
    DeliveryTimeSelect: TCarServiceSlotSelectionController;
    UniNativeImageList1: TUniNativeImageList;
    UniSimplePanel2: TUniSimplePanel;
    UniSimplePanel3: TUniSimplePanel;
    UniImage1: TUniImage;
    UniFSToggle1: TUniFSToggle;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniSimplePanel4: TUniSimplePanel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniFSToggle2: TUniFSToggle;
    UniImage2: TUniImage;
    UniSimplePanel5: TUniSimplePanel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniFSToggle3: TUniFSToggle;
    UniImage3: TUniImage;
    UniSimplePanel6: TUniSimplePanel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniFSToggle4: TUniFSToggle;
    UniImage4: TUniImage;
    UniSimplePanel7: TUniSimplePanel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniFSToggle5: TUniFSToggle;
    UniImage5: TUniImage;
    UniSimplePanel8: TUniSimplePanel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniFSToggle6: TUniFSToggle;
    UniImage6: TUniImage;

    CalendarSelectPickup: TUNIControllerCalendarSelect;
    CalendarSelectDelivery: TUNIControllerCalendarSelect;
    cntAddressSelect: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    cboAddressSelection: TUniFSComboBox;
    btnNewBranch: TUniFSButton;
    lbServiceAddress: TUniLabel;
    lbIndirizzoPickup: TUniLabel;
    lbIndirizzoReturn: TUniLabel;
    pnlTimeTablePickup: TUniSimplePanel;
    cntTimeTable: TUniContainerPanel;
    pnlTop: TUniContainerPanel;
    lbTimeTableType: TUniLabel;
    lbTimetableDAte: TUniLabel;
    lbDeliveryTime: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    cboPickup: TUniComboBox;
    lbDeparture: TUniLabel;
    UniContainerPanel4: TUniContainerPanel;
    cboReturn: TUniComboBox;
    lbVehiclePickupPlace: TUniLabel;
    pnlTimeTableDelivery: TUniSimplePanel;
    UniContainerPanel5: TUniContainerPanel;
    pnlTopD: TUniContainerPanel;
    lbTimeTableTypeD: TUniLabel;
    lbTimetableDAteD: TUniLabel;
    lbDeliveryTimeD: TUniLabel;
    UniContainerPanel6: TUniContainerPanel;
    cboPickupD: TUniComboBox;
    lbDepartureD: TUniLabel;
    UniContainerPanel7: TUniContainerPanel;
    cboReturnD: TUniComboBox;
    lbVehiclePickupPlaceD: TUniLabel;
    cntCarBookingClient: TUniContainerPanel;
    dblcbAnagraphCustomers: TUniFSComboBox;
    lbSelectCustomer: TUniLabel;
    UniContainerPanel8: TUniContainerPanel;
    UniContainerPanel9: TUniContainerPanel;
    edFirstName: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    EdLastName: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    UniContainerPanel12: TUniContainerPanel;
    btnSearch: TUniFSButton;
    UniContainerPanel13: TUniContainerPanel;
    EdFullAddress: TUniEdit;
    UniContainerPanel14: TUniContainerPanel;
    UniContainerPanel15: TUniContainerPanel;
    EdCustomerPhone: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    edCustomerEmail: TUniEdit;
    UniContainerPanel17: TUniContainerPanel;
    UniContainerPanel18: TUniContainerPanel;
    edCarNumberPlate: TUniEdit;
    UniContainerPanel19: TUniContainerPanel;
    edCarColor: TUniEdit;
    UniContainerPanel20: TUniContainerPanel;
    UniContainerPanel21: TUniContainerPanel;
    edReturnAddress: TUniEdit;
    UniContainerPanel22: TUniContainerPanel;
    btnReturnAddress: TUniFSButton;
    cntBookingSummary: TUniContainerPanel;
    UniFSButton1: TUniFSButton;
    btnShowContract: TUniFSButton;
    cboBranchSelection: TUniFSComboBox;
    ckbConditiions: TUniCheckBox;
    grpDelivery: TUniGroupBox;
    grpDeliveryDirection: TUniRadioGroup;
    ulbDeliveryDate: TUniLabel;
    ulbDeliveryTime: TUniLabel;
    grpPickup: TUniGroupBox;
    grpPickupDirection: TUniRadioGroup;
    UniLabel3: TUniLabel;
    ulbPickupTime: TUniLabel;
    htmlBookingSummary: TUniHTMLFrame;

    // Controllers ***********************************************************************************
    TimeTableDeliveryController: TTimeTableUniGUIController;
    TimeTablePickupController: TTimeTableUniGUIController;
    CarBookingClientController1: TCarBookingClientController;
    AddressSelectUniGUICController1: TAddressSelectUniGUICController;
    BookingSummaryUniGUIController1: TBookingSummaryUniGUIController;

    // TimeTable - Selection
    TimeSelectUniGUIController7: TTimeSelectUniGUIController;
    TimeSelectUniGUIController8: TTimeSelectUniGUIController;
    TimeSelectUniGUIController9: TTimeSelectUniGUIController;
    TimeSelectUniGUIController10: TTimeSelectUniGUIController;
    TimeSelectUniGUIController11: TTimeSelectUniGUIController;
    TimeSelectUniGUIController12: TTimeSelectUniGUIController;
    UniContainerPanel23: TUniContainerPanel;
    cntSelectCustomer: TUniContainerPanel;

    // Procedures
    procedure btnNextClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboPickupReturnClick(Sender: TObject);
    procedure tgHasReturnToggled(const Value: Boolean);
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

procedure TdlgUniGUIBookingWizard.ActivateBooking;
var
  lDate: TNullableDate;
begin
  if Assigned(FdmPgCarServiceBooking) then
  begin
    lDate := FdmPgCarServiceBooking.DeliveryDate;
    if lDate.HasValue then
      CalendarSelectDelivery.cldPickup1.Date := FdmPgCarServiceBooking.DeliveryDate
    else
      FdmPgCarServiceBooking.DeliveryDate := CalendarSelectDelivery.cldPickup1.Date;
    lDate := FdmPgCarServiceBooking.PickupDate;
    if lDate.HasValue then
      CalendarSelectPickup.cldPickup1.Date := FdmPgCarServiceBooking.PickupDate
    else
      FdmPgCarServiceBooking.PickupDate := CalendarSelectPickup.cldPickup1.Date;
  end;
end;

procedure TdlgUniGUIBookingWizard.btnBackClick(Sender: TObject);
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

procedure TdlgUniGUIBookingWizard.btnNextClick(Sender: TObject);
var
  lMessageDlg: TfrmUniGUIHtmlMessage;
begin
  // pgSelectDate, pgSelectSlot, pgCustomer, pgSummary
  case PgCBookingSteps.TabIndex of
    Ord(pgSelectDate):
      begin
        if not FdmPgCarServiceBooking.HasReturn or
          (CalendarSelectDelivery.cldPickup1.Date >= CalendarSelectPickup.cldPickup1.Date) then
        begin
          FdmPgCarServiceBooking.PickupDate := CalendarSelectPickup.cldPickup1.Date;
          FdmPgCarServiceBooking.UpdatePickupSlots;
          PickupSlotTimeSelect.TimeTableSlots := FdmPgCarServiceBooking.PickupSlots;

          if FdmPgCarServiceBooking.HasReturn then
          begin
            FdmPgCarServiceBooking.DeliveryDate := CalendarSelectDelivery.cldPickup1.Date;
            FdmPgCarServiceBooking.UpdateDeliverySlots;
            DeliveryTimeSelect.TimeTableSlots := FdmPgCarServiceBooking.DeliverySlots;
          end;

          if CalendarSelectPickup.CheckBookingDate and
            (not FdmPgCarServiceBooking.HasReturn or CalendarSelectDelivery.CheckBookingDate) then
          begin
            PickupSlotTimeSelect.BookingDate := FdmPgCarServiceBooking.PickupDate;
            if FdmPgCarServiceBooking.HasReturn then
              DeliveryTimeSelect.BookingDate := FdmPgCarServiceBooking.DeliveryDate;
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
            DateTimeToStr(CalendarSelectDelivery.cldPickup1.Date) + '</span><span style="color: #ff0000;">' +
            '<br /> è anteriore alla data di Pickup  </span><span style="color: #0000ff;">' +
            DateTimeToStr(CalendarSelectPickup.cldPickup1.Date) + '</span><span style="color: #ff0000;">');
          lMessageDlg.Lines.Add('</span></h1>');
          lMessageDlg.ShowModal();
        end;

      end;
    Ord(pgSelectSlot):
      begin
        if not FdmPgCarServiceBooking.CheckPickuSlots then
          ShowMessage('Occorre selezionare una data/ora di Ritiro')
        else if FdmPgCarServiceBooking.HasReturn and not FdmPgCarServiceBooking.CheckDeliverySlots then
          ShowMessage('Occorre selezionare una data/ora di Riconsegna')
        else
        begin
          CarBookingClientController1.CarBooking := FdmPgCarServiceBooking.BookingRecord;
          CarBookingClientController1.UsersList := FdmPgCarServiceBooking.UsersList;
          CarBookingClientController1.CustomerVehicleDataset :=  FdmPgCarServiceBooking.qryCustomerVehicles;
          var
          hr := FdmPgCarServiceBooking.HasReturn;
          CarBookingClientController1.edReturnAddress.Visible := hr;
          CarBookingClientController1.btnReturnAddress.Visible := hr;
          PgCBookingSteps.ActivePageIndex := Ord(pgCustomer);
        end;
      end;
    Ord(pgCustomer):
      begin
        CarBookingClientController1.PostRecord;

        if FdmPgCarServiceBooking.BookingRecord.checkBooking then
        begin
{$IFDEF DEBUG }
          Guard.CheckTrue(FdmPgCarServiceBooking.BookingRecord.AnagraphClient.AnFullAddress.AsString <> '',
            'AnFullAddress');
          FdmPgCarServiceBooking.BookingRecord.AnagraphClient.SyncMainAddress;
          Guard.CheckTrue(FdmPgCarServiceBooking.BookingRecord.AnagraphClient.MainAddress.FullAddress.AsString
            <> '', 'MainAddress');
{$ENDIF}
          FdmPgCarServiceBooking.PostRecord(True);
          AddressSelectUniGUICController1.BookingHead := FdmPgCarServiceBooking.BookingRecord;
          PgCBookingSteps.ActivePageIndex := Ord(pgLocations);
        end
        else
          ShowMessage('Attenzione alcuni campi non sono compilati correttamente')
      end;
    Ord(pgLocations):
      begin
        if AddressSelectUniGUICController1.TimeTablePickupController.Modified then
          FdmPgCarServiceBooking.UpdatePickup;
        if AddressSelectUniGUICController1.TimeTableDeliveryController.Modified then
          FdmPgCarServiceBooking.UpdateReturn;

        BookingSummaryUniGUIController1.BookingHead := FdmPgCarServiceBooking.BookingRecord;
        { FdmPgCarServiceBooking.PostRecord(True); }
        BookingSummaryUniGUIController1.InsertBranchProc := FdmPgCarServiceBooking.InsertBranchProc;
        BookingSummaryUniGUIController1.HtmlText := FdmPgCarServiceBooking.GenerateBookingSummaryMessage;
        BookingSummaryUniGUIController1.BranchesList := FdmPgCarServiceBooking.BranchesList;
        BookingSummaryUniGUIController1.HtmlContract := FdmPgCarServiceBooking.GetServiceContract;
        PgCBookingSteps.ActivePageIndex := Ord(pgSummary);
      end;
    Ord(pgSummary):
      begin
        if BookingSummaryUniGUIController1.ckbConditiions.Checked then
        begin
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

procedure TdlgUniGUIBookingWizard.cboPickupReturnClick(Sender: TObject);
begin
  // FdmPgCarServiceBooking.PickupDate :=
end;

procedure TdlgUniGUIBookingWizard.SetdmPgCarServiceBooking(const Value: TdmPgCarServiceBookingStorage);
begin
  FdmPgCarServiceBooking := Value;
  CalendarSelectPickup.DM := Value;
  CalendarSelectDelivery.DM := Value;
  tgHasReturn.Toggled := FdmPgCarServiceBooking.HasReturn;
  ActivateBooking;
end;

procedure TdlgUniGUIBookingWizard.tgHasReturnToggled(const Value: Boolean);
begin
  FdmPgCarServiceBooking.HasReturn := tgHasReturn.Toggled;
  pnlDelivery.Visible := tgHasReturn.Toggled;
  pnlDeliveryTimeSelect.Visible := tgHasReturn.Toggled;
end;

procedure TdlgUniGUIBookingWizard.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  FdmPgCarServiceBooking.CloseLogBooking;
  BookingSummaryUniGUIController1.BookingHead := nil;
  FdmPgCarServiceBooking := nil;
  CalendarSelectPickup.DM := nil;
  CalendarSelectDelivery.DM := nil;
end;

procedure TdlgUniGUIBookingWizard.UniFormCreate(Sender: TObject);
begin
  CalendarSelectPickup.IsPickup := True;
  CalendarSelectDelivery.IsPickup := False;

  (*
    // Time Select
    framePickupTimeSelect := TframeUniGUITimeSlotPickup.Create(self);
    framePickupTimeSelect.Parent := pnlPickupTimeSelect;
    framePickupTimeSelect.Align := TAlign.alClient;

    frameDeliveryTimeSelect := TframeUniGUITimeSlotPickup.Create(self);
    frameDeliveryTimeSelect.Parent := pnlDeliveryTimeSelect;
    frameDeliveryTimeSelect.Align := TAlign.alClient;

    // Booking Client
    CarBookingClientController1 := TframeUniGuiCarBookingClient.Create(self);
    CarBookingClientController1.Parent := pnlBookingClient;
    CarBookingClientController1.Align := TAlign.alClient;

    // Address Select  pnlTimetableLocations
    AddressSelectUniGUICController1 := TframeUniGUICarServiceAddressSelect.Create(self);
    AddressSelectUniGUICController1.Parent := pnlTimetableLocations;
    AddressSelectUniGUICController1.Align := TAlign.alClient;

    // Booking Summary  pnlBookingSummary
    BookingSummaryUniGUIController1 := TBookingSummaryUniGUIController1.Create(self);
    BookingSummaryUniGUIController1.Parent := pnlBookingSummary;
    BookingSummaryUniGUIController1.Align := TAlign.alClient;
  *)

end;

procedure TdlgUniGUIBookingWizard.UniFormShow(Sender: TObject);
begin
  PgCBookingSteps.TabIndex := 0;
end;

end.
