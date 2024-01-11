unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scGPVertPagers, scGPControls,
  scImageCollection, scGPImages, scModernControls, scStyledForm,
  scStyleManager, scGPExtControls, Vcl.StdCtrls, Vcl.Mask, scGPMeters, Vcl.Menus,
  scExtControls, Vcl.Themes;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scGPPanel1: TscGPPanel;
    scGPVertTabControl1: TscGPVertTabControl;
    scPanel2: TscPanel;
    scGPGlyphButton19: TscGPGlyphButton;
    scGPGlyphButton21: TscGPGlyphButton;
    scPanel1: TscPanel;
    scGPGlyphButton16: TscGPGlyphButton;
    scGPGlyphButton17: TscGPGlyphButton;
    scGPGlyphButton18: TscGPGlyphButton;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    scGPGlyphButton1: TscGPGlyphButton;
    scLabel1: TscLabel;
    scGPButton1: TscGPButton;
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
    MinButton: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    scSplitView1: TscSplitView;
    scStyledForm1: TscStyledForm;
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scLabel2: TscLabel;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage3: TscPageViewerPage;
    scLabel3: TscLabel;
    scLabel5: TscLabel;
    scGPComboBox1: TscGPComboBox;
    scLabel6: TscLabel;
    scLabel7: TscLabel;
    scGPPanel3: TscGPPanel;
    scLabel4: TscLabel;
    scGPGlyphButton5: TscGPGlyphButton;
    procedure scGPGlyphButton21Click(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure scGPGlyphButton1Click(Sender: TObject);
    procedure scGPGlyphButton19Click(Sender: TObject);
    procedure scGPGlyphButton5Click(Sender: TObject);
    procedure scGPVertTabControl1ChangeTab(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scGPComboBox1Change(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
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
  I: Integer;
  Item: TscGPListBoxItem;
begin
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
  if TStyleManager.StyleNames[I] <> 'Windows' then
  begin
    Item := scGPComboBox1.Items.Add;
    Item.Caption := TStyleManager.StyleNames[I];
  end;
  scGPComboBox1.Sort;
  scGPComboBox1.InitItemIndex(scGPComboBox1.IndexOfCaption(TStyleManager.ActiveStyle.Name));
end;

procedure TForm1.scGPComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scGPComboBox1.Items[scGPComboBox1.ItemIndex].Caption);
end;

procedure TForm1.scGPGlyphButton19Click(Sender: TObject);
begin
  scSplitView1.Opened := not  scSplitView1.Opened;
end;

procedure TForm1.scGPGlyphButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scGPGlyphButton21Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPGlyphButton5Click(Sender: TObject);
begin
  scSplitView1.Opened := False;
end;

procedure TForm1.scGPVertTabControl1ChangeTab(Sender: TObject);
begin
  scPageViewer1.PageIndex := scGPVertTabControl1.TabIndex;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    scGPPanel1.FrameColorAlpha := 255;
    scLabel1.Font.Color := clBtnText;
    scGPButton1.Options.FrameNormalColorAlpha := 255;
    scGPButton1.Options.FrameHotColorAlpha := 255;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 255;
  end
  else
  begin
    scGPPanel1.FrameColorAlpha := 100;
    scLabel1.Font.Color := clGray;
    scGPButton1.Options.FrameNormalColorAlpha := 100;
    scGPButton1.Options.FrameHotColorAlpha := 100;
    CloseButton.GlyphOptions.NormalColorAlpha := 100;
    MinButton.GlyphOptions.NormalColorAlpha := 100;
  end;
end;

end.
