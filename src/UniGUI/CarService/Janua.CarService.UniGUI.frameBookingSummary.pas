unit Janua.CarService.UniGUI.frameBookingSummary;

interface

uses
  // RTL
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  // VCL
  Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniDBLookupComboBox, uniRadioGroup, uniLabel, uniGUIClasses,
  uniGUIFrame, uniGUIBaseClasses, uniGroupBox, uniMultiItem, uniComboBox, uniDBComboBox, uniPanel,
  UniFSCombobox, uniHTMLFrame, uniButton, uniBitBtn, UniFSButton, uniCheckBox,
  // Janua
  JOrm.CarService.Booking.Intf, Janua.UniGUI.Interposers, JOrm.Anagraph.Intf, Janua.Core.Commons,
  Janua.UniGUI.Controller, Janua.CarService.UniGUI.BookingSummaryController;

type
  TframeUniGUIBookingSummary = class(TUniFrame)
    cntBookingSummary: TUniContainerPanel;
    BookingSummaryUniGUIController1: TBookingSummaryUniGUIController;
    btnNewBranch: TUniFSButton;
    btnShowContract: TUniFSButton;
    cboBranchSelection: TUniFSComboBox;
    ckbConditiions: TUniCheckBox;
    grpDelivery: TUniGroupBox;
    grpDeliveryDirection: TUniRadioGroup;
    ulbDeliveryDate: TUniLabel;
    ulbDeliveryTime: TUniLabel;
    grpPickup: TUniGroupBox;
    grpPickupDirection: TUniRadioGroup;
    ulbPickupDate: TUniLabel;
    ulbPickupTime: TUniLabel;
    htmlBookingSummary: TUniHTMLFrame;
    procedure btnNewBranchClick(Sender: TObject);
    procedure btnShowContractClick(Sender: TObject);
  private
    [weak]
    FBookingHead: IBookingHeadView;
    FAnagraph: IAnagraphView;
    FBranchesList: IAnagraphViews;
    FHtmlContract: string;
    FInsertBranchProc: TNotifyEvent;
    procedure SetBookingHead(const Value: IBookingHeadView);
    procedure SetHtmlText(const Value: string);
    procedure SetBranchesList(const Value: IAnagraphViews);
    procedure SetHtmlContract(const Value: string);
    procedure AssignBranches(const Value: IAnagraphViews);
    procedure SetInsertBranchProc(const Value: TNotifyEvent);
    { Private declarations }
  protected
    function GetHtmlText: string;
  public
    { Public declarations }
    property BookingHead: IBookingHeadView read FBookingHead write SetBookingHead;
    property HtmlText: string read GetHtmlText write SetHtmlText;
    property BranchesList: IAnagraphViews read FBranchesList write SetBranchesList;
    property HtmlContract: string read FHtmlContract write SetHtmlContract;
    property InsertBranchProc: TNotifyEvent read FInsertBranchProc write SetInsertBranchProc;
  end;

implementation

uses Janua.Anagraph.UniGUI.dlgSimpleAnagraph, Janua.UniGUI.dlgHTMLDisclaimer, Janua.CarService.PgBooking;

{$R *.dfm}
{ TframeUniGUIBookingSummary }

procedure TframeUniGUIBookingSummary.btnNewBranchClick(Sender: TObject);
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

procedure TframeUniGUIBookingSummary.btnShowContractClick(Sender: TObject);
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

function TframeUniGUIBookingSummary.GetHtmlText: string;
begin
  Result := htmlBookingSummary.Html.Text;
end;

procedure TframeUniGUIBookingSummary.AssignBranches(const Value: IAnagraphViews);
begin
  if Assigned(FBranchesList) then
    cboBranchSelection.BindToRecordSet(Value, Value.AnagraphId, [Value.AnLastName, Value.AnName]);
end;

procedure TframeUniGUIBookingSummary.SetBookingHead(const Value: IBookingHeadView);
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

procedure TframeUniGUIBookingSummary.SetHtmlContract(const Value: string);
begin
  FHtmlContract := Value;
end;

procedure TframeUniGUIBookingSummary.SetHtmlText(const Value: string);
begin
  htmlBookingSummary.Html.Text := Value;
end;

procedure TframeUniGUIBookingSummary.SetInsertBranchProc(const Value: TNotifyEvent);
begin
  FInsertBranchProc := Value;
end;

procedure TframeUniGUIBookingSummary.SetBranchesList(const Value: IAnagraphViews);
begin
  FBranchesList := Value;
  AssignBranches(Value);
end;

end.
