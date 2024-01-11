unit AdvancedUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainUnit,
  scAdvancedControls, scControls, Vcl.StdCtrls, Vcl.Mask;

type
  TAdvancedFrame1 = class(TFrame)
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scComboBox2: TscComboBox;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scComboBox3: TscComboBox;
    scCheckBox1: TscCheckBox;
    scCheckBox5: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scCheckBox7: TscCheckBox;
    scAdvancedListBox1: TscAdvancedListBox;
    scComboBox4: TscComboBox;
    scCheckBox6: TscCheckBox;
    scAdvancedComboBox1: TscAdvancedComboBox;
    scHorzListBox1: TscHorzListBox;
    scLabel6: TscLabel;
    scLabel5: TscLabel;
    scLabel4: TscLabel;
    scAdvancedComboEdit1: TscAdvancedComboEdit;
    scAdvancedComboEdit2: TscAdvancedComboEdit;
    scCheckBox4: TscCheckBox;
    scCheckBox8: TscCheckBox;
    scLabel7: TscLabel;
    scComboBox5: TscComboBox;
    scCheckBox9: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scCheckBox10: TscCheckBox;
    scAdvancedComboBox2: TscAdvancedComboBox;
    procedure scComboBox1Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure scComboBox3Click(Sender: TObject);
    procedure scComboBox4Click(Sender: TObject);
    procedure scCheckBox7Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox5Click(Sender: TObject);
    procedure scCheckBox6Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox8Click(Sender: TObject);
    procedure scComboBox5Click(Sender: TObject);
    procedure scCheckBox9Click(Sender: TObject);
    procedure scCheckBox10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TAdvancedFrame1.scCheckBox10Click(Sender: TObject);
begin
  if scCheckBox10.Checked then
  begin
    scAdvancedListBox1.CustomUnCheckedImageIndex := 12;
    scAdvancedListBox1.CustomCheckedImageIndex := 13;
  end
  else
  begin
    scAdvancedListBox1.CustomUnCheckedImageIndex := -1;
    scAdvancedListBox1.CustomCheckedImageIndex := -1;
  end;
end;

procedure TAdvancedFrame1.scCheckBox1Click(Sender: TObject);
begin
  scAdvancedListBox1.ShowCheckBoxes := scCheckBox1.Checked;
end;

procedure TAdvancedFrame1.scCheckBox2Click(Sender: TObject);
begin
  scAdvancedListBox1.ShowFocusRect := scCheckBox2.Checked;
  scHorzListBox1.ShowFocusRect := scCheckBox2.Checked;
end;

procedure TAdvancedFrame1.scCheckBox3Click(Sender: TObject);
begin
  scAdvancedListBox1.AlternateRow := scCheckBox3.Checked;
end;

procedure TAdvancedFrame1.scCheckBox4Click(Sender: TObject);
begin
  scAdvancedListBox1.ShowItemProgressBars := scCheckBox4.Checked;
  if scAdvancedListBox1.ShowItemProgressBars then
    scAdvancedListBox1.ItemHeight := scAdvancedListBox1.ItemHeight + 30
  else
    scAdvancedListBox1.ItemHeight := scAdvancedListBox1.ItemHeight - 30;
end;

procedure TAdvancedFrame1.scCheckBox5Click(Sender: TObject);
begin
  scAdvancedListBox1.ShowLines := scCheckBox5.Checked;
end;

procedure TAdvancedFrame1.scCheckBox6Click(Sender: TObject);
begin
  scAdvancedComboBox1.Animation := scCheckBox6.Checked;
  scAdvancedComboBox2.Animation := scCheckBox6.Checked;
end;

procedure TAdvancedFrame1.scCheckBox7Click(Sender: TObject);
begin
  if scCheckBox7.Checked then
  begin
    scAdvancedListBox1.Wallpapers := MainForm.scImageCollection1;
    scHorzListBox1.Wallpapers := MainForm.scImageCollection1;
    scAdvancedComboBox1.ListBoxWallpapers := MainForm.scImageCollection1;
  end
  else
  begin
    scHorzListBox1.Wallpapers := nil;
    scAdvancedListBox1.Wallpapers := nil;
    scAdvancedComboBox1.ListBoxWallpapers := nil;
  end;
end;

procedure TAdvancedFrame1.scCheckBox8Click(Sender: TObject);
begin
  scAdvancedListBox1.ShowItemTitles := scCheckBox8.Checked;
  if scAdvancedListBox1.ShowItemTitles then
    scAdvancedListBox1.ItemHeight := scAdvancedListBox1.ItemHeight + 15
  else
    scAdvancedListBox1.ItemHeight := scAdvancedListBox1.ItemHeight - 15;
end;

procedure TAdvancedFrame1.scCheckBox9Click(Sender: TObject);
begin
  scAdvancedListBox1.ShowItemDetails := scCheckBox9.Checked;
  if scAdvancedListBox1.ShowItemDetails then
    scAdvancedListBox1.ItemHeight := scAdvancedListBox1.ItemHeight + 10
  else
    scAdvancedListBox1.ItemHeight := scAdvancedListBox1.ItemHeight - 10;
end;

procedure TAdvancedFrame1.scComboBox1Click(Sender: TObject);
begin
  scAdvancedListBox1.SelectionStyle := TscAdvancedSelectionStyle(scComboBox1.ItemIndex);
  scHorzListBox1.SelectionStyle := TscAdvancedSelectionStyle(scComboBox1.ItemIndex);
  scAdvancedComboBox1.SelectionStyle := TscAdvancedSelectionStyle(scComboBox1.ItemIndex);
  scAdvancedComboBox1.ListBoxSelectionStyle := TscAdvancedSelectionStyle(scComboBox1.ItemIndex);
end;

procedure TAdvancedFrame1.scComboBox2Click(Sender: TObject);
begin
  scAdvancedListBox1.HeaderStyle := TscAdvancedHeaderStyle(scComboBox2.ItemIndex);
  scAdvancedComboBox1.ListBoxHeaderStyle := TscAdvancedHeaderStyle(scComboBox2.ItemIndex);
end;

procedure TAdvancedFrame1.scComboBox3Click(Sender: TObject);
begin
  scAdvancedListBox1.BackgroundStyle := TscBackgroundStyle(scComboBox3.ItemIndex);
  scHorzListBox1.BackgroundStyle := TscBackgroundStyle(scComboBox3.ItemIndex)
end;

procedure TAdvancedFrame1.scComboBox4Click(Sender: TObject);
begin
  scAdvancedComboBox1.Style := TscAdvancedComboStyle(scComboBox4.ItemIndex);
  scAdvancedComboBox2.Style := TscAdvancedComboStyle(scComboBox4.ItemIndex);
end;

procedure TAdvancedFrame1.scComboBox5Click(Sender: TObject);
begin
  if scComboBox5.ItemIndex > 0 then
  begin
    if scComboBox3.ItemIndex = 0 then
    begin
      scComboBox3.ItemIndex := 1;
      scAdvancedListBox1.BackgroundStyle := scbgsFormBackground;
    end;
    scAdvancedListBox1.HeaderHeight := Round(40 * MainForm.scStyledForm1.ScaleFactor)
  end
  else
    scAdvancedListBox1.HeaderHeight :=  Round(20 * MainForm.scStyledForm1.ScaleFactor);

  scAdvancedListBox1.Style := TscAdvancedListBoxStyle(scComboBox5.ItemIndex);
end;

end.
