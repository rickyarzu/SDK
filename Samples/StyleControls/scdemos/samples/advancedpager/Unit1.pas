unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scExtControls, scAdvancedPager,
  scControls, Vcl.ComCtrls, Vcl.ImgList, scStyledForm, scStyleManager,
  Vcl.StdCtrls, Vcl.Menus, Vcl.Themes, ShellApi, scDrawUtils, scDialogs;

type
  TForm1 = class(TForm)
    scAdvancedPager1: TscAdvancedPager;
    scAdvancedPagerPage1: TscAdvancedPagerPage;
    scAdvancedPagerPage2: TscAdvancedPagerPage;
    scAdvancedPagerPage3: TscAdvancedPagerPage;
    ImageList1: TImageList;
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
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scLabel7: TscLabel;
    scComboBox2: TscComboBox;
    scCheckBox3: TscCheckBox;
    scCheckBox4: TscCheckBox;
    scLabel1: TscLabel;
    scCheckBox5: TscCheckBox;
    scLabel2: TscLabel;
    scLabel5: TscLabel;
    scLabel3: TscLabel;
    scLabel28: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
    scCheckBox6: TscCheckBox;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton4: TscButton;
    scCheckBox7: TscCheckBox;
    scCheckBox8: TscCheckBox;
    scLabel6: TscLabel;
    procedure scCheckBox3Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox5Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure scAdvancedPager1Close(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scCheckBox6Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scCheckBox7Click(Sender: TObject);
    procedure scCheckBox8Click(Sender: TObject);
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

procedure TForm1.scAdvancedPager1Close(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := scMessageDlg('Do you want to close this page?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes;
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

procedure TForm1.scButton2Click(Sender: TObject);
begin
  scAdvancedPagerPage1.BackgroundStyle := scsbsFormBackground;
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  scAdvancedPagerPage1.BackgroundStyle := scsbsPanel;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  scAdvancedPagerPage1.BackgroundStyle := scsbsTabSheet;
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scAdvancedPager1.ShowFocusRect := scCheckBox1.Checked;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  scAdvancedPager1.TabGlowEffect.Enabled := scCheckBox2.Checked;
end;

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
  scAdvancedPager1.ShowInActiveTab := scCheckBox3.Checked;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  scAdvancedPager1.ShowCloseButtons := scCheckBox4.Checked;
end;

procedure TForm1.scCheckBox5Click(Sender: TObject);
begin
  scAdvancedPager1.MouseWheelSupport := scCheckBox5.Checked;
end;

procedure TForm1.scCheckBox6Click(Sender: TObject);
begin
 if scCheckBox6.Checked then
    scAdvancedPager1.OnGetTabDrawParams := OnGetTabDrawParams
  else
    scAdvancedPager1.OnGetTabDrawParams := nil;
  scAdvancedPager1.UpdateTabs;
end;

procedure TForm1.scCheckBox7Click(Sender: TObject);
begin
  scAdvancedPager1.TransparentBackground := scCheckBox7.Checked;
end;

procedure TForm1.scCheckBox8Click(Sender: TObject);
begin
  scAdvancedPagerPage1.AutoScroll := scCheckBox8.Checked;
  scAdvancedPagerPage1.FullUpdate := scCheckBox8.Checked;
  scAdvancedPagerPage1.RePaint;
  scAdvancedPagerPage1.Realign;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scComboBox2Click(Sender: TObject);
begin
  scAdvancedPager1.BorderStyle := TscAdvancedPagerBorderStyle(scComboBox2.ItemIndex);
end;

end.
