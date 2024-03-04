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
  tmpAnagraphRecord: IBookingAnagraphView;

  procedure AddReturnAddress;
  begin
    with FBookingAnagraphRecord do
    begin
      if Addresses.RecordCount = 1 then
        Addresses.Append(ReturnAddress)
      else
      begin
        Addresses.Last;
        Addresses.CurrentRecord.Assign(ReturnAddress);
      end;
      Addresses.Post;
    end;
  end;

begin
  FBookingAnagraphRecord := aAnagraph;
  tmpAnagraphRecord := TBookingAnagraphView.Create('anagraphview');
  var
  lID := FBookingAnagraphRecord.ReturnAddress.Id.AsInteger;
  var
  lAS := FBookingAnagraphRecord.ReturnAddress.FullAddress.AsString;

  with FBookingAnagraphRecord do
  begin
    // Se non è stato inserito un indirizzo di ritorno gli assegno lo stesso dell'andata
    if (lAS = '') and (MainAddress.FullAddress.AsString > '') and not ReturnAddress.FullAddress.EqualsField
      (MainAddress.FullAddress) then
    begin
      ReturnAddress.Assign(MainAddress);
      ReturnAddress.Pos.AsInteger := 2;

      lID := ReturnAddress.Id.AsInteger;
      lAS := ReturnAddress.FullAddress.AsString;
    end;
  end;
  // Se è stato inserito un indirizzo di ritorno lo salvo nella lista degli indirizzi
  AddReturnAddress;
  // Terminato il ciclo assegno al record temporaneo il record da Elaborare.
  tmpAnagraphRecord.Assign(FBookingAnagraphRecord);
{$IFDEF DEBUG}
  var
  ltAS := tmpAnagraphRecord.ReturnAddress.FullAddress.AsString;
  Guard.CheckTrue(lAS = ltAS, 'Indirizzo non Copiato correttamente ' + lAS);
  lID := tmpAnagraphRecord.ReturnAddress.Id.AsInteger;
  lID := tmpAnagraphRecord.MainAddress.Id.AsInteger;
  lID := tmpAnagraphRecord.Addresses.RecordCount;
{$ENDIF}
  // Eseguo l'aggiornamento sul Record Temporaneo
  Result := UpdateAnagraph(tmpAnagraphRecord);
{$IFDEF DEBUG}
  lID := FBookingAnagraphRecord.AnagraphID.AsInteger;
  lID := tmpAnagraphRecord.AnagraphID.AsInteger;
  lID := tmpAnagraphRecord.ReturnAddress.Id.AsInteger;
  lID := tmpAnagraphRecord.MainAddress.Id.AsInteger;
  lID := tmpAnagraphRecord.Addresses.RecordCount;
{$ENDIF}
  if Result then
    RefreshBookingAnagraph(tmpAnagraphRecord);

{$IFDEF DEBUG}
  lID := FBookingAnagraphRecord.AnagraphID.AsInteger;
  lID := tmpAnagraphRecord.AnagraphID.AsInteger;
{$ENDIF}
end;

end.
