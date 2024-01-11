unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scExtControls, scAppPager, scControls,
  Vcl.StdCtrls, scImageCollection, Vcl.ImgList, Vcl.Themes, System.UITypes,
  scStyledForm, Vcl.Menus, ShellApi, scStyleManager;

type
  TForm1 = class(TForm)
    scAppPager1: TscAppPager;
    scAppPagerPage1: TscAppPagerPage;
    scAppPagerPage2: TscAppPagerPage;
    ImageList1: TImageList;
    ImageList2: TImageList;
    scAppPagerPage3: TscAppPagerPage;
    scCheckBox1: TscCheckBox;
    scLabel2: TscLabel;
    scLabel5: TscLabel;
    scComboBox2: TscComboBox;
    scStyledForm1: TscStyledForm;
    scPanel1: TscPanel;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton4: TscButton;
    scButton1: TscButton;
    PopupMenu1: TPopupMenu;
    New1: TMenuItem;
    Open1: TMenuItem;
    Close1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    scCheckBox2: TscCheckBox;
    PopupMenu2: TPopupMenu;
    Item11: TMenuItem;
    itewm21: TMenuItem;
    Item31: TMenuItem;
    scButton5: TscButton;
    scButton7: TscButton;
    scButton8: TscButton;
    scButton9: TscButton;
    scLabel28: TscLabel;
    scLabel30: TscLabel;
    scButton6: TscButton;
    scLabel1: TscLabel;
    scCheckBox3: TscCheckBox;
    scStyleManager1: TscStyleManager;
    scCheckBox4: TscCheckBox;
    scLabel6: TscLabel;
    procedure scCheckBox1Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scAppPager1Items7Click(Sender: TObject);
    procedure scStyledForm1TabChanged(Sender: TObject);
    procedure scStyledForm1StyleChanged(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
  private
    { Private declarations }
    PageChanging: Boolean;
    StyleChanging: Boolean;
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
begin
  scComboBox2.Items.Clear;
  scComboBox2.Items.AddStrings(TStyleManager.StyleNames);
  scComboBox2.ItemIndex := scComboBox2.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.scAppPager1Items7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  if not PageChanging then
    scAppPager1.ActivePage := scAppPagerPage1;
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  if not PageChanging then
    scAppPager1.ActivePage := scAppPagerPage2;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  if not PageChanging then
    scAppPager1.ActivePage := scAppPagerPage3;
end;

procedure TForm1.scButton6Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scStyledForm1.ShowIcon := scCheckBox1.Checked;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  scStyledForm1.ShowInactiveTab := scCheckBox2.Checked;
  if scStyledForm1.ShowInactiveTab then
  begin
    scButton2.StyleKind := scbsTab;
    scButton3.StyleKind := scbsTab;
    scButton4.StyleKind := scbsTab;
  end
  else
  begin
    scButton2.StyleKind := scbsTabTransparent;
    scButton3.StyleKind := scbsTabTransparent;
    scButton4.StyleKind := scbsTabTransparent;
  end;
end;

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
  scStyledForm1.ShowTabs := scCheckBox3.Checked;
  scStyledForm1.ShowButtons := scCheckBox3.Checked;
  scPanel1.Visible := not scStyledForm1.ShowButtons or
    not TStyleManager.IsCustomStyleActive;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  scAppPagerPage1.AutoScroll := scCheckBox4.Checked;
  scAppPagerPage1.FullUpdate := scCheckBox4.Checked;
  scAppPagerPage1.Repaint;
  scAppPagerPage1.Realign;
end;

procedure TForm1.scComboBox2Click(Sender: TObject);
begin
  if not StyleChanging then
    TStyleManager.SetStyle(scComboBox2.Items[scComboBox2.ItemIndex]);
end;

procedure TForm1.scStyledForm1StyleChanged(Sender: TObject);
begin
  StyleChanging := True;
  scPanel1.Visible := not TStyleManager.IsCustomStyleActive
    or not scStyledForm1.ShowButtons;
  if scPanel1.Visible then
  begin
    PageChanging := True;
    if scAppPager1.ActivePage = scAppPagerPage1 then
      scButton2.Down := True
    else
    if scAppPager1.ActivePage = scAppPagerPage2 then
      scButton3.Down := True
    else
    if scAppPager1.ActivePage = scAppPagerPage3 then
      scButton4.Down := True;
    PageChanging := False;
  end
  else
  begin
    PageChanging := True;
    if scAppPager1.ActivePage = scAppPagerPage1 then
      scStyledForm1.TabIndex := 0
    else
    if scAppPager1.ActivePage = scAppPagerPage2 then
      scStyledForm1.TabIndex := 1
    else
    if scAppPager1.ActivePage = scAppPagerPage3 then
      scStyledForm1.TabIndex := 2;
    PageChanging := False;
  end;
  scComboBox2.ItemIndex := scComboBox2.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  StyleChanging := False;
end;

procedure TForm1.scStyledForm1TabChanged(Sender: TObject);
begin
  if not PageChanging then
    case scStyledForm1.TabIndex of
      0:  scAppPager1.ActivePage := scAppPagerPage1;
      1:  scAppPager1.ActivePage := scAppPagerPage2;
      2:  scAppPager1.ActivePage := scAppPagerPage3;
    end;
end;

end.
