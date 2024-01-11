unit Janua.CarService.UniGUI.AddressSelectController;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.Generics.Collections,
  // uniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniLabel, uniButton, uniBitBtn, UniFSButton,
  uniMultiItem, uniComboBox, UniFSCombobox, uniGUIBaseClasses, uniPanel,
  // Janua
  JOrm.CarService.Booking.Intf, {Janua.UniGUI.Interposers,} JOrm.Anagraph.Intf,
  Janua.Core.Commons, Janua.UniGUI.Controller, Janua.CarService.UniGUI.TimeTableSelectController;

type
  TAddressSelectUniGUICController = class(TJanuaUniGUIController)
  private
    FServiceAddresses: IAnAddresses;
    FBookingHead: IBookingHeadView;
    FInsertBranchProc: TNotifyEvent;
    FToIndex: Integer;
    FFromIndex: Integer;
    FTimeTablePickupController: TTimeTableUniGUIController;
    FbtnNewBranch: TUniFSButton;
    FcboAddressSelection: TUniComboBox;
    FlbIndirizzoReturn: TUniLabel;
    FlbIndirizzoPickup: TUniLabel;
    FlbServiceAddress: TUniLabel;
    FTimeTableDeliveryController: TTimeTableUniGUIController;
    FcntAddressSelect: TUniContainerPanel;
  protected
    procedure SetBookingHead(const Value: IBookingHeadView);
    procedure SetInsertBranchProc(const Value: TNotifyEvent);
    procedure RefreshServiceAddresses;
    procedure SetbtnNewBranch(const Value: TUniFSButton);
    procedure SetcboAddressSelection(const Value: TUniComboBox);
    procedure SetcntAddressSelect(const Value: TUniContainerPanel);
    procedure SetlbIndirizzoPickup(const Value: TUniLabel);
    procedure SetlbIndirizzoReturn(const Value: TUniLabel);
    procedure SetlbServiceAddress(const Value: TUniLabel);
    procedure SetTimeTableDeliveryController(const Value: TTimeTableUniGUIController);
    procedure SetTimeTablePickupController(const Value: TTimeTableUniGUIController);
  protected
    FAddressList: TList<TGUID>;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    procedure cboAddressSelectionCloseUp(Sender: TObject); // Set to FcboAddressSelection
  public
    property BookingHead: IBookingHeadView read FBookingHead write SetBookingHead;
    property InsertBranchProc: TNotifyEvent read FInsertBranchProc write SetInsertBranchProc;
  published
    property cntAddressSelect: TUniContainerPanel read FcntAddressSelect write SetcntAddressSelect;
    property cboAddressSelection: TUniComboBox read FcboAddressSelection write SetcboAddressSelection;
    property btnNewBranch: TUniFSButton read FbtnNewBranch write SetbtnNewBranch;
    property lbServiceAddress: TUniLabel read FlbServiceAddress write SetlbServiceAddress;
    property lbIndirizzoPickup: TUniLabel read FlbIndirizzoPickup write SetlbIndirizzoPickup;
    property lbIndirizzoReturn: TUniLabel read FlbIndirizzoReturn write SetlbIndirizzoReturn;
    // Controllers
    property TimeTablePickupController: TTimeTableUniGUIController read FTimeTablePickupController
      write SetTimeTablePickupController; { frameTimeTablePickup }
    property TimeTableDeliveryController: TTimeTableUniGUIController read FTimeTableDeliveryController
      write SetTimeTableDeliveryController; { frameTimeTableDelivery }
  end;

procedure Register;

implementation

uses System.Math;

procedure Register;
begin
  RegisterComponents('Janua CarService UniGUI', [TAddressSelectUniGUICController]);
end;

{ TAddressSelectUniGUICController }

procedure TAddressSelectUniGUICController.cboAddressSelectionCloseUp(Sender: TObject);
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

constructor TAddressSelectUniGUICController.Create(AOwner: TComponent);
begin
  inherited;
  FAddressList := TList<TGUID>.Create;
end;

destructor TAddressSelectUniGUICController.Destroy;
begin
  FAddressList.Free;
  inherited;
end;

procedure TAddressSelectUniGUICController.RefreshServiceAddresses;
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

procedure TAddressSelectUniGUICController.SetBookingHead(const Value: IBookingHeadView);
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

procedure TAddressSelectUniGUICController.SetbtnNewBranch(const Value: TUniFSButton);
begin
  FbtnNewBranch := Value;
end;

procedure TAddressSelectUniGUICController.SetcboAddressSelection(const Value: TUniComboBox);
begin
  FcboAddressSelection := Value;
  // cboAddressSelectionCloseUp
  if Assigned(FcboAddressSelection) then
    FcboAddressSelection.OnCloseUp := cboAddressSelectionCloseUp;
end;

procedure TAddressSelectUniGUICController.SetcntAddressSelect(const Value: TUniContainerPanel);
begin
  FcntAddressSelect := Value;
end;

procedure TAddressSelectUniGUICController.SetInsertBranchProc(const Value: TNotifyEvent);
begin
  FInsertBranchProc := Value;
end;

procedure TAddressSelectUniGUICController.SetlbIndirizzoPickup(const Value: TUniLabel);
begin
  FlbIndirizzoPickup := Value;
end;

procedure TAddressSelectUniGUICController.SetlbIndirizzoReturn(const Value: TUniLabel);
begin
  FlbIndirizzoReturn := Value;
end;

procedure TAddressSelectUniGUICController.SetlbServiceAddress(const Value: TUniLabel);
begin
  FlbServiceAddress := Value;
end;

procedure TAddressSelectUniGUICController.SetTimeTableDeliveryController
  (const Value: TTimeTableUniGUIController);
begin
  FTimeTableDeliveryController := Value;
end;

procedure TAddressSelectUniGUICController.SetTimeTablePickupController
  (const Value: TTimeTableUniGUIController);
begin
  FTimeTablePickupController := Value;
end;

end.
