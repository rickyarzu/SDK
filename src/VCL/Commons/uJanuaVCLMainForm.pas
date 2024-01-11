unit uJanuaVCLMainForm;

interface

uses
  System.Classes, System.ImageList,
  // VCL
  vcl.Graphics, vcl.Controls, vcl.Forms, vcl.ComCtrls, vcl.Dialogs,
  vcl.StdCtrls, vcl.ExtCtrls, vcl.ImgList, vcl.Menus, vcl.Buttons,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Core.Classes,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Controls.Forms.Impl, Janua.vcl.Controls.Forms.Impl,
  // Forms
  uJanuaVclForm, vcl.WinXCtrls, vcl.ActnMan, vcl.ActnCtrls, vcl.DBCtrls, vcl.ToolWin;
// Janua.Core.Classes, ;

type
  TJanuaVCLMainForm = class(TJanuaVCLFormModel, IJanuaForm)
    Panel4: TPanel;
    MenuButtonToolbar: TToolBar;
    ToolButton1: TToolButton;
    ToolBarTopRight: TToolBar;
    SplitViewLeft: TSplitView;
    pgcApplicationArea: TPageControl;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Style1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FPageController: TJanuaVCLPageController;
    procedure SetPageController(const Value: TJanuaVCLPageController);
  protected
    procedure FormSetup; override;
    procedure Loaded; override;
    property PageController: TJanuaVCLPageController read FPageController write SetPageController;
  public
    procedure StyleClick(Sender: TObject);
  end;

var
  JanuaVCLMainForm: TJanuaVCLMainForm;

implementation

uses Janua.Application.Framework, Janua.Core.Functions, vcl.Styles, vcl.Themes, System.SysUtils;

{$R *.dfm}

procedure TJanuaVCLMainForm.Exit1Click(Sender: TObject);
begin
  inherited;
  if TJanuaApplication.Dialogs.JMessageDlg('Do you want to Quit Application?') then
     Close;
end;

{ TJanuaFormModel1 }

procedure TJanuaVCLMainForm.FormCreate(Sender: TObject);
var
  Style: String;
  Item: TMenuItem;
begin
  inherited;
  FPageController := TJanuaVCLPageController.Create(self);
  FPageController.PageControl := pgcApplicationArea;
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

procedure TJanuaVCLMainForm.FormSetup;
begin
  inherited;
  // Basic Setup should be At least the main form Caption.
  Caption := TJanuaApplication.Title;
end;

procedure TJanuaVCLMainForm.FormShow(Sender: TObject);
begin
  inherited;
  if not FIsSetup then
  begin
    FormSetup;
    FIsSetup := true;
  end;
end;

procedure TJanuaVCLMainForm.Loaded;
begin
  Application.DefaultFont.Name := TJanuaApplication.StyleManager.ScreenFontName;
  Application.DefaultFont.Height := TJanuaApplication.StyleManager.ScreenFontHeight;
  TJanuaApplication.StyleManager.Activate;
  inherited;
end;

procedure TJanuaVCLMainForm.SetPageController(const Value: TJanuaVCLPageController);
begin
  FPageController := Value;
end;

procedure TJanuaVCLMainForm.StyleClick(Sender: TObject);
var
  StyleName: String;
  i: Integer;
begin
  // get style name
  StyleName := StringReplace(TMenuItem(Sender).Caption, '&', '', [rfReplaceAll, rfIgnoreCase]);
  //TJanuaApplication.StyleManager.StyleName := StyleName;
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
