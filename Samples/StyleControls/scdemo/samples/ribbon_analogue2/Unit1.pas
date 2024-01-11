unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scExtControls, scToolPager, scControls,
  Vcl.ImgList, Vcl.Menus, Vcl.StdCtrls, scImageCollection, Vcl.Themes, ShellApi,
  scStyledForm, scStyleManager, scDrawUtils, scGPImages,
  scGPExtControls, scGPPagers, scGPControls;

type
  TForm1 = class(TForm)
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
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scGPVirtualImageList2: TscGPVirtualImageList;
    PopupMenu2: TPopupMenu;
    Item11: TMenuItem;
    Item21: TMenuItem;
    Item31: TMenuItem;
    scGPVirtualImageList3: TscGPVirtualImageList;
    scGPImageCollection1: TscGPImageCollection;
    scGPImageCollection2: TscGPImageCollection;
    scGPImageCollection3: TscGPImageCollection;
    scGPToolPager1: TscGPToolPager;
    scGPToolPagerPage1: TscGPToolPagerPage;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scToolGroupPanel3: TscToolGroupPanel;
    scButton3: TscButton;
    scButton9: TscButton;
    scButton2: TscButton;
    scToolGroupPanel2: TscToolGroupPanel;
    scButton7: TscButton;
    scButton8: TscButton;
    scToolGroupPanel1: TscToolGroupPanel;
    scButton5: TscButton;
    scButton6: TscButton;
    scGPButton1: TscGPButton;
    scComboBox1: TscComboBox;
    scLabel2: TscLabel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel3: TscLabel;
    scLabel28: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scGPButton1DropDown(Sender: TObject);
    procedure scGPToolPager1Resize(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
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

uses Unit2;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  scComboBox1.Items.Clear;
  scComboBox1.Items.AddStrings(TStyleManager.StyleNames);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  scComboBox1.Top := scGPToolPager1.TabHeight div 2 - scComboBox1.Height div 2;
  scComboBox1.Left := scGPToolPager1.Width - scGPToolPager1.TabsRightOffset div 2 -
    scComboBox1.Width div 2;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scGPButton1DropDown(Sender: TObject);
begin
   AppPagerForm.scStyledForm1.DropDown(scGPButton1);
end;

procedure TForm1.scGPToolPager1Resize(Sender: TObject);
begin
  scComboBox1.Top := scGPToolPager1.TabHeight div 2 - scComboBox1.Height div 2;
  scComboBox1.Left := scGPToolPager1.Width - scGPToolPager1.TabsRightOffset div 2 -
    scComboBox1.Width div 2;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  Caption := 'StyleControls VCL - Ribbon UI Analogue - Demo - ' + IntToStr(Round(AScaleFactor * 100)) + '%';
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
  scGPVirtualImageList2.SetScaleFactor(AScaleFactor);
  scGPVirtualImageList3.SetScaleFactor(AScaleFactor);
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
