unit Janua.Shipping.Booking.Postgres;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmPgShippingBooking = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgShippingBooking: TdmPgShippingBooking;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
