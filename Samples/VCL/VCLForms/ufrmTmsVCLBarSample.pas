unit ufrmTmsVCLBarSample;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  PngImageList, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Menus,
  AdvAppStyler, AdvNavBar, AdvMenus, AdvMenuStylers, Shader, AdvGlowButton, AdvSplitter, System.ImageList,
  Janua.Core.Classes, Janua.Core.AppController, Janua.VCL.AppController, Vcl.Imaging.pngimage,
  System.Generics.Collections;



type
  TForm1 = class(TForm)
    PngImageList1: TPngImageList;
    JanuaVisibleNavBar1: TAdvNavBar;
    AdvFormStyler1: TAdvFormStyler;
    JanuaVisiblePanel1: TAdvNavBarPanel;
    AdvPopupMenu1: TAdvPopupMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Windows101: TMenuItem;
    OfficeBlue1: TMenuItem;
    Widbez1: TMenuItem;
    Shader1: TShader;
    PngImageListForm: TPngImageList;
    btnHideShowNavBard: TAdvGlowButton;
    AdvSplitter1: TAdvSplitter;
    JanuaVCLAppsCollection1: TJanuaVCLAppsCollection;
    procedure FormCreate(Sender: TObject);
    procedure NavBarPopUPMenu(Sender: TObject);
    procedure Windows101Click(Sender: TObject);
    procedure OfficeBlue1Click(Sender: TObject);
    procedure Widbez1Click(Sender: TObject);
    procedure btnHideShowNavBardClick(Sender: TObject);
  private
    FJanuaNavBar: TAdvNavBar;
    FSelectedPanel: TAdvNavBarPanel;
    FIMageList: TPngImageList;
    FSplitter: TAdvSplitter;
    FPicture: TPicture;
    procedure SetJanuaNavBar(const Value: TAdvNavBar);
    procedure SetIMageList(const Value: TPngImageList);
    procedure SetSplitter(const Value: TAdvSplitter);
    { Private declarations }
  public
    procedure OnNavBarResize(Sender: TObject);
  public
    { Public declarations }
    property JanuaNavBar: TAdvNavBar read FJanuaNavBar write SetJanuaNavBar;
    property ImageList: TPngImageList read FIMageList write SetIMageList;
    property Splitter: TAdvSplitter read FSplitter write SetSplitter;
  end;

var
  Form1: TForm1;

  { // Creates a new panel at the last position
    TAdvNavBar.AddPanel: TAdvNavBarPanel

    // Creates a new panel at position Index
    TAdvNavBar.InsertPanel(Index: Integer): TAdvNavBarPanel

    // Removes the panel at position Index in the TAdvNavBar
    TAdvNavBar.RemovePanel(Index: Integer)

    // Provides access to the TAdvNavBarPanels
    TAdvNavBar.Panels[Index: Integer]: TAdvNavBarPanel }

implementation

uses AdvStyleIF, Janua.Core.Functions, Janua.Vcl.Functions, System.Math, System.StrUtils;

{$R *.dfm}
{ TForm1 }

procedure TForm1.btnHideShowNavBardClick(Sender: TObject);
begin
  FJanuaNavBar.Visible := not FJanuaNavBar.Visible;
  btnHideShowNavBard.ImageIndex := IfThen(FJanuaNavBar.Visible, 2, 3);
  btnHideShowNavBard.Caption := IfThen(FJanuaNavBar.Visible, 'Nascondi', 'Vedi Barra');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: integer;
begin
  FIMageList := TPngImageList.Create(self);
  for I := 0 to PngImageList1.Count - 1 do
    FIMageList.AddImage(PngImageList1, I);

  FJanuaNavBar := TAdvNavBar.Create(self);
  FJanuaNavBar.Name := 'JanuaNavBar';
  FJanuaNavBar.Parent := self;
  FJanuaNavBar.Align := TAlign.alLeft;
  FJanuaNavBar.Images := FIMageList;
  // Evento  OfficeBlue1Click
  FJanuaNavBar.OnPopupMenuClick := NavBarPopUPMenu;
  // Test inserimento 'Gruppo' sul Pannello
  FSelectedPanel := FJanuaNavBar.AddPanel;
  FSelectedPanel.Name := 'JanuaPanel1';
  FSelectedPanel.Caption := 'Janua Panel 1';
  FSelectedPanel.ImageIndex := 0;
  // Test inserimento 'Gruppo' sul Pannello
  FSelectedPanel := FJanuaNavBar.AddPanel;
  FSelectedPanel.Name := 'JanuaPanel2';
  FSelectedPanel.Caption := 'Janua Panel 2';
  FSelectedPanel.ImageIndex := 1;
  FJanuaNavBar.OnResize := OnNavBarResize;
  // Termino e mostro
  FJanuaNavBar.Show;
  btnHideShowNavBard.Visible := True;

  FSplitter := TAdvSplitter.Create(self);
  FSplitter.Align := alLeft;
  FSplitter.Width := 5;
  FSplitter.Parent := FJanuaNavBar.Parent;
  FSplitter.Visible := True;
  FSplitter.Show;
  FSplitter.Repaint;
  FSplitter.AutoSnap := True;
  FSplitter.Left := btnHideShowNavBard.Width + 2;

  // imposto lo spliter ad 1
  FJanuaNavBar.ActiveTabIndex := 0;
  FJanuaNavBar.SplitterPosition := 2;
  AdvFormStyler1.Style := tsWindows10;

end;

procedure TForm1.NavBarPopUPMenu(Sender: TObject);
var
  pt: tpoint;
  nv: TAdvNavBar;
begin
  nv := (Sender as TAdvNavBar);
  pt := point(nv.Left + nv.Width, nv.Top + nv.Height);
  pt.X := pt.X - 8;
  pt.Y := pt.Y - 8;
  pt := ClientToScreen(pt);
  AdvPopupMenu1.Popup(pt.X, pt.Y);
end;

procedure TForm1.OfficeBlue1Click(Sender: TObject);
begin
  self.AdvFormStyler1.Style := TTmsStyle.tsOffice2010Blue;
end;

procedure TForm1.OnNavBarResize(Sender: TObject);
begin
  btnHideShowNavBard.Width := FJanuaNavBar.Width - 1;
end;

procedure TForm1.SetIMageList(const Value: TPngImageList);
begin
  FIMageList := Value;
end;

procedure TForm1.SetJanuaNavBar(const Value: TAdvNavBar);
begin
  FJanuaNavBar := Value;
end;

procedure TForm1.SetSplitter(const Value: TAdvSplitter);
begin
  FSplitter := Value;
end;

procedure TForm1.Widbez1Click(Sender: TObject);
begin
  self.AdvFormStyler1.Style := TTmsStyle.tsOffice2003Olive;
end;

procedure TForm1.Windows101Click(Sender: TObject);
begin
  self.AdvFormStyler1.Style := TTmsStyle.tsWindows10;
end;



end.
