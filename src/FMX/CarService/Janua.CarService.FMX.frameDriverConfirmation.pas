unit Janua.CarService.FMX.frameDriverConfirmation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  // JOrm.Documents.Impl Booking
  Janua.Cloud.Intf, JOrm.CarService.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  Janua.CarService.dmPgDrivers, Janua.CarService.Intf, Janua.Cloud.Types;

type
  TframeFMXCarServiceDriverConfirmation = class(TFrame)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
