unit AdvancedUnit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainUnit, scControls,
  scAdvancedControls, Vcl.StdCtrls, scExtControls;

type
  TAdvancedFrame3 = class(TFrame)
    scButtonsBar1: TscButtonsBar;
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scLabel2: TscLabel;
    scComboBox2: TscComboBox;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scLabel3: TscLabel;
    scComboBox3: TscComboBox;
    scExPanel1: TscExPanel;
    scScrollBox1: TscScrollBox;
    scExPanel2: TscExPanel;
    scExPanel3: TscExPanel;
    scExPanel4: TscExPanel;
    scButton1: TscButton;
    scCheckBox3: TscCheckBox;
    scAdvancedListBox1: TscAdvancedListBox;
    scCheckBox4: TscCheckBox;
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure scComboBox3Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TAdvancedFrame3.scCheckBox1Click(Sender: TObject);
begin
  scButtonsBar1.ItemGlowEffect.Enabled := scCheckBox1.Checked;
  if scCheckBox2.Checked then
    scButtonsBar1.SetItemIndex(scButtonsBar1.SectionIndex,
      scButtonsBar1.GetItemIndex);
end;

procedure TAdvancedFrame3.scCheckBox2Click(Sender: TObject);
begin
  scButtonsBar1.ShowSelectedItem := scCheckBox2.Checked;
  scButtonsBar1.SelectFirstItem := scCheckBox2.Checked;
  scButtonsBar1.UpdateItems;
  if scCheckBox2.Checked then
    scButtonsBar1.SetItemIndex(scButtonsBar1.SectionIndex,
      scButtonsBar1.GetItemIndex);
end;

procedure TAdvancedFrame3.scCheckBox4Click(Sender: TObject);
begin
  scButtonsBar1.AllButtonsOnTop := scCheckBox4.Checked;
end;

procedure TAdvancedFrame3.scComboBox1Click(Sender: TObject);
begin
  scButtonsBar1.ButtonStyle := TscbbButtonStyle(scComboBox1.ItemIndex);
  if scCheckBox2.Checked then
    scButtonsBar1.SetItemIndex(scButtonsBar1.SectionIndex,
      scButtonsBar1.GetItemIndex);
end;

procedure TAdvancedFrame3.scComboBox2Click(Sender: TObject);
begin
  scButtonsBar1.ItemStyle := TscbbItemStyle(scComboBox2.ItemIndex);
  if scCheckBox2.Checked then
    scButtonsBar1.SetItemIndex(scButtonsBar1.SectionIndex,
      scButtonsBar1.GetItemIndex);
end;

procedure TAdvancedFrame3.scComboBox3Click(Sender: TObject);
begin
  scButtonsBar1.ItemPanelStyle := TscbbItemPanelStyle(scComboBox3.ItemIndex);
  if scCheckBox2.Checked then
    scButtonsBar1.SetItemIndex(scButtonsBar1.SectionIndex,
      scButtonsBar1.GetItemIndex);
end;

end.
