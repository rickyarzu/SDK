unit Janua.TMS.frmMDIContainer;

interface

uses
  // Rtl
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.Generics.Collections,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.ToolWin,
  Vcl.Menus, Vcl.StdCtrls, Vcl.FormTabsBar,
  // Tms
  AdvMenus,
  // Forms
  uJanuaVclForm, ufrmMDIRibbonToolbar,
  // Janua
  Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.TMS.NavBar, Janua.Controls.Forms.Impl,
  Janua.Vcl.Controls.Forms.Impl;

type
  TfrmVCLJanuaMDIContainer = class(TJanuaVCLFormModel, IJanuaForm)
    AdvPopupMenu1: TAdvPopupMenu;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Style1: TMenuItem;
    Panel4: TPanel;
    MenuButtonToolbar: TToolBar;
    ToolButton1: TToolButton;
    ToolBarTopRight: TToolBar;
    SplitViewLeft: TSplitView;
    tmrWaitSpin: TTimer;
    Panel1: TPanel;
    pnlLeftBar: TPanel;
    FormTabsBar2: TFormTabsBar;
    SearchBox1: TSearchBox;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FMDIController: TJanuaVCLMDIController;
    procedure SetMDIController(const Value: TJanuaVCLMDIController);
  protected
    procedure FormSetup; override;
    procedure Loaded; override;
  public
    procedure StyleClick(Sender: TObject);
    property MDIController: TJanuaVCLMDIController read FMDIController write SetMDIController;
  end;

var
  frmVCLJanuaMDIContainer: TfrmVCLJanuaMDIContainer;

implementation

uses Janua.Application.Framework, Janua.Core.Functions, Vcl.Styles, Vcl.Themes;

{$R *.dfm}

procedure TfrmVCLJanuaMDIContainer.Exit1Click(Sender: TObject);
begin
  inherited;
  if TJanuaApplication.Dialogs.JMessageDlg('Do you want to Quit Application?') then
    Close;
end;

procedure TfrmVCLJanuaMDIContainer.FormCreate(Sender: TObject);
var
  Style: String;
  Item: TMenuItem;
begin
  inherited;
  FMDIController := TJanuaVCLMDIController.Create(self);
  // Add child menu items based on available styles.
  for Style in TStyleManager.StyleNames do
  begin
    if TStyleManager.ActiveStyle.Name <> 'Windows' then
    begin
      Item := TMenuItem.Create(self);
      Item.Caption := Style;
      Item.OnClick := StyleClick;
      if TStyleManager.ActiveStyle.Name = Style then
        Item.Checked := true;
      Style1.Add(Item);
    end;
  end;
end;

procedure TfrmVCLJanuaMDIContainer.FormSetup;
begin
  inherited;
  // Basic Setup should be At least the main form Caption.
  Caption := TJanuaApplication.Title;
end;

procedure TfrmVCLJanuaMDIContainer.FormShow(Sender: TObject);
begin
  inherited;
  if not FIsSetup then
  begin
    FormSetup;
    FIsSetup := true;
  end;
end;

procedure TfrmVCLJanuaMDIContainer.Loaded;
begin
  inherited;
  Application.DefaultFont.Name := TJanuaApplication.StyleManager.ScreenFontName;
  Application.DefaultFont.Height := TJanuaApplication.StyleManager.ScreenFontHeight;
  TJanuaApplication.StyleManager.Activate;
end;

procedure TfrmVCLJanuaMDIContainer.SetMDIController(const Value: TJanuaVCLMDIController);
begin
  FMDIController := Value;
end;


procedure TfrmVCLJanuaMDIContainer.StyleClick(Sender: TObject);
var
  StyleName: String;
  i: Integer;
begin
  // get style name
  StyleName := StringReplace(TMenuItem(Sender).Caption, '&', '', [rfReplaceAll, rfIgnoreCase]);
  // set active style
  TJanuaApplication.StyleManager.TrySetStyle(StyleName);
  // TStyleManager.SetStyle(StyleName);
  // check the currently selected menu item
  (Sender as TMenuItem).Checked := true;
  // uncheck all other style menu items
  for i := 0 to Style1.Count - 1 do
  begin
    if not Style1.Items[i].Equals(Sender) then
      Style1.Items[i].Checked := false;
  end;

end;

end.
