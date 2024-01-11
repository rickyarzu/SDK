unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scExtControls, scToolPager, scControls,
  Vcl.ImgList, Vcl.Menus, Vcl.StdCtrls, scImageCollection, Vcl.Themes, ShellApi,
  scStyledForm, scStyleManager, scDrawUtils, System.ImageList, scGPImages;

type
  TForm1 = class(TForm)
    scToolPager1: TscToolPager;
    scToolPagerPage1: TscToolPagerPage;
    scToolPagerPage2: TscToolPagerPage;
    scToolPagerPage3: TscToolPagerPage;
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
    scButton1: TscButton;
    scButton2: TscButton;
    scButton4: TscButton;
    scComboBox1: TscComboBox;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel28: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scPanel4: TscPanel;
    scCheckBox4: TscCheckBox;
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scLabel7: TscLabel;
    scComboBox2: TscComboBox;
    scCheckBox5: TscCheckBox;
    scGPImageCollection1: TscGPImageCollection;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scGPVirtualImageList2: TscGPVirtualImageList;
    ImageList1: TImageList;
    ImageList2: TImageList;
    scMemo1: TscMemo;
    PopupMenu2: TPopupMenu;
    Item11: TMenuItem;
    Item21: TMenuItem;
    Item31: TMenuItem;
    scToolGroupPanel1: TscToolGroupPanel;
    scButton5: TscButton;
    scButton6: TscButton;
    scToolGroupPanel2: TscToolGroupPanel;
    scButton7: TscButton;
    scButton8: TscButton;
    scToolGroupPanel3: TscToolGroupPanel;
    scButton3: TscButton;
    scButton9: TscButton;
    scButton11: TscButton;
    procedure Exit1Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure scCheckBox5Click(Sender: TObject);
    procedure scToolPager1Resize(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
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
  scComboBox1.Top := scToolPager1.TabHeight div 2 - scComboBox1.Height div 2;
  scComboBox1.Left := scToolPager1.Width - scToolPager1.TabsRightOffset div 2 -
    scComboBox1.Width div 2;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scToolPager1.ShowFocusRect := scCheckBox1.Checked;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  scToolPager1.TabGlowEffect.Enabled := scCheckBox2.Checked;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  scPanel4.Visible := scCheckBox4.Checked;
end;

procedure TForm1.scCheckBox5Click(Sender: TObject);
begin
  if scCheckBox5.Checked then
    scToolPager1.OnGetTabDrawParams := OnGetTabDrawParams
  else
    scToolPager1.OnGetTabDrawParams := nil;
  scToolPager1.UpdateTabs;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scComboBox2Click(Sender: TObject);
begin
  scToolPager1.BorderStyle := TscToolPagerBorderStyle(scComboBox2.ItemIndex);
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
  scGPVirtualImageList2.SetScaleFactor(AScaleFactor);
end;

procedure TForm1.scToolPager1Resize(Sender: TObject);
begin
  scComboBox1.Top := scToolPager1.TabHeight div 2 - scComboBox1.Height div 2;
  scComboBox1.Left := scToolPager1.Width - scToolPager1.TabsRightOffset div 2 -
    scComboBox1.Width div 2;
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

end.
