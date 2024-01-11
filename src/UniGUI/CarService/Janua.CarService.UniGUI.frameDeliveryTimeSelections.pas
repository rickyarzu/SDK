unit Janua.CarService.UniGUI.frameDeliveryTimeSelections;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uniGUIBaseClasses, uniGUIClasses, uniLabel;

type
  TFrame2 = class(TFrame)
    ulbPickupDate: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
