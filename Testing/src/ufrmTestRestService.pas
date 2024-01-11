unit ufrmTestRestService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvOfficePager, AdvAppStyler, Vcl.ExtCtrls, Shader, Data.DB, MemDS,
  VirtualTable;

type
  TForm5 = class(TForm)
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    Shader1: TShader;
    AdvFormStyler1: TAdvFormStyler;
    VirtualTable1: TVirtualTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

end.
