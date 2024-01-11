unit Janua.CarService.Anagraph.ViewModel.Impl;

interface

uses
  // System and RTL
  System.Classes, System.SysUtils, Spring, System.StrUtils, Spring.Collections, Data.DB,
  // Janua
  Janua.ViewModels.Intf, Janua.Models.Templates, Janua.Anagraph.ViewModel.Intf, Janua.Orm.Intf,
  Janua.core.Classes.Intf, JOrm.Anagraph.Intf, Janua.core.Classes, Janua.Orm.Types,
  Janua.CarService.Anagraph.ViewModel.Intf, JOrm.CarService.Booking.Intf,
  // Inherited Items
  Janua.Anagraph.ViewModel.Impl;

type
  TJanuaCarServiceAnagraphViewModel = class(TAnagraphViewModel, IJanuaCarServiceAnagraphViewModel,
    IJanuaDBAnagraphViewModel, IJanuaDBViewModel)
  public
    constructor Create; override;
  strict private
    FCarServiceAnagraphModel: IJanuaCarServiceAnagraphModel;
  protected
    function GetBookingAnagraph: IBookingAnagraphView;
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

uses Janua.CarService.Anagraph.Model.Impl;

{ TJanuaCarServiceAnagraphViewModel }

function TJanuaCarServiceAnagraphViewModel.AddNewBookingAnagraph(const aBookingAnagraph
  : IBookingAnagraphView): Integer;
begin
  Result := FCarServiceAnagraphModel.AddNewBookingAnagraph(aBookingAnagraph)
end;

constructor TJanuaCarServiceAnagraphViewModel.Create;
begin
  inherited;
  FCarServiceAnagraphModel := TJanuaCarServiceAnagraphModel.Create;
end;

function TJanuaCarServiceAnagraphViewModel.GetBookingAnagraph: IBookingAnagraphView;
begin
  Result := FCarServiceAnagraphModel.BookingAnagraph
end;

function TJanuaCarServiceAnagraphViewModel.TryGetBookingAnagraphGUID(out aAnagraph: IBookingAnagraphView;
  const aGUID: TGUID): Boolean;
begin
  Result := FCarServiceAnagraphModel.TryGetBookingAnagraphGUID(aAnagraph, aGUID)
end;

function TJanuaCarServiceAnagraphViewModel.TryGetBookingAnagraphID(out aAnagraph: IBookingAnagraphView;
  const aID: Integer): Boolean;
begin
  Result := FCarServiceAnagraphModel.TryGetBookingAnagraphID(aAnagraph, aID)
end;

function TJanuaCarServiceAnagraphViewModel.UpdateBookingAnagraph(const aAnagraph
  : IBookingAnagraphView): Boolean;
begin
  Result := FCarServiceAnagraphModel.UpdateBookingAnagraph(aAnagraph)
end;

end.
