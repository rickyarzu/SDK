unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList, System.ImageList,
  scImageCollection, ShellApi;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    PopupMenu1: TPopupMenu;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    N2: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    scStyleManager1: TscStyleManager;
    scGPImageCollection1: TscGPImageCollection;
    PopupMenu2: TPopupMenu;
    Searchitem11: TMenuItem;
    Searchitem21: TMenuItem;
    Searchitem31: TMenuItem;
    scGPPanel1: TscGPPanel;
    scGPListBox1: TscGPListBox;
    scGPPanel2: TscGPPanel;
    scGPTrackBar1: TscGPTrackBar;
    scGPGlyphButton5: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    scGPGlyphButton1: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    CloseButton: TscGPGlyphButton;
    CaptionLabel: TscGPLabel;
    scGPPanel3: TscGPPanel;
    About1: TMenuItem;
    OpenMediaFile1: TMenuItem;
    N3: TMenuItem;
    PlayList: TscGPListBox;
    scGPGlyphButton7: TscGPGlyphButton;
    scGPGlyphButton6: TscGPGlyphButton;
    scGPLabel1: TscGPLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scButton1Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scGPGlyphButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
  Item: TscGPListBoxItem;
begin
  PlayList.BeginUpdateItems;
  for i := 1 to 20 do
  begin
    Item := PlayList.Items.Add;
    Item.Caption := 'My Favorite Song ' + IntToStr(i);
    Item.Detail := 'Artist' + IntToStr(i);
    Item.Checked := True;
  end;
  PlayList.EndUpdateItems;
  PlayList.InitItemIndex(3);
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MaxButtonClick(Sender: TObject);
begin
   if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

procedure TForm1.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPGlyphButton2Click(Sender: TObject);
begin
  if scGPGlyphButton2.GlyphOptions.Kind = scgpbgkPlay then
    scGPGlyphButton2.GlyphOptions.Kind := scgpbgkPause
  else
    scGPGlyphButton2.GlyphOptions.Kind := scgpbgkPlay;
end;

procedure TForm1.CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and not (ssDouble in Shift) and scStyledForm1.IsDWMClientMaximized then
   scStyledForm1.DWMClientStartDrag;
end;

procedure TForm1.CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  scStyledForm1.DWMClientEndDrag;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    CaptionLabel.Font.Color := clWhite;
    CloseButton.GlyphOptions.NormalColorAlpha := 230;
    MinButton.GlyphOptions.NormalColorAlpha := 200;
  end
  else
  begin
    CaptionLabel.Font.Color := $00A48C7B;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
    MinButton.GlyphOptions.NormalColorAlpha := 120;
  end;
end;

procedure TForm1.scStyledForm1BeforeChangeScale(Sender: TObject);
begin
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := 0;
  Form1.Constraints.MinHeight := 0;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := scStyledForm1.ScaleInt(700);
  Form1.Constraints.MinHeight := scStyledForm1.ScaleInt(300);
end;

end.
