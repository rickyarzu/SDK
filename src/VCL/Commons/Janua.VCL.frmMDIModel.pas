unit Janua.VCL.frmMDIModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvMenus, AdvOfficeTabSet, AdvToolBar, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExControls, JvDBLookup, AdvGlowButton, Vcl.ExtCtrls, Shader;

type
  TfrmDico33Manager = class(TForm)
    AdvOfficeMDITabSet1: TAdvOfficeMDITabSet;
    AdvMainMenu1: TAdvMainMenu;
    Panel1: TShader;
    lbtitolo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnPasswordSetup: TAdvGlowButton;
    btnHome: TAdvGlowButton;
    btnChiudi: TAdvGlowButton;
    dblEsercizio: TJvDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    AdvGlowMenuButton1: TAdvGlowMenuButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDico33Manager: TfrmDico33Manager;

implementation

{$R *.dfm}

end.
