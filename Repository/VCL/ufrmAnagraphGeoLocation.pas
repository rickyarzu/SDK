unit ufrmAnagraphGeoLocation;

interface

uses
  // System ...................................................................................
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // DB Devart Components .....................................................................
  Data.DB, CRGrid,
  // VCL ......................................................................................
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  // Janua ....................................................................................
  Janua.Core.Classes, Janua.Core.Functions,
  // Form Repository
  ufrmMDCModel,
  // TMS Components
  AdvAppStyler, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, Shader, UWebGMapsCommon, UWebGMapsGeocoding, AdvPanel,
  AdvMenus, AdvMenuStylers, AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvOfficePager, AdvOfficePagerStylers,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvSplitter, AdvGlowButton, UWebGMapsReverseGeocoding;

type
  TForm2 = class(TfrmMDCModel)
    pnlAnagraph: TPanel;
    Shader1: TShader;
    ButtonedEdit1: TButtonedEdit;
    CRDBGrid1: TCRDBGrid;
    pnlMaps: TShader;
    AdvSplitter1: TAdvSplitter;
    Shader2: TShader;
    AdvGlowButton1: TAdvGlowButton;
    Shader3: TShader;
    edName: TLabeledEdit;
    dsAnagraph: TDataSource;
    edAddressFull: TLabeledEdit;
    WebGMapsReverseGeocoding1: TWebGMapsReverseGeocoding;
  private
    { Private declarations }
    procedure setGeoCoding;
    procedure ActivateAnagraph;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
{ TForm2 }

procedure TForm2.ActivateAnagraph;
begin
  // Reserved for Anagraph Forms ......................................................
end;

procedure TForm2.setGeoCoding;
begin

end;

end.
