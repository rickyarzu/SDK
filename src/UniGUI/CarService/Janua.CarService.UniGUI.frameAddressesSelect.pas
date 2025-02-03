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
  Janua.CarService.UniGUI.AddressSelectController, System.RegularExpressionsCore,
  Janua.CarService.UniGUI.frameTimeTable;

type
  TframeUniGUICarServiceAddressSelect = class(TUniFrame { TAddressSelectUniGUICController } )
    frameTimeTablePickup: TframeCarServiceUniGUITimeTable;
    frameTimeTableDelivery: TframeCarServiceUniGUITimeTable;
    cntAddressSelect: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    cboAddressSelection: TUniFSComboBox;
    btnNewBranch: TUniFSButton;
    lbServiceAddress: TUniLabel;
    lbIndirizzoPickup: TUniLabel;
    lbIndirizzoReturn: TUniLabel;
    pnlTimeTablePickup: TUniSimplePanel;
    pnlTimeTableDelivery: TUniSimplePanel;
    cntframeTimeTablePickup: TUniContainerPanel;
    cntTimeTableDelivery: TUniContainerPanel;
    // Controllers
    (*
      TimeTablePickupController: TTimeTableUniGUIController;  {frameTimeTablePickup}
      TimeTableDeliveryController: TTimeTableUniGUIController;
      AddressSelectUniGUICController1: TAddressSelectUniGUICController; {frameTimeTableDelivery}
    *)
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
    frameTimeTablePickup.TimeTableView := FBookingHead.PickupDateTime;
    frameTimeTableDelivery.TimeTableView := FBookingHead.DeliveryDateTime;

    // Addresses Addresses
    FBookingHead.Addresses.Append;
    FBookingHead.Addresses.BookingAddress.Assign(FBookingHead.AnagraphClient.MainAddress);
    FBookingHead.Addresses.BookingAddress.AdType.AsString := 'U';

    var
    lBookingAddressFull := FBookingHead.Addresses.BookingAddress.FullAddress.AsString;
    var
    lID := FBookingHead.Addresses.BookingAddress.Id.AsInteger;

    FBookingHead.Addresses.Post;
    {
      if not FBookingHead.AnagraphClient.MainAddress.Id.AsInteger =
      (FBookingHead.AnagraphClient.ReturnAddress.Id.AsInteger) then
    }
    if not FBookingHead.AnagraphClient.ReturnAddress.FullAddress.AsString.IsEmpty and
      not(FBookingHead.AnagraphClient.MainAddress.FullAddress.AsString = FBookingHead.AnagraphClient.
      ReturnAddress.FullAddress.AsString) then
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

    frameTimeTablePickup.Addresses := FBookingHead.Addresses;
    frameTimeTablePickup.FromIndex := 0;
    frameTimeTablePickup.ToIndex := lCount;
    frameTimeTablePickup.TimeTableView := FBookingHead.PickupDateTime;

    frameTimeTableDelivery.Addresses := FBookingHead.Addresses;
    frameTimeTableDelivery.FromIndex := lCount;
    frameTimeTableDelivery.ToIndex := IfThen(lCount = 1, 0, 1);
    frameTimeTableDelivery.TimeTableView := FBookingHead.DeliveryDateTime;

    frameTimeTablePickup.Modified := False;
    frameTimeTableDelivery.Modified := False;

  end;
end;

procedure TframeUniGUICarServiceAddressSelect.SetInsertBranchProc(const Value: TNotifyEvent);
begin
  FInsertBranchProc := Value;
end;

end.
