unit Janua.CarService.UniGUI.frameAddressesSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.Generics.Collections,
  // uniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniLabel, uniButton, uniBitBtn, UniFSButton,
  uniMultiItem, uniComboBox, UniFSCombobox, uniGUIBaseClasses, uniPanel,
  // Janua
  JOrm.CarService.Booking.Intf, Janua.UniGUI.Interposers, JOrm.Anagraph.Intf,
  Janua.Core.Commons, Janua.UniGUI.Controller, Janua.CarService.UniGUI.TimeTableSelectController,
  Janua.CarService.UniGUI.AddressSelectController;

type
  TframeUniGUICarServiceAddressSelect = class(TUniFrame {TAddressSelectUniGUICController})
    cntAddressSelect: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    cboAddressSelection: TUniFSComboBox;
    btnNewBranch: TUniFSButton;
    lbServiceAddress: TUniLabel;
    lbIndirizzoPickup: TUniLabel;
    lbIndirizzoReturn: TUniLabel;
    pnlTimeTablePickup: TUniSimplePanel;
    pnlTimeTableDelivery: TUniSimplePanel;
    cntTimeTable: TUniContainerPanel;
    pnlTop: TUniContainerPanel;
    lbTimeTableType: TUniLabel;
    lbTimetableDAte: TUniLabel;
    lbDeliveryTime: TUniLabel;
    UniContainerPanel2: TUniContainerPanel;
    cboPickup: TUniComboBox;
    lbDeparture: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    cboReturn: TUniComboBox;
    lbVehiclePickupPlace: TUniLabel;
    UniContainerPanel4: TUniContainerPanel;
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
    // Controllers
    TimeTablePickupController: TTimeTableUniGUIController;  {frameTimeTablePickup}
    TimeTableDeliveryController: TTimeTableUniGUIController;
    AddressSelectUniGUICController1: TAddressSelectUniGUICController; {frameTimeTableDelivery}
    procedure cboAddressSelectionCloseUp(Sender: TObject);
  private
    FServiceAddresses: IAnAddresses;
    FBookingHead: IBookingHeadView;
    FInsertBranchProc: TNotifyEvent;
    FToIndex: Integer;
    FFromIndex: Integer;
    procedure SetBookingHead(const Value: IBookingHeadView);
    procedure SetInsertBranchProc(const Value: TNotifyEvent);
    procedure RefreshServiceAddresses;
  protected
    FAddressList: TList<TGUID>;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    property BookingHead: IBookingHeadView read FBookingHead write SetBookingHead;
    property InsertBranchProc: TNotifyEvent read FInsertBranchProc write SetInsertBranchProc;
  end;

implementation

uses System.Math;

{$R *.dfm}
{ TframeUniGUICarServiceAddressSelect }

procedure TframeUniGUICarServiceAddressSelect.cboAddressSelectionCloseUp(Sender: TObject);
var
  i: Integer;
  lGUID: TGUID;
begin
  i := cboAddressSelection.ItemIndex;
  lGUID := FAddressList[i];
  if FServiceAddresses.SearchByGUID(lGUID) then
  begin
    FBookingHead.ServiceAddress.Assign(FServiceAddresses.CurrentRecord);
    FBookingHead.RefreshAddresses;
  end;
end;

constructor TframeUniGUICarServiceAddressSelect.Create(AOwner: TComponent);
begin
  inherited;
  FAddressList := TList<TGUID>.Create;
end;

destructor TframeUniGUICarServiceAddressSelect.Destroy;
begin
  FAddressList.Free;
  inherited;
end;

procedure TframeUniGUICarServiceAddressSelect.RefreshServiceAddresses;
var
  i: Integer;
begin
  if Assigned(FServiceAddresses) then
  begin
    FServiceAddresses.First;
    while not FServiceAddresses.EOF do
    begin
      FAddressList.Add(FServiceAddresses.GUID);
      cboAddressSelection.Items.Add(FServiceAddresses.RecordAddress.FullAddress.AsString);
      FServiceAddresses.Next;
    end;
  end;
end;

procedure TframeUniGUICarServiceAddressSelect.SetBookingHead(const Value: IBookingHeadView);
begin
  FBookingHead := Value;
  if Assigned(FBookingHead) then
  begin
    if FBookingHead.ServiceAddress.Id.AsInteger = 0 then
      FBookingHead.ServiceAddress.Assign(FBookingHead.ServiceAnagraph.MainAddress);

    FServiceAddresses := FBookingHead.ServiceAnagraph.Addresses;
    TimeTablePickupController.TimeTableView := FBookingHead.PickupDateTime;
    TimeTableDeliveryController.TimeTableView := FBookingHead.DeliveryDateTime;

    // Addresses Addresses
    FBookingHead.Addresses.Append;
    FBookingHead.Addresses.BookingAddress.Assign(FBookingHead.AnagraphClient.MainAddress);
    FBookingHead.Addresses.BookingAddress.AdType.AsString := 'U';

    var
    lBookingAddressFull := FBookingHead.Addresses.BookingAddress.FullAddress.AsString;
    var
    lID := FBookingHead.Addresses.BookingAddress.Id.AsInteger;

    FBookingHead.Addresses.Post;

    if not FBookingHead.AnagraphClient.MainAddress.Id.AsInteger =
      (FBookingHead.AnagraphClient.ReturnAddress.Id.AsInteger) then
    begin
      FBookingHead.Addresses.Append;
      FBookingHead.Addresses.BookingAddress.Assign(FBookingHead.AnagraphClient.ReturnAddress);

      lBookingAddressFull := FBookingHead.Addresses.BookingAddress.FullAddress.AsString;
      lID := FBookingHead.Addresses.BookingAddress.Id.AsInteger;

      FBookingHead.Addresses.BookingAddress.AdType.AsString := 'U';

      FBookingHead.Addresses.Post;
    end;

    FBookingHead.Addresses.Append;
    FBookingHead.Addresses.BookingAddress.Assign(FBookingHead.ServiceAddress);
    FBookingHead.Addresses.BookingAddress.AdType.AsString := 'S';

    lBookingAddressFull := FBookingHead.Addresses.BookingAddress.FullAddress.AsString;
    lID := FBookingHead.Addresses.BookingAddress.Id.AsInteger;

    FBookingHead.Addresses.Post;

    var
    lCount := FBookingHead.Addresses.RecordCount - 1;

    TimeTablePickupController.Addresses := FBookingHead.Addresses;
    TimeTablePickupController.FromIndex := 0;
    TimeTablePickupController.ToIndex := lCount;

    TimeTableDeliveryController.Addresses := FBookingHead.Addresses;
    TimeTableDeliveryController.FromIndex := lCount;
    TimeTableDeliveryController.ToIndex := IfThen(lCount = 1, 0, 1);

    TimeTablePickupController.Modified := False;
    TimeTableDeliveryController.Modified := False;

  end;
end;

procedure TframeUniGUICarServiceAddressSelect.SetInsertBranchProc(const Value: TNotifyEvent);
begin
  FInsertBranchProc := Value;
end;

end.
