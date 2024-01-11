unit Janua.CarService.UniGUI.frameTimeTable;
{
  This frame is made to figure out the Pickup and Delivery locations of a travel in the Timetable
  Adresses can be 2 or 3 that is
  1 Service Address
  1 or 2 User's Address(es) for a Pickup or Restitution of the Vehicle
  Every Address is identifie by a
  GUID and an ID on DB
  and a Type that can be U or S (User or Service)
  if The Pickup Address is 'U' then the Delivery will be 'S' and vice-versa.
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.StrUtils,
  System.Generics.Collections,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniLabel, uniPanel,
  uniMultiItem, uniComboBox,
  // Januaproject
  JOrm.CarService.Booking.Intf, Janua.CarService.UniGUI.TimeTableSelectController, Janua.Core.Commons,
  Janua.UniGUI.Controller;

type
  TframeCarServiceUniGUITimeTable = class(TUniFrame)
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
    TimeTableUniGUIController1: TTimeTableUniGUIController;
    procedure cboPickupCloseUp(Sender: TObject);
    procedure cboReturnCloseUp(Sender: TObject);
  private
    FTimeTableView: ItimetableView;
    FAddresses: IBookingAddresses;
    FAddressList: TList<TGUID>;
    FToIndex: Integer;
    FFromIndex: Integer;

    FOldToIndex: Integer;
    FOldFromIndex: Integer;

    FModified: Boolean;
    procedure SetTimeTableView(const Value: ItimetableView);
    procedure SetAddresses(const Value: IBookingAddresses);

    procedure SetFromIndex(const Value: Integer);
    procedure SetToIndex(const Value: Integer);
    procedure SetModified(const Value: Boolean);

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property TimeTableView: ItimetableView read FTimeTableView write SetTimeTableView;
    property Addresses: IBookingAddresses read FAddresses write SetAddresses;
    property FromIndex: Integer read FFromIndex write SetFromIndex;
    property ToIndex: Integer read FToIndex write SetToIndex;
    property Modified: Boolean read FModified write SetModified;
  end;

implementation

{$R *.dfm}

{ TframeCarServiceUniGUITimeTable }
procedure TframeCarServiceUniGUITimeTable.cboPickupCloseUp(Sender: TObject);
var
  i: Integer;
  lGUID: TGUID;
  function GetItemNumber: Integer;
  begin
    for var i := 0 to FAddressList.Count - 1 do
      if FAddressList[i] = lGUID then
        Exit(i);
    Result := i;
  end;

begin
  i := cboPickup.ItemIndex;
  if self.FromIndex <> i then
  begin
    lGUID := FAddressList[i];
    if Addresses.SearchByGUID(lGUID) then
    begin
      TimeTableView.PickupAddress.Assign(Addresses.CurrentRecord);
      cboPickup.ItemIndex := GetItemNumber;
      if Addresses.RecordCount = 2 then
      begin
        if Addresses.EOF then
          Addresses.First
        else
          Addresses.Last;
      end
      else
      begin
        var
        sType := IfThen(TimeTableView.PickupAddress.AdType.AsString = 'S', 'U', 'S');
        Addresses.First;
        while not Addresses.EOF or (Addresses.AdType.AsString = sType) do
          Addresses.Next;
      end;
      lGUID := Addresses.CurrentRecord.GUID;
      TimeTableView.DeliveryAddress.Assign(Addresses.CurrentRecord);
      cboReturn.ItemIndex := GetItemNumber;
      FromIndex := cboPickup.ItemIndex;
      ToIndex := cboReturn.ItemIndex;
    end;
  end;
end;

procedure TframeCarServiceUniGUITimeTable.cboReturnCloseUp(Sender: TObject);
var
  i: Integer;
  lGUID: TGUID;
  function GetItemNumber: Integer;
  begin
    for var i := 0 to FAddressList.Count - 1 do
      if FAddressList[i] = lGUID then
        Exit(i);
    Result := i;
  end;

begin
  if Assigned(cboPickup) and Assigned(cboReturn) and Assigned(TimeTableView) then
  begin
    i := cboReturn.ItemIndex;
    lGUID := FAddressList[i];
    if ToIndex <> i then
    begin
      if Addresses.SearchByGUID(lGUID) then
      begin
        TimeTableView.DeliveryAddress.Assign(Addresses.CurrentRecord);
        cboReturn.ItemIndex := GetItemNumber;
        if Addresses.RecordCount = 2 then
        begin
          if Addresses.EOF then
            Addresses.First
          else
            Addresses.Last;
        end
        else
        begin
          var
          sType := IfThen(TimeTableView.DeliveryAddress.AdType.AsString = 'S', 'U', 'S');
          Addresses.First;
          while not Addresses.EOF or (Addresses.AdType.AsString = sType) do
            Addresses.Next;
        end;
        lGUID := Addresses.CurrentRecord.GUID;
        TimeTableView.PickupAddress.Assign(Addresses.CurrentRecord);
        cboPickup.ItemIndex := GetItemNumber;

        FromIndex := cboPickup.ItemIndex;
        ToIndex := cboReturn.ItemIndex;
      end;
    end;
  end;
end;

constructor TframeCarServiceUniGUITimeTable.Create(AOwner: TComponent);
begin
  inherited;
  FAddressList := TList<TGUID>.Create;
  FToIndex := -1;
  FFromIndex := -1;

  FOldToIndex := -1;
  FOldFromIndex := -1;

  FModified := False;
end;

destructor TframeCarServiceUniGUITimeTable.Destroy;
begin
  FAddressList.Free;
  inherited;
end;

procedure TframeCarServiceUniGUITimeTable.SetAddresses(const Value: IBookingAddresses);
var
  i: Integer;
begin
  FAddresses := Value;
  if Assigned(FAddresses) and Assigned(cboPickup) and Assigned(cboReturn) then
  begin
    FAddresses.First;
    while not FAddresses.EOF do
    begin
      FAddressList.Add(FAddresses.GUID);
      cboPickup.Items.Add(FAddresses.BookingAddress.FullAddress.AsString);
      cboReturn.Items.Add(FAddresses.BookingAddress.FullAddress.AsString);
      FAddresses.Next;
    end;
  end;
end;

procedure TframeCarServiceUniGUITimeTable.SetFromIndex(const Value: Integer);
begin
  FModified := FFromIndex <> Value;
  if FModified and Assigned(cboPickup) then
  begin
    FFromIndex := Value;
    cboPickup.ItemIndex := FFromIndex;
  end;
end;

procedure TframeCarServiceUniGUITimeTable.SetModified(const Value: Boolean);
begin
  FModified := Value;
end;

procedure TframeCarServiceUniGUITimeTable.SetToIndex(const Value: Integer);
begin
  FModified := FToIndex <> Value;
  if FModified and Assigned(cboReturn) then
  begin
    FToIndex := Value;
    cboReturn.ItemIndex := FToIndex
  end;
end;

procedure TframeCarServiceUniGUITimeTable.SetTimeTableView(const Value: ItimetableView);
begin
  FTimeTableView := Value;
end;

end.
