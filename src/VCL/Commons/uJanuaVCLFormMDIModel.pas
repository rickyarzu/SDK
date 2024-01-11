unit uJanuaVCLFormMDIModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvMenus, AdvToolBar,
  Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, AdvGlowButton, Vcl.ExtCtrls, Shader, AdvNavBar,
  System.ImageList, Vcl.ImgList,
  // Units
  udmJanuaVCLSystem,
  // Tms Components
  AdvMenuStylers, AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvAppStyler, AdvOfficePager,
  AdvOfficePagerStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvStyleIF,
  // Tms Controls
    AdvPanel, InspectorBar, AdvSplitter;

type
  TJanuaVCLFormMDIModel = class(TForm)
    AdvMainMenu1: TAdvMainMenu;
    pnlTopBar: TPanel;
    lbtitolo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnPasswordSetup: TAdvGlowButton;
    btnHome: TAdvGlowButton;
    btnChiudi: TAdvGlowButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    AdvGlowMenuButton1: TAdvGlowMenuButton;
    NavBarMain: TAdvNavBar;
    navPanelSettings: TAdvNavBarPanel;
    pnlTopMDI: TPanel;
    btnMenu: TAdvGlowButton;
    ImageListStandard: TImageList;
    AdvOfficeMDITabSet: TAdvOfficeMDITabSet;
    insBarSettings: TInspectorBar;
    ImageListHot: TImageList;
    ImageListDisabled: TImageList;
    BigImageList: TImageList;
    SmallImageList: TImageList;
    AdvSplitter1: TAdvSplitter;
    AdvPopupMenu1: TAdvPopupMenu;
    file1: TMenuItem;
    open1: TMenuItem;
    save1: TMenuItem;
    Olive1: TMenuItem;
    Silver1: TMenuItem;
    XP1: TMenuItem;
    Classico1: TMenuItem;
    WindowsXP1: TMenuItem;
    Office2007Ossido1: TMenuItem;
    Office2007Argento1: TMenuItem;
    Office2007Blu1: TMenuItem;
    Windows81: TMenuItem;
    Office2013Bianco1: TMenuItem;
    Office2013Crema1: TMenuItem;
    Office2013Grigio1: TMenuItem;
    procedure AdvSplitter1Moved(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure PopMenuStylerClick(Sender: TObject);
    procedure SetStyle(vStyle: Integer);
    procedure FormCreate(Sender: TObject);
  private
    FVCLSystem: udmJanuaVCLSystem.TdmJanuaSystem;
    procedure SetVCLSystem(const Value: udmJanuaVCLSystem.TdmJanuaSystem);
    { Private declarations }
  public
    { Public declarations }
    property VCLSystem: udmJanuaVCLSystem.TdmJanuaSystem read FVCLSystem write SetVCLSystem;
  end;

var
  JanuaVCLFormMDIModel: TJanuaVCLFormMDIModel;

implementation

{$R *.dfm}

procedure TJanuaVCLFormMDIModel.AdvSplitter1Moved(Sender: TObject);
begin
  btnMenu.Width := AdvSplitter1.Left;
end;

procedure TJanuaVCLFormMDIModel.btnMenuClick(Sender: TObject);
begin
  if btnMenu.Caption = 'Nascondi' then
  begin
    btnMenu.Caption := 'Vedi';
    NavBarMain.Visible := False;
  end
  else
  begin
    btnMenu.Caption := 'Nascondi';
    NavBarMain.Visible := True;
  end;
end;

procedure TJanuaVCLFormMDIModel.FormCreate(Sender: TObject);
begin
  self.FVCLSystem := udmJanuaVCLSystem.TdmJanuaSystem.Create(self);
end;

procedure TJanuaVCLFormMDIModel.PopMenuStylerClick(Sender: TObject);
begin
  SetStyle(TMenuItem(Sender).Tag);
end;

procedure TJanuaVCLFormMDIModel.SetStyle(vStyle: Integer);
begin
  AdvGlowMenuButton1.Caption := FVCLSystem.SetStyle(vStyle);
end;

procedure TJanuaVCLFormMDIModel.SetVCLSystem(const Value: udmJanuaVCLSystem.TdmJanuaSystem);
begin
  FVCLSystem := Value;
end;

end.
