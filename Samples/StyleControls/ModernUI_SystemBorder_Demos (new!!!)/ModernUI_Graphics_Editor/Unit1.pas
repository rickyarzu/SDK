unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList, System.ImageList,
  scImageCollection, ShellApi, scGPFontControls;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scGPPanel5: TscGPPanel;
    BackButton: TscGPGlyphButton;
    scGPCharGlyphButton4: TscGPCharGlyphButton;
    scGPCharGlyphButton2: TscGPCharGlyphButton;
    scGPCharGlyphButton5: TscGPCharGlyphButton;
    scGPCharGlyphButton1: TscGPCharGlyphButton;
    ClientPanel2: TscPanel;
    scPageViewer2: TscPageViewer;
    scPageViewerPage5: TscPageViewerPage;
    scLabel3: TscLabel;
    scPageViewerPage4: TscPageViewerPage;
    scLabel2: TscLabel;
    scPageViewerPage3: TscPageViewerPage;
    scLabel12: TscLabel;
    scAdvancedListBox1: TscAdvancedListBox;
    scPanel1: TscPanel;
    scGPCharGlyphButton3: TscGPCharGlyphButton;
    scGPCharGlyphButton6: TscGPCharGlyphButton;
    scGPCharGlyphButton14: TscGPCharGlyphButton;
    scPageViewerPage1: TscPageViewerPage;
    scGPPanel2: TscGPPanel;
    MenuButton: TscGPCharGlyphButton;
    scGPCharGlyphButton11: TscGPCharGlyphButton;
    scGPCharGlyphButton7: TscGPCharGlyphButton;
    scGPCharGlyphButton10: TscGPCharGlyphButton;
    scGPPanel6: TscGPPanel;
    scGPCharGlyphButton8: TscGPCharGlyphButton;
    scGPCharGlyphButton9: TscGPCharGlyphButton;
    scGPCharGlyphButton12: TscGPCharGlyphButton;
    scGPCharGlyphButton13: TscGPCharGlyphButton;
    scGPPanel3: TscGPPanel;
    scGPLabel1: TscGPLabel;
    ClientPanel: TscPanel;
    ImagePanel: TscGPPanel;
    scLabel4: TscLabel;
    scComboBox1: TscComboBox;
    scPageViewer3: TscPageViewer;
    scPageViewerPage9: TscPageViewerPage;
    scLabel5: TscLabel;
    scPageViewerPage7: TscPageViewerPage;
    scLabel7: TscLabel;
    scPageViewerPage8: TscPageViewerPage;
    scLabel8: TscLabel;
    scPageViewerPage6: TscPageViewerPage;
    scLabel6: TscLabel;
    scGPTrackBar1: TscGPTrackBar;
    scGPTrackBar2: TscGPTrackBar;
    scGPComboBox1: TscGPComboBox;
    scGPToggleSwitch1: TscGPToggleSwitch;
    scLabel9: TscLabel;
    scLabel10: TscLabel;
    scLabel11: TscLabel;
    scLabel13: TscLabel;
    scGPImageCollection1: TscGPImageCollection;
    procedure Exit1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuButtonClick(Sender: TObject);
    procedure BackButtonClick(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scGPCharGlyphButton4Click(Sender: TObject);
    procedure scGPCharGlyphButton2Click(Sender: TObject);
    procedure scGPCharGlyphButton5Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scGPCharGlyphButton8Click(Sender: TObject);
    procedure scGPCharGlyphButton9Click(Sender: TObject);
    procedure scGPCharGlyphButton12Click(Sender: TObject);
    procedure scGPCharGlyphButton13Click(Sender: TObject);
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
begin
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
    scComboBox1.Items.Add(TStyleManager.StyleNames[I]);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.BackButtonClick(Sender: TObject);
begin
  scPageViewer1.PageIndex := 0;
end;

procedure TForm1.MenuButtonClick(Sender: TObject);
begin
  scPageViewer1.PageIndex := 1;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scGPButton7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPCharGlyphButton12Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 2;
end;

procedure TForm1.scGPCharGlyphButton13Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 3;
end;

procedure TForm1.scGPCharGlyphButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPCharGlyphButton2Click(Sender: TObject);
begin
  scPageViewer2.PageIndex := 1;
end;

procedure TForm1.scGPCharGlyphButton4Click(Sender: TObject);
begin
  scPageViewer2.PageIndex := 0;
end;

procedure TForm1.scGPCharGlyphButton5Click(Sender: TObject);
begin
  scPageViewer2.PageIndex := 2;
end;

procedure TForm1.scGPCharGlyphButton8Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 0;
end;

procedure TForm1.scGPCharGlyphButton9Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 1;
end;

end.
