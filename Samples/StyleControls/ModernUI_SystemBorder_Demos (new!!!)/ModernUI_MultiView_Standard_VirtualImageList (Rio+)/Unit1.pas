unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager,
  Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, scDrawUtils, scGPImages,
  scGPControls, scGPExtControls, Vcl.Menus, scGPFontControls, scGPPagers, Vcl.Themes,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scGPImageCollection1: TscGPImageCollection;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    ClientPanel: TscPanel;
    scGPPanel3: TscGPPanel;
    scComboBox1: TscComboBox;
    scLabel1: TscLabel;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage4: TscPageViewerPage;
    scLabel28: TscLabel;
    scLabel13: TscLabel;
    scButton10: TscButton;
    scLabel14: TscLabel;
    scPageViewerPage1: TscPageViewerPage;
    scPageViewerPage3: TscPageViewerPage;
    scCheckBox2: TscCheckBox;
    scCheckBox4: TscCheckBox;
    scGPToggleSwitch1: TscGPToggleSwitch;
    scGPPanel15: TscGPPanel;
    scGPPanel1: TscGPPanel;
    scGPButton1: TscGPButton;
    ExitButton: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPButton2: TscGPButton;
    procedure CloseButtonClick(Sender: TObject);
    procedure CaptionLabelDblClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Change(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scGPToggleSwitch1ChangeState(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
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
  I: Integer;
begin
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
    scComboBox1.Items.Add(TStyleManager.StyleNames[I]);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  if IsWindows11 then
   scGPToggleSwitch1.State := scswOn;
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  if scCheckBox2.Checked then
    scGPPanel1.CustomImageIndex := 0
  else
    scGPPanel1.CustomImageIndex := -1;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  ExitButton.FluentLightEffect := scCheckBox4.Checked;
  scGPButton1.FluentLightEffect := scCheckBox4.Checked;
  scGPButton2.FluentLightEffect := scCheckBox4.Checked;
  scGPButton3.FluentLightEffect := scCheckBox4.Checked;
  scGPButton4.FluentLightEffect := scCheckBox4.Checked;
end;

procedure TForm1.scComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
  if scStyledForm1.FluentUIBackground = scfuibNone then
    Color := scDrawUtils.GetStyleColor(clBtnFace);
end;

procedure TForm1.scGPButton1Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := TControl(Sender).Tag;
  scGPPanel15.Caption := TscGPButton(Sender).Caption;
end;

procedure TForm1.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPToggleSwitch1ChangeState(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to scGPPanel1.ControlCount - 1 do
    if (scGPPanel1.Controls[I] is TscGPButton) then
       if scGPPanel1.Controls[I].Tag >= 0 then
       with TscGPButton(scGPPanel1.Controls[I]) do
       begin
         if scGPToggleSwitch1.IsOn then
         begin
           Options.ShapeStyle := scgpLeftRoundedLine;
           AlignWithMargins := True;
         end
         else
         begin
           if Tag > 0 then
             AlignWithMargins := False;
           Options.ShapeStyle := scgpLeftLine;
         end;
       end;

  if scGPToggleSwitch1.IsOn then
  begin
    scGPButton4.Margins.Left := scGPButton1.Margins.Left;
    scGPButton4.Margins.Right := scGPButton1.Margins.Right;
    ExitButton.Options.ShapeStyle := scgpRoundedRect;
    ExitButton.AlignWithMargins := True;
    scStyledForm1.DWMClientRoundedCornersType := scDWMRoundedCornersDefault;
  end
  else
  begin
    scGPButton4.Margins.Left := 0;
    scGPButton4.Margins.Right := 0;
    ExitButton.Options.ShapeStyle := scgpRect;
    ExitButton.AlignWithMargins := False;
    scStyledForm1.DWMClientRoundedCornersType := scDWMRoundedCornersOff;
  end;

end;

procedure TForm1.CaptionLabelDblClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

end.
