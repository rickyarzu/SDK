unit ufrmVCLTestPaypal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.CDataPayPalDef, FireDAC.Stan.Intf, FireDAC.Phys,
  FireDAC.Phys.CDataPayPal;

type
  TForm3 = class(TForm)
    FDPhysCDataPayPalDriverLink1: TFDPhysCDataPayPalDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
