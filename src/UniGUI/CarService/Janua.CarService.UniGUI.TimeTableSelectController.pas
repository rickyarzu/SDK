unit Janua.CarService.UniGUI.TimeTableSelectController;

interface

(* ***********************************************************************************************
  This Controller is made to figure out the Pickup and Delivery locations of a travel in the Timetable
  Adresses can be 2 or 3 that is
  1 Service Address
  1 or 2 User's Address(es) for a Pickup or Restitution of the Vehicle
  Every Address is identifie by a
  GUID and an ID on DB
  and a Type that can be U or S (User or Service)
  if The Pickup Address is 'U' then the Delivery will be 'S' and vice-versa.
  ************************************************************************************************* *)

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.StrUtils,
  System.Generics.Collections,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniLabel, uniPanel,
  uniMultiItem, uniComboBox,
  // Januaproject
  JOrm.CarService.Booking.Intf, Janua.UniGUI.Controller;

type
  TTimeTableUniGUIController = class(TJanuaUniGUIController)
  private
    FTimeTableView: ItimetableView;
    FAddresses: IBookingAddresses;
    FAddressList: TList<TGUID>;
    FToIndex: Integer;
    FFromIndex: Integer;
    FOldToIndex: Integer;
    FOldFromIndex: Integer;
    FModified: Boolean;
    FlbDeparture: TUniLabel;
    FlbTimetableDAte: TUniLabel;
    FlbVehiclePickupPlace: TUniLabel;
    FcboReturn: TUniComboBox;
    FcboPickup: TUniComboBox;
    FlbDeliveryTime: TUniLabel;
    FlbTimeTableType: TUniLabel;
  protected
    procedure SetcboPickup(const Value: TUniComboBox);
    procedure SetcboReturn(const Value: TUniComboBox);
    procedure SetlbDeliveryTime(const Value: TUniLabel);
    procedure SetlbDeparture(const Value: TUniLabel);
    procedure SetlbTimetableDAte(const Value: TUniLabel);
    procedure SetlbTimeTableType(const Value: TUniLabel);
    procedure SetlbVehiclePickupPlace(const Value: TUniLabel);
    procedure SetTimeTableView(const Value: ItimetableView);
    procedure SetAddresses(const Value: IBookingAddresses);
    procedure SetFromIndex(const Value: Integer);
    procedure SetToIndex(const Value: Integer);
    procedure SetModified(const Value: Boolean);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure cboPickupCloseUp(Sender: TObject); // Assigned to FcboPickup
    procedure cboReturnCloseUp(Sender: TObject); // FcboReturn
    property TimeTableView: ItimetableView read FTimeTableView write SetTimeTableView;
    property Addresses: IBookingAddresses read FAddresses write SetAddresses;
    property FromIndex: Integer read FFromIndex write SetFromIndex;
    property ToIndex: Integer read FToIndex write SetToIndex;
    property Modified: Boolean read FModified write SetModified;
  published
    property lbTimeTableType: TUniLabel read FlbTimeTableType write SetlbTimeTableType;
    property lbTimetableDAte: TUniLabel read FlbTimetableDAte write SetlbTimetableDAte;
    property lbDeliveryTime: TUniLabel read FlbDeliveryTime write SetlbDeliveryTime;
    property cboPickup: TUniComboBox read FcboPickup write SetcboPickup;
    property lbDeparture: TUniLabel read FlbDeparture write SetlbDeparture;
    property cboReturn: TUniComboBox read FcboReturn write SetcboReturn;
    property lbVehiclePickupPlace: TUniLabel read FlbVehiclePickupPlace write SetlbVehiclePickupPlace;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua CarService UniGUI', [TTimeTableUniGUIController]);
end;

{ TTimeTableUniGUIController }

procedure TTimeTableUniGUIController.cboPickupCloseUp(Sender: TObject);
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

procedure TTimeTableUniGUIController.cboReturnCloseUp(Sender: TObject);
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
  i := cboReturn.ItemIndex;
  if FAddressList.Count > (i + 1) then
  begin
    lGUID := FAddressList[i];
    if (ToIndex <> i) and Assigned(cboPickup) and Assigned(cboReturn) and Assigned(FAddresses) and
      Assigned(TimeTableView) then
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

constructor TTimeTableUniGUIController.Create(AOwner: TComponent);
begin
  inherited;
  FAddressList := TList<TGUID>.Create;
  FToIndex := -1;
  FFromIndex := -1;
  FOldToIndex := -1;
  FOldFromIndex := -1;
  FModified := False;
end;

destructor TTimeTableUniGUIController.Destroy;
begin
  FAddressList.Free;
  inherited;
end;

procedure TTimeTableUniGUIController.SetAddresses(const Value: IBookingAddresses);
var
  i: Integer;
begin
  FAddresses := Value;
  if Assigned(cboPickup) and Assigned(cboReturn) and Assigned(FAddresses) then
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

procedure TTimeTableUniGUIController.SetcboPickup(const Value: TUniComboBox);
begin
  FcboPickup := Value;
  // cboPickupCloseUp
  if Assigned(FcboPickup) then
    FcboPickup.OnCloseUp := cboPickupCloseUp
end;

procedure TTimeTableUniGUIController.SetcboReturn(const Value: TUniComboBox);
begin
  FcboReturn := Value;
  // cboReturnCloseUp
  if Assigned(FcboReturn) then
    FcboReturn.OnCloseUp := cboReturnCloseUp
end;

procedure TTimeTableUniGUIController.SetFromIndex(const Value: Integer);
begin
  FModified := FFromIndex <> Value;
  if FModified and Assigned(cboPickup) then
  begin
    FFromIndex := Value;
    cboPickup.ItemIndex := FFromIndex;
  end;
end;

procedure TTimeTableUniGUIController.SetlbDeliveryTime(const Value: TUniLabel);
begin
  FlbDeliveryTime := Value;
end;

procedure TTimeTableUniGUIController.SetlbDeparture(const Value: TUniLabel);
begin
  FlbDeparture := Value;
end;

procedure TTimeTableUniGUIController.SetlbTimetableDAte(const Value: TUniLabel);
begin
  FlbTimetableDAte := Value;
end;

procedure TTimeTableUniGUIController.SetlbTimeTableType(const Value: TUniLabel);
begin
  FlbTimeTableType := Value;
end;

procedure TTimeTableUniGUIController.SetlbVehiclePickupPlace(const Value: TUniLabel);
begin
  FlbVehiclePickupPlace := Value;
end;

procedure TTimeTableUniGUIController.SetModified(const Value: Boolean);
begin
  FModified := Value;
end;

procedure TTimeTableUniGUIController.SetToIndex(const Value: Integer);
begin
  FModified := FToIndex <> Value;
  if FModified and Assigned(cboReturn) then
  begin
    FToIndex := Value;
    cboReturn.ItemIndex := FToIndex
  end;
end;

procedure TTimeTableUniGUIController.SetTimeTableView(const Value: ItimetableView);
begin
  FTimeTableView := Value;
end;

end.
