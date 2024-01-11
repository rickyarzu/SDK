unit ufrmVCLCarServiceDemoMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothTabPager, AdvAppStyler,
  AdvStyleIF, uRCGPlaceAutocompleteCombo, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    AdvSmoothTabPager1: TAdvSmoothTabPager;
    pageRegister: TAdvSmoothTabPage;
    AdvSmoothTabPager12: TAdvSmoothTabPage;
    AdvSmoothTabPager13: TAdvSmoothTabPage;
    AdvAppStyler1: TAdvAppStyler;
    AdvFormStyler1: TAdvFormStyler;
    RCGPlaceAutoCompleteCombo1: TRCGPlaceAutoCompleteCombo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
