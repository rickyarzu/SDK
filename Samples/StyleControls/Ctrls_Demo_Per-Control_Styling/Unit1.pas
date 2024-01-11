unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scExtControls, scAdvancedPager,
  scControls, Vcl.ComCtrls, Vcl.ImgList, scStyledForm, scStyleManager,
  Vcl.StdCtrls, Vcl.Menus, Vcl.Themes, ShellApi, scDrawUtils, System.ImageList,
  Vcl.CheckLst, scAdvancedControls, scCalendar, Vcl.Mask, scModernControls,
  scDialogs, scGPImages, scHint, scImageCollection;

type
  TForm1 = class(TForm)
    scAdvancedPager1: TscAdvancedPager;
    scAdvancedPagerPage1: TscAdvancedPagerPage;
    scAdvancedPagerPage2: TscAdvancedPagerPage;
    scAdvancedPagerPage3: TscAdvancedPagerPage;
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scButton1: TscButton;
    scComboBox1: TscComboBox;
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
    scLabel28: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
    ImageList1: TImageList;
    scCheckBox1: TscCheckBox;
    scRadioButton1: TscRadioButton;
    scRadioButton2: TscRadioButton;
    scListBox1: TscListBox;
    scCheckListBox1: TscCheckListBox;
    scAdvancedListBox1: TscAdvancedListBox;
    scButton2: TscButton;
    scSpinEdit2: TscSpinEdit;
    scCalcEdit2: TscCalcEdit;
    scTimeEdit1: TscTimeEdit;
    scDateEdit1: TscDateEdit;
    scMonthCalendar1: TscMonthCalendar;
    scColorButton1: TscColorButton;
    scAdvancedComboEdit1: TscAdvancedComboEdit;
    scAdvancedComboEdit2: TscAdvancedComboEdit;
    scAdvancedComboBox1: TscAdvancedComboBox;
    scLabel1: TscLabel;
    scButton3: TscButton;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scGPVirtualImageList2: TscGPVirtualImageList;
    scTreeView1: TscTreeView;
    scPanel1: TscPanel;
    scButton9: TscButton;
    scButton12: TscButton;
    scButton4: TscButton;
    scButton5: TscButton;
    scHint1: TscHint;
    scGPImageCollection1: TscGPImageCollection;
    scCheckBox2: TscCheckBox;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scAdvancedPager1Resize(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scButton3Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure OnGetTabDrawParams(ATabIndex: Integer;
      ATabState: TscsCtrlState; ACanvas: TCanvas);
  end;

var
  Form1: TForm1;

implementation
   Uses System.UITypes;
{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  scComboBox1.Items.Clear;
  scComboBox1.Items.AddStrings(TStyleManager.StyleNames);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.scAdvancedPager1Resize(Sender: TObject);
begin
  scComboBox1.Left := scAdvancedPager1.Width - scAdvancedPager1.TabsRightOffset + 10;
end;

procedure TForm1.OnGetTabDrawParams(ATabIndex: Integer;
  ATabState: TscsCtrlState; ACanvas: TCanvas);
begin
  case ATabIndex of
   0: ACanvas.Font.Color := clRed;
   1:
   begin
     ACanvas.Font.Color := clBlue;
     ACanvas.Font.Style := [fsBold];
   end;
   2: ACanvas.Font.Color := clGreen;
  end;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  scMessageDlg(
   'Use scMessageDlg or scMessageDlgEx methods in your Application!' + #13 +
   '(Standard, custom messages + support of scaling (High-DPI) with VCL Styles)',
    mtConfirmation, [mbOK], -1);
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  if scCheckBox2.Checked then
  begin
    scStyledForm1.CaptionWallpaperIndex := 0;
    scStyledForm1.CaptionWallpaperInActiveIndex := 1;
  end
  else
  begin
    scStyledForm1.CaptionWallpaperIndex := -1;
    scStyledForm1.CaptionWallpaperInActiveIndex := -1;
  end;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
  scGPVirtualImageList2.SetScaleFactor(AScaleFactor);
end;

end.
