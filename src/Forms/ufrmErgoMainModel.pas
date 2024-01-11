unit ufrmErgoMainModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.Core.Classes, Janua.Core.System,
  Janua.Core.CustomControls,  AdvOfficeStatusBar,
  AdvOfficeTabSet, AdvGlowButton, Vcl.ExtCtrls, Shader, Vcl.ImgList, AdvToolBar, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, JvExControls, JvDBLookup, AdvOfficeStatusBarStylers, AdvOfficePager,
  AdvOfficePagerStylers, AdvMenus, AdvMenuStylers, AdvOfficeTabSetStylers, AdvAppStyler, Vcl.Menus,
  AdvNavBar, JvImageList, AdvSplitter, InspectorBar,  System.ImageList, Data.DB;

type
  TfrmErgoMainModel = class(TForm)
    StatusBar1: TAdvOfficeStatusBar;
    Shader1: TShader;
    btnMenu: TAdvGlowButton;
    AdvOfficeMDITabSet1: TAdvOfficeMDITabSet;
    Images16Dis: TJvImageList;
    Images16: TJvImageList;
    Panel1: TShader;
    lbtitolo: TLabel;
    Label1: TLabel;
    lbSchema: TLabel;
    Label2: TLabel;
    btnPasswordSetup: TAdvGlowButton;
    btnHome: TAdvGlowButton;
    btnChiudi: TAdvGlowButton;
    dblEsercizio: TJvDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    btnStyler: TAdvGlowMenuButton;
    AdvAppStyler1: TAdvAppStyler;
    TabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    MenuOfficeStyler1: TAdvMenuOfficeStyler;
    PagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    OfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvPopupMenuStyles: TAdvPopupMenu;
    AdvFormStyler1: TAdvFormStyler;
    AdvNavBarEmc: TAdvNavBar;
    AdvMenuFantasyStyler1: TAdvMenuFantasyStyler;
    AdvMainMenu1: TAdvMainMenu;
    MainProgramMenuTitle1: TMenuItem;
    MainModelTestMenu1: TMenuItem;
    MainModelN1: TMenuItem;
    MainExitMenu1: TMenuItem;
    Images24: TJvImageList;
    Images24Hot: TJvImageList;
    Images24Dis: TJvImageList;
    btnUserLogin: TAdvGlowButton;
    Images16Hot: TJvImageList;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvSplitter1: TAdvSplitter;
    PopUser: TAdvPopupMenu;
    InspectorBar1: TInspectorBar;
    AppIconsList: TImageList;
    Football1: TMenuItem;
    Login1: TMenuItem;
    N1: TMenuItem;
    dsPeriods: TDataSource;
    procedure FormShow(Sender: TObject); virtual;
    procedure btnChiudiClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure MainExitMenu1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Login1Click(Sender: TObject);
  private
    FLoggedIN: boolean;
    FAttempts: integer;
    procedure CloseApplication;
    { Private declarations }
  protected
    procedure MenuBarHide; virtual;
    procedure FormShowInternal; Virtual;
  public
    { Public declarations }
    function Login: boolean;
  end;

var
  frmErgoMainModel: TfrmErgoMainModel;

implementation

{$R *.dfm}

procedure TfrmErgoMainModel.btnChiudiClick(Sender: TObject);
begin
  self.CloseApplication;
end;

procedure TfrmErgoMainModel.btnMenuClick(Sender: TObject);
begin
  MenuBarHide;
end;

procedure TfrmErgoMainModel.CloseApplication;
begin
{
  if JanuaDialog1.JMessageDlgExt('Attenzione Chiudo l''applicazione?', 'Chiudi', 'Non Chiudere')
  then
    self.Close;
}
// Sostituire Janua Dialog 1
 { TODO : Sostituire Janua Dialog 1 su Form Main Model }
end;

procedure TfrmErgoMainModel.MainExitMenu1Click(Sender: TObject);
begin
  self.CloseApplication;
end;

procedure TfrmErgoMainModel.FormShowInternal;
begin
  begin
    self.lbSchema.Visible := False;
    self.btnUserLogin.Visible := True;
    //self.btnUserLogin.Caption := JanuaServerSystem1.Username;
    self.btnUserLogin.Invalidate;
  end;

end;

function TfrmErgoMainModel.Login: boolean;
begin
{
  if Assigned(self.FdmController) then
  begin
    Result := self.FdmController.Login;
  end;
}
end;

procedure TfrmErgoMainModel.Login1Click(Sender: TObject);
begin
  if self.Login then
    FormShowInternal;
end;

procedure TfrmErgoMainModel.MenuBarHide;
begin
  if btnMenu.Caption = 'Nascondi' then
  begin
    btnMenu.Caption := 'Vedi';
    AdvNavBarEmc.Visible := False;
  end
  else
  begin
    btnMenu.Caption := 'Nascondi';
    AdvNavBarEmc.Visible := True;
  end;
end;





procedure TfrmErgoMainModel.FormCreate(Sender: TObject);
begin
  FAttempts := 0;
  FLoggedIN := Login
end;

procedure TfrmErgoMainModel.FormShow(Sender: TObject);
begin
  self.FormShowInternal;
end;

end.
