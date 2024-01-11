unit ufrmTestMainMDI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmErgoMainModel, Data.DB, Vcl.Menus, AdvMenus, AdvMenuStylers, AdvAppStyler,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvOfficePager, AdvOfficePagerStylers, AdvOfficeTabSet,
  AdvOfficeTabSetStylers, System.ImageList, Vcl.ImgList, JvImageList, InspectorBar, AdvNavBar, AdvToolBar, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, JvExControls, JvDBLookup, AdvGlowButton, Vcl.ExtCtrls, Shader, AdvSplitter;

type
  TfrmErgoMainModel2 = class(TfrmErgoMainModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmErgoMainModel2: TfrmErgoMainModel2;

implementation

{$R *.dfm}

end.
