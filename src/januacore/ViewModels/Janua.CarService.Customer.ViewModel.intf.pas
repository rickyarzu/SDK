unit Janua.CarService.Customer.ViewModel.intf;

interface

uses System.SysUtils, Data.DB,
  // Janua Framework
  Janua.Orm.intf, Janua.ViewModels.intf, Janua.Core.Classes.intf, Janua.Controls.Forms.intf,
  // Orm
  JOrm.System.intf, JOrm.CarService.Booking.intf,
  // Framework
  Janua.Search.ViewModels.Engines.intf;

type
  IJanuaCarServiceBookingDataModule = interface(IJanuaDataModuleContainer)
    ['{98010864-A48A-4991-A1D7-A1B5E181A939}']
    function GetjdsBooking: IJanuaDBDataset;
    property jdsBooking: IJanuaDBDataset read GetjdsBooking;

    function GetjdsPickup: IJanuaDBDataset;
    property jdsPickup: IJanuaDBDataset read GetjdsPickup;

    function GetjdsDelivery: IJanuaDBDataset;
    property jdsDelivery: IJanuaDBDataset read GetjdsDelivery;
  end;

implementation

end.
