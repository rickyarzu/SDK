unit udlgFootballSuAnagraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Shader,
  AdvOfficeImage, AdvGlowButton, AdvAppStyler, AdvStyleIF;

type
  TdlgFootballSubAnagraph = class(TForm)
    Shader1: TShader;
    Shader2: TShader;
    Shader10: TShader;
    Label35: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label40: TLabel;
    DBEdit25: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit30: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    AdvOfficeImage1: TAdvOfficeImage;
    AdvGlowButton1: TAdvGlowButton;
    btnOk: TAdvGlowButton;
    AdvFormStyler1: TAdvFormStyler;
    btnPicturePhotos: TAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgFootballSubAnagraph: TdlgFootballSubAnagraph;

implementation

{$R *.dfm}

uses udmFootballAnagraph;

end.
