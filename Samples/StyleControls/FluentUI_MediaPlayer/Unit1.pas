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
    MaxButton: TscGPGlyphButton;
    CloseButton: TscGPGlyphButton;
    CaptionLabel: TscGPLabel;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scPanel1: TscPanel;
    scListView1: TscListView;
    scGPToggleSwitch1: TscGPToggleSwitch;
    PopupMenu1: TPopupMenu;
    OpenMediaFile1: TMenuItem;
    N3: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    N2: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    About1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
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
    procedure FormCreate(Sender: TObject);
    procedure CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure scGPToggleSwitch1ChangeState(Sender: TObject);
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
  if not scStyledForm1.IsFluentUIAvailable or (scStyledForm1.FluentUIBackground = scfuibNone) then
  begin
    scPanel1.FluentUIOpaque := False;
    scControls.SC_SetDrawTextModeInControl(Self, scdtmGDI);
    scGPPanel1.FillColorAlpha := 255;
    scGPPanel3.FillColorAlpha := 255;
    scGPListBox1.TransparentBackground := False;
    scGPPanel1.FrameWidth := 1;
    scGPPanel3.TransparentBackground := False;
    scGPToggleSwitch1.Visible := False;
  end;
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
   if scGPGlyphButton2.GlyphOptions.Kind = scgpbgkPlay then
    scGPGlyphButton2.GlyphOptions.Kind := scgpbgkPause
  else
    scGPGlyphButton2.GlyphOptions.Kind := scgpbgkPlay;
end;

procedure TForm1.scGPToggleSwitch1ChangeState(Sender: TObject);
begin
  if scStyledForm1.IsFluentUIAvailable then
    if scGPToggleSwitch1.IsOn then
    begin
      scControls.SC_SetDrawTextModeInControl(Self, scdtmGDIPlus);
      scPanel1.FluentUIOpaque := True;
      scGPPanel1.FrameWidth := 0;
      scGPPanel2.FillColorAlpha := 50;
      scGPPanel3.FillColorAlpha := 50;
      scGPListBox1.Options.FillColorAlpha := 150;
      scGPListBox1.Options.FillColor2Alpha := 150;
      scGPListBox1.TransparentBackground := True;
      scGPPanel3.TransparentBackground := True;
      scStyledForm1.FluentUIBackground := scfuibAcrylic;
    end
    else
    begin
      scControls.SC_SetDrawTextModeInControl(Self, scdtmGDI);
      scPanel1.FluentUIOpaque := False;
      scGPPanel2.FillColorAlpha := 255;
      scGPPanel3.FillColorAlpha := 255;
      scGPListBox1.Options.FillColorAlpha := 200;
      scGPListBox1.Options.FillColor2Alpha := 200;
      scGPListBox1.TransparentBackground := False;
      scGPPanel1.FrameWidth := 1;
      scGPPanel3.TransparentBackground := False;
      scStyledForm1.FluentUIBackground := scfuibNone;
    end;
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
      MaxButton.GlyphOptions.Kind := scgpbgkMaximizeRect;
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
  MaxButton.GlyphOptions.Kind := scgpbgkRestoreRect;
  scGPSizeBox1.Visible := False;
end;

procedure TForm1.scStyledForm1DWMClientRestore(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkMaximizeRect;
  scGPSizeBox1.Visible := True;
  if scStyledForm1.FluentUIBackground <> scfuibNone then
    scGPPanel2.Repaint;
end;

end.
