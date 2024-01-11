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
    BorderPanel: TscGPPanel;
    scStyledForm1: TscStyledForm;
    PopupMenu1: TPopupMenu;
    Open1: TMenuItem;
    New1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N2: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    scStyleManager1: TscStyleManager;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scLabel10: TscLabel;
    scGPImageCollection1: TscGPImageCollection;
    PopupMenu2: TPopupMenu;
    Searchitem11: TMenuItem;
    Searchitem21: TMenuItem;
    Searchitem31: TMenuItem;
    scGPListBox1: TscGPListBox;
    scListView1: TscListView;
    scGPPanel1: TscGPPanel;
    CaptionLabel: TscLabel;
    scGPTrackBar1: TscGPTrackBar;
    scGPGlyphButton5: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    scGPGlyphButton1: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    MaxButton: TscGPGlyphButton;
    CloseButton: TscGPGlyphButton;
    scGPEdit1: TscGPEdit;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure CaptionLabelDblClick(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure CaptionLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scButton1Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure Searchitem11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
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
  i, j, k: Integer;
  S: String;
begin
  scListView1.Items.BeginUpdate;
  for i := 1 to 20 do
  begin
    scListView1.AddItem('Song ' + IntToStr(i), nil);
    j := 2 + Random(7);
    k := 10 + Random(50);
    S := '0' + IntToStr(j)+ ':' + IntToStr(k);
    scListView1.Items[i - 1].SubItems.Add(S);
    scListView1.Items[i - 1].SubItems.Add('Artist' + IntToStr(i));
    scListView1.Items[i - 1].SubItems.Add('My album');
  end;
  scListView1.Items.EndUpdate;
  scListView1.ItemIndex := 6;
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

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  MaxButton.Left := CloseButton.Left;
end;

procedure TForm1.scGPGlyphButton2Click(Sender: TObject);
begin
  if scGPPanel1.FillColorAlpha <> 0 then
    scGPPanel1.FillColorAlpha := 0
  else
    scGPPanel1.FillColorAlpha := 50;
end;

procedure TForm1.CaptionLabelDblClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

procedure TForm1.CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and not (ssDouble in Shift) and scStyledForm1.IsDWMClientMaximized then
   scStyledForm1.DWMClientStartDrag;
end;

procedure TForm1.CaptionLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if scStyledForm1.IsDWMClientMaximized and scStyledForm1.IsDWMClientDragging then
  begin
    scStyledForm1.DWMClientDrag;
    if not scStyledForm1.IsDWMClientMaximized then
    begin
      MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
      scGPSizeBox1.Visible := True;
    end;
  end;
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
    MaxButton.GlyphOptions.NormalColorAlpha := 200;
  end
  else
  begin
    CaptionLabel.Font.Color := clGray;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
    MinButton.GlyphOptions.NormalColorAlpha := 120;
    MaxButton.GlyphOptions.NormalColorAlpha := 120;
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

procedure TForm1.scStyledForm1DWMClientMaximize(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkRestore;
  scGPSizeBox1.Visible := False;
  BorderPanel.Sizeable := False;
end;

procedure TForm1.scStyledForm1DWMClientRestore(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
  scGPSizeBox1.Visible := True;
  BorderPanel.Sizeable := True;
end;

procedure TForm1.Searchitem11Click(Sender: TObject);
begin
  scGPEdit1.Text := TMenuItem(Sender).Caption;
end;

end.
