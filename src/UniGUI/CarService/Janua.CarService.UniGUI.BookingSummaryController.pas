unit Janua.CarService.UniGUI.BookingSummaryController;

interface

uses
  // RTL
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  // VCL
  Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniDBLookupComboBox, uniRadioGroup, uniLabel, uniGUIClasses,
  uniGUIBaseClasses, uniGroupBox, uniMultiItem, uniComboBox, uniDBComboBox, uniPanel,
  UniFSCombobox, uniHTMLFrame, uniButton, uniBitBtn, UniFSButton, uniCheckBox,
  // Janua
  JOrm.CarService.Booking.Intf, {Janua.UniGUI.Interposers,} JOrm.Anagraph.Intf, Janua.UniGUI.Controller;

type
  TBookingSummaryUniGUIController = class(TJanuaUniGUIController) { TframeUniGUIBookingSummary }
  private
    [weak]
    FBookingHead: IBookingHeadView;
    FAnagraph: IAnagraphView;
    FBranchesList: IAnagraphViews;
  private
    FHtmlContract: string;
    FInsertBranchProc: TNotifyEvent;
    FulbDeliveryDate: TUniLabel;
    FulbPickupDate: TUniLabel;
    FbtnNewBranch: TUniFSButton;
    FckbConditiions: TUniCheckBox;
    FcboBranchSelection: TUniFSComboBox;
    FgrpDelivery: TUniGroupBox;
    FulbDeliveryTime: TUniLabel;
    FbtnShowContract: TUniFSButton;
    FgrpDeliveryDirection: TUniRadioGroup;
    FgrpPickup: TUniGroupBox;
    FulbPickupTime: TUniLabel;
    FgrpPickupDirection: TUniRadioGroup;
    FhtmlBookingSummary: TUniHTMLFrame;
    procedure SetbtnNewBranch(const Value: TUniFSButton);
    procedure SetbtnShowContract(const Value: TUniFSButton);
    procedure SetcboBranchSelection(const Value: TUniFSComboBox);
    procedure SetckbConditiions(const Value: TUniCheckBox);
    procedure SetgrpDelivery(const Value: TUniGroupBox);
    procedure SetgrpDeliveryDirection(const Value: TUniRadioGroup);
    procedure SetgrpPickup(const Value: TUniGroupBox);
    procedure SetgrpPickupDirection(const Value: TUniRadioGroup);
    procedure SethtmlBookingSummary(const Value: TUniHTMLFrame);
    procedure SetulbDeliveryDate(const Value: TUniLabel);
    procedure SetulbDeliveryTime(const Value: TUniLabel);
    procedure SetulbPickupDate(const Value: TUniLabel);
    procedure SetulbPickupTime(const Value: TUniLabel);
  protected
    procedure SetBookingHead(const Value: IBookingHeadView);
    procedure SetHtmlText(const Value: string);
    procedure SetBranchesList(const Value: IAnagraphViews);
    procedure SetHtmlContract(const Value: string);
    procedure AssignBranches(const Value: IAnagraphViews);
    procedure SetInsertBranchProc(const Value: TNotifyEvent);
    function GetHtmlText: string;
  public
    { Public declarations }
    procedure btnNewBranchClick(Sender: TObject);
    procedure btnShowContractClick(Sender: TObject);
  public
    property BookingHead: IBookingHeadView read FBookingHead write SetBookingHead;
    property HtmlText: string read GetHtmlText write SetHtmlText;
    property BranchesList: IAnagraphViews read FBranchesList write SetBranchesList;
  published
    property HtmlContract: string read FHtmlContract write SetHtmlContract;
    property InsertBranchProc: TNotifyEvent read FInsertBranchProc write SetInsertBranchProc;
    property grpPickup: TUniGroupBox read FgrpPickup write SetgrpPickup;
    property grpDelivery: TUniGroupBox read FgrpDelivery write SetgrpDelivery;
    property grpPickupDirection: TUniRadioGroup read FgrpPickupDirection write SetgrpPickupDirection;
    property grpDeliveryDirection: TUniRadioGroup read FgrpDeliveryDirection write SetgrpDeliveryDirection;
    property ulbPickupDate: TUniLabel read FulbPickupDate write SetulbPickupDate;
    property ulbPickupTime: TUniLabel read FulbPickupTime write SetulbPickupTime;
    property ulbDeliveryDate: TUniLabel read FulbDeliveryDate write SetulbDeliveryDate;
    property ulbDeliveryTime: TUniLabel read FulbDeliveryTime write SetulbDeliveryTime;
    property cboBranchSelection: TUniFSComboBox read FcboBranchSelection write SetcboBranchSelection;
    property htmlBookingSummary: TUniHTMLFrame read FhtmlBookingSummary write SethtmlBookingSummary;
    property btnNewBranch: TUniFSButton read FbtnNewBranch write SetbtnNewBranch;
    property ckbConditiions: TUniCheckBox read FckbConditiions write SetckbConditiions;
    property btnShowContract: TUniFSButton read FbtnShowContract write SetbtnShowContract;
  end;

procedure Register;

implementation

uses Janua.Anagraph.UniGUI.dlgSimpleAnagraph, Janua.UniGUI.dlgHTMLDisclaimer, Janua.CarService.PgBooking;

procedure Register;
begin
  RegisterComponents('Janua CarService UniGUI', [TBookingSummaryUniGUIController]);
end;

{ TBookingSummaryUniGUIController }

procedure TBookingSummaryUniGUIController.btnNewBranchClick(Sender: TObject);
var
  lDialog: TdlgUniGUISimpleAnagraph;
begin
  if Assigned(FBranchesList) then
  begin
    FBranchesList.Append;
    lDialog := TdlgUniGUISimpleAnagraph.Create(UniApplication);
    lDialog.Anagraph := FBranchesList.AnagraphView;
    lDialog.ShowModal(
      procedure(Sender: TComponent; AResult: Integer)
      begin
        if Assigned(FBranchesList) and (AResult = mrOK) then
        begin
          FBranchesList.Post;
          if Assigned(FInsertBranchProc) then
            InsertBranchProc(Self)
          else if Assigned(FBranchesList.CurrentRecord.DBDataset) then
            FBranchesList.SaveToDataset;
          AssignBranches(FBranchesList);
        end
        else
          { FBranchesList.Cancel; }
      end);
  end
  else
    MessageDlg('Errore Office List not set', TMsgDlgType.mtError, [mbOk]);
end;

procedure TBookingSummaryUniGUIController.btnShowContractClick(Sender: TObject);
var
  frmUniGUIHtmlDisclaimer: TfrmUniGUIHtmlDisclaimer;
begin
  frmUniGUIHtmlDisclaimer := TfrmUniGUIHtmlDisclaimer.Create(UniApplication);
  frmUniGUIHtmlDisclaimer.Html := FHtmlContract;
  frmUniGUIHtmlDisclaimer.ShowModal(
    procedure(Sender: TComponent; AResult: Integer)
    begin
      if (AResult = mrOK) then
        ckbConditiions.Checked := True;
    end);
end;

function TBookingSummaryUniGUIController.GetHtmlText: string;
begin
  Result := htmlBookingSummary.Html.Text;
end;

procedure TBookingSummaryUniGUIController.AssignBranches(const Value: IAnagraphViews);
begin
  { TODO : Manage BindToRecordSet for Anagraph View on Summary Controller }
  {
    if Assigned(FBranchesList) then
    cboBranchSelection.BindToRecordSet(Value, Value.AnagraphId, [Value.AnLastName, Value.AnName]);
  }
end;

procedure TBookingSummaryUniGUIController.SetBookingHead(const Value: IBookingHeadView);
begin
  FBookingHead := Value;
  if Assigned(FBookingHead) then
  begin
    ulbPickupDate.Caption := FBookingHead.PickupDateTime.Workingday.AsString;
    ulbPickupTime.Caption := FBookingHead.PickupDateTime.SlotDes.AsString;
    ulbDeliveryDate.Caption := FBookingHead.DeliveryDateTime.Workingday.AsString;
    ulbDeliveryTime.Caption := FBookingHead.DeliveryDateTime.SlotDes.AsString;

    grpPickupDirection.ItemIndex := FBookingHead.PickupDateTime.Direction;
    FBookingHead.PickupDateTime.Bind('Direction', grpPickupDirection, 'ItemIndex');

    grpDeliveryDirection.ItemIndex := FBookingHead.DeliveryDateTime.Direction;
    FBookingHead.DeliveryDateTime.Bind('Direction', grpDeliveryDirection, 'ItemIndex');
  end;
end;

procedure TBookingSummaryUniGUIController.SetHtmlContract(const Value: string);
begin
  FHtmlContract := Value;
end;

procedure TBookingSummaryUniGUIController.SetHtmlText(const Value: string);
begin
  htmlBookingSummary.Html.Text := Value;
end;

procedure TBookingSummaryUniGUIController.SetInsertBranchProc(const Value: TNotifyEvent);
begin
  FInsertBranchProc := Value;
end;

procedure TBookingSummaryUniGUIController.SetulbDeliveryDate(const Value: TUniLabel);
begin
  FulbDeliveryDate := Value;
end;

procedure TBookingSummaryUniGUIController.SetulbDeliveryTime(const Value: TUniLabel);
begin
  FulbDeliveryTime := Value;
end;

procedure TBookingSummaryUniGUIController.SetulbPickupDate(const Value: TUniLabel);
begin
  FulbPickupDate := Value;
end;

procedure TBookingSummaryUniGUIController.SetulbPickupTime(const Value: TUniLabel);
begin
  FulbPickupTime := Value;
end;

procedure TBookingSummaryUniGUIController.SetBranchesList(const Value: IAnagraphViews);
begin
  FBranchesList := Value;
  AssignBranches(Value);
end;

procedure TBookingSummaryUniGUIController.SetbtnNewBranch(const Value: TUniFSButton);
begin
  FbtnNewBranch := Value;
end;

procedure TBookingSummaryUniGUIController.SetbtnShowContract(const Value: TUniFSButton);
begin
  FbtnShowContract := Value;
end;

procedure TBookingSummaryUniGUIController.SetcboBranchSelection(const Value: TUniFSComboBox);
begin
  FcboBranchSelection := Value;
end;

procedure TBookingSummaryUniGUIController.SetckbConditiions(const Value: TUniCheckBox);
begin
  FckbConditiions := Value;
end;

procedure TBookingSummaryUniGUIController.SetgrpDelivery(const Value: TUniGroupBox);
begin
  FgrpDelivery := Value;
end;

procedure TBookingSummaryUniGUIController.SetgrpDeliveryDirection(const Value: TUniRadioGroup);
begin
  FgrpDeliveryDirection := Value;
end;

procedure TBookingSummaryUniGUIController.SetgrpPickup(const Value: TUniGroupBox);
begin
  FgrpPickup := Value;
end;

procedure TBookingSummaryUniGUIController.SetgrpPickupDirection(const Value: TUniRadioGroup);
begin
  FgrpPickupDirection := Value;
end;

procedure TBookingSummaryUniGUIController.SethtmlBookingSummary(const Value: TUniHTMLFrame);
begin
  FhtmlBookingSummary := Value;
end;

end.
