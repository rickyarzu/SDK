unit Janua.CarService.Anagraph.Model.Impl;

interface

uses
  // System and RTL
  System.Classes, System.SysUtils, Spring, System.StrUtils, Spring.Collections, Data.DB,
  // Janua
  Janua.ViewModels.Intf, Janua.Models.Templates, Janua.Anagraph.ViewModel.Intf, Janua.Orm.Intf,
  Janua.core.Classes.Intf, JOrm.Anagraph.Intf, Janua.core.Classes, Janua.Orm.Types,
  Janua.CarService.Anagraph.ViewModel.Intf, JOrm.CarService.Booking.Intf, Janua.Anagraph.Model.Impl;

type
  TJanuaCarServiceAnagraphModel = class(TJanuaDBAnagraphModel, IJanuaCarServiceAnagraphModel,
    IJanuaDBAnagraphModel, IJanuaModel)
  public
    constructor Create; override;
  strict private
    FBookingAnagraphRecord: IBookingAnagraphView;
  protected
    function GetBookingAnagraph: IBookingAnagraphView;
    procedure RefreshBookingAnagraph(aAnagraph: IAnagraphView);
  public
    /// <summary>  Integer: Create a new record in BookingAngraph DB According to Group and Logical Record Received </summary>
    /// <param name="aAnagraph">  The Anagraph record to be inserted </param>
    /// <example>   ID := FAnagraphModel.AddNewAnagraph(myAnagraph); </example>
    function AddNewBookingAnagraph(const aBookingAnagraph: IBookingAnagraphView): Integer;
    /// <summary>  Boolean: Updates a record in anagraph DB According to Group and Logical Record Received </summary>
    /// <param name="aAnagraph">  The Anagraph record to be inserted </param>
    /// <example>   ID := FAnagraphModel.AddNewAnagraph(myAnagraph); </example>
    function UpdateBookingAnagraph(const aAnagraph: IBookingAnagraphView): Boolean;
    /// <summary>  Boolean: Updates a record in anagraph DB According to Group and Logical Record Received </summary>
    /// <param name="aAnagraph">  The Anagraph record to be inserted </param>
    /// <example>   ID := FAnagraphModel.AddNewAnagraph(myAnagraph); </example>
    function TryGetBookingAnagraphID(out aAnagraph: IBookingAnagraphView; const aID: Integer): Boolean;
    function TryGetBookingAnagraphGUID(out aAnagraph: IBookingAnagraphView; const aGUID: TGUID): Boolean;
    property BookingAnagraph: IBookingAnagraphView read GetBookingAnagraph;
  end;

implementation

uses JOrm.Anagraph.Impl, JOrm.CarService.Booking.Impl;

{ TJanuaCarServiceAnagraphModel }

function TJanuaCarServiceAnagraphModel.AddNewBookingAnagraph(const aBookingAnagraph
  : IBookingAnagraphView): Integer;
var
  tmpAnagraphRecord: IAnagraphView;
begin
  aBookingAnagraph.SyncMainAddress;
  var
  lAR := aBookingAnagraph.Addresses.RecordCount;

  with aBookingAnagraph do
  begin
    if (ReturnAddress.FullAddress.AsString <> '') and not ReturnAddress.FullAddress.EqualsField
      (MainAddress.FullAddress) then
    begin
      ReturnAddress.Pos.AsInteger := 2;
      ReturnAddress.Post;
      Addresses.Append(ReturnAddress);
      Addresses.Post;
{$IFDEF DEBUG}
      lAR := aBookingAnagraph.Addresses.RecordCount;
      Guard.CheckTrue(1 = lAR, 'aBookingAnagraph.Addresses Error Main');
{$ENDIF}
    end
  end;

  Result := AddNewAnagraph(aBookingAnagraph as IAnagraphView);

  if Result > 0 then
    RefreshBookingAnagraph(self.AnagraphRecord);

end;

constructor TJanuaCarServiceAnagraphModel.Create;
begin
  inherited;
  FBookingAnagraphRecord := TBookingAnagraphView.Create('anagraphbooking');
end;

function TJanuaCarServiceAnagraphModel.GetBookingAnagraph: IBookingAnagraphView;
begin
  Result := FBookingAnagraphRecord;
end;

procedure TJanuaCarServiceAnagraphModel.RefreshBookingAnagraph(aAnagraph: IAnagraphView);
begin
  if Assigned(aAnagraph) then
  begin
    FBookingAnagraphRecord.Assign(aAnagraph);
    if FBookingAnagraphRecord.Addresses.RecordCount > 0 then
    begin
      FBookingAnagraphRecord.Addresses.First;
      FBookingAnagraphRecord.MainAddress.Assign(FBookingAnagraphRecord.Addresses.CurrentRecord);

      if FBookingAnagraphRecord.Addresses.RecordCount > 1 then
        FBookingAnagraphRecord.Addresses.Last;

      if FBookingAnagraphRecord.Addresses.RecordAddress.Id.AsInteger > 1 then
        FBookingAnagraphRecord.ReturnAddress.Assign(FBookingAnagraphRecord.Addresses.CurrentRecord)
      else
        FBookingAnagraphRecord.ReturnAddress.Assign(FBookingAnagraphRecord.MainAddress);
    end;
  end;
{$IFDEF DEBUG}
  var
  lID := FBookingAnagraphRecord.AnagraphID.AsInteger;
  lID := FBookingAnagraphRecord.MainAddress.Id.AsInteger;
  lID := FBookingAnagraphRecord.ReturnAddress.Id.AsInteger;
{$ENDIF}
end;

function TJanuaCarServiceAnagraphModel.TryGetBookingAnagraphGUID(out aAnagraph: IBookingAnagraphView;
  const aGUID: TGUID): Boolean;
var
  tmpAnagraphRecord: IAnagraphView;
begin
  Result := TryGetAnagraphByGUID(tmpAnagraphRecord, aGUID);
  if Result then
    aAnagraph := TBookingAnagraphView.Create(tmpAnagraphRecord);
end;

function TJanuaCarServiceAnagraphModel.TryGetBookingAnagraphID(out aAnagraph: IBookingAnagraphView;
  const aID: Integer): Boolean;
var
  tmpAnagraphRecord: IAnagraphView;
begin
  Result := TryGetAnagraphByID(tmpAnagraphRecord, aID);
  if Result then
    aAnagraph := TBookingAnagraphView.Create(tmpAnagraphRecord);
end;

function TJanuaCarServiceAnagraphModel.UpdateBookingAnagraph(const aAnagraph: IBookingAnagraphView): Boolean;
var
  tmpAnagraphRecord: IAnagraphView;
begin
  FBookingAnagraphRecord := aAnagraph;
  tmpAnagraphRecord := TAnagraphView.Create('anagraphview');

  with FBookingAnagraphRecord do
  begin
    if (ReturnAddress.FullAddress.AsString <> '') and not ReturnAddress.FullAddress.EqualsField
      (MainAddress.FullAddress) then
    begin
      ReturnAddress.Post;
      Addresses.Append(ReturnAddress);
      tmpAnagraphRecord.Addresses.Post;
    end;
  end;

  tmpAnagraphRecord.Assign(FBookingAnagraphRecord);
  Result := UpdateAnagraph(tmpAnagraphRecord);
{$IFDEF DEBUG}
  var
  lID := FBookingAnagraphRecord.AnagraphID.AsInteger;
  lID := tmpAnagraphRecord.AnagraphID.AsInteger;
{$ENDIF}
  if Result then
    RefreshBookingAnagraph(tmpAnagraphRecord);

{$IFDEF DEBUG}
  lID := FBookingAnagraphRecord.AnagraphID.AsInteger;
  lID := tmpAnagraphRecord.AnagraphID.AsInteger;
{$ENDIF}
end;

end.
