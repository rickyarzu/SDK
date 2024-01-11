unit Janua.CarService.Anagraph.ViewModel.Intf;

interface

uses
  // System
  System.Types, System.UITypes, System.SysUtils, Spring.Collections,
  // JanuaProject
  Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, JOrm.Anagraph.Intf,
  Janua.Bindings.Intf, Janua.ViewModels.Intf, Janua.Reporting.Intf,
  // Inherited Items
  JOrm.CarService.Booking.Intf, Janua.Anagraph.ViewModel.Intf;

type
  IJanuaCarServiceAnagraphDataModule = interface(IJanuaAnagraphDataModule)
    ['{D81D240B-F875-4F8C-A612-BF2010E7A865}']
    function GetjdsAnagraphCars: IJanuaDBDataset;
    procedure SetjdsAnagraphCars(Value: IJanuaDBDataset);
    /// <summary> Connection with AnagraphCars Dataset. Table of all the entities in the DB. </summary>
    property jdsAnagraphCars: IJanuaDBDataset read GetjdsAnagraphCars write SetjdsAnagraphCars;
  end;

  IJanuaCarServiceAnagraphModel = interface(IJanuaDBAnagraphModel)
    ['{AD75BADD-1889-4C95-84CC-58CD4EC06BD6}']
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

    function GetBookingAnagraph: IBookingAnagraphView;
    property BookingAnagraph: IBookingAnagraphView read GetBookingAnagraph;
  end;

  IJanuaCarServiceAnagraphViewModel = interface(IJanuaDBAnagraphViewModel)
    ['{1A677740-C59B-488B-8874-FDB7F596733B}']
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

    function GetBookingAnagraph: IBookingAnagraphView;
    property BookingAnagraph: IBookingAnagraphView read GetBookingAnagraph;
  end;

implementation

end.
