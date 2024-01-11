unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager,
  Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, scDrawUtils, scGPImages,
  scGPControls, scGPExtControls, Vcl.Menus, scGPFontControls, scGPPagers, Vcl.Themes,
  scCalendar;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scGPImageCollection1: TscGPImageCollection;
    BackgroundPanel: TscPanel;
    ClientPanel: TscPanel;
    scGPPanel3: TscGPPanel;
    scLabel3: TscLabel;
    scGPPanel15: TscGPPanel;
    PageLabel: TscLabel;
    scPanel4: TscPanel;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage3: TscPageViewerPage;
    scPageViewerPage4: TscPageViewerPage;
    scPageViewerPage5: TscPageViewerPage;
    scPageViewerPage6: TscPageViewerPage;
    scPageViewerPage1: TscPageViewerPage;
    scGPPanel6: TscGPPanel;
    scGPPanel7: TscGPPanel;
    scLabel1: TscLabel;
    scGPPanel1: TscGPPanel;
    scGPCharGlyphButton1: TscGPCharGlyphButton;
    scGPCharGlyphButton2: TscGPCharGlyphButton;
    scGPCharGlyphButton5: TscGPCharGlyphButton;
    scGPPanel11: TscGPPanel;
    scGPImage1: TscGPImage;
    scGPPanel5: TscGPPanel;
    scLabel2: TscLabel;
    scLabel4: TscLabel;
    scGPSwitch1: TscGPSwitch;
    scLabel5: TscLabel;
    scGPSwitch2: TscGPSwitch;
    scLabel6: TscLabel;
    scGPSwitch3: TscGPSwitch;
    scGPCharGlyphButton3: TscGPCharGlyphButton;
    scGPCharGlyphButton4: TscGPCharGlyphButton;
    scGPCharGlyphButton6: TscGPCharGlyphButton;
    scGPCharGlyphButton7: TscGPCharGlyphButton;
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scGPCharGlyphButton3Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPCharGlyphButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPCharGlyphButton3Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := TControl(Sender).Tag;
  PageLabel.Caption := TscGPCharGlyphButton(Sender).Caption;
end;

procedure TForm1.scStyledForm1BeforeChangeScale(Sender: TObject);
begin
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := 0;
  Form1.Constraints.MinHeight := 0;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  Form1.Constraints.MinWidth := scStyledForm1.ScaleInt(700);
  Form1.Constraints.MinHeight := scStyledForm1.ScaleInt(720);
end;

end.
