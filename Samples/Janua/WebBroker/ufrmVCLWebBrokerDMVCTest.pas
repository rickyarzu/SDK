unit ufrmVCLWebBrokerDMVCTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    pgTests: TPageControl;
    tabWebBrokder: TTabSheet;
    tabDMVCWebBrokder: TTabSheet;
    tabMixedTest: TTabSheet;
    pnlWebBrokerTest: TPanel;
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
