unit StandardUnit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  scControls, Vcl.StdCtrls, MainUnit;

type
  TStandardFrame6 = class(TFrame)
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scCheckBox1: TscCheckBox;
    scLabel2: TscLabel;
    scComboBox2: TscComboBox;
    scCheckBox2: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scLabel3: TscLabel;
    scComboBox3: TscComboBox;
    scListView1: TscListView;
    scTreeView1: TscTreeView;
    scCheckBox5: TscCheckBox;
    scCheckBox6: TscCheckBox;
    scCheckBox7: TscCheckBox;
    scCheckBox8: TscCheckBox;
    scCheckBox9: TscCheckBox;
    scCheckBox4: TscCheckBox;
    scCheckBox10: TscCheckBox;
    scCheckBox11: TscCheckBox;
    scLabel4: TscLabel;
    scLabel5: TscLabel;
    procedure scComboBox1Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scComboBox3Click(Sender: TObject);
    procedure scCheckBox5Click(Sender: TObject);
    procedure scCheckBox6Click(Sender: TObject);
    procedure scCheckBox7Click(Sender: TObject);
    procedure scCheckBox8Click(Sender: TObject);
    procedure scCheckBox9Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox10Click(Sender: TObject);
    procedure scCheckBox11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TStandardFrame6.scCheckBox10Click(Sender: TObject);
begin
  scTreeView1.CheckHierarchy := scCheckBox10.Checked;
end;

procedure TStandardFrame6.scCheckBox11Click(Sender: TObject);
begin
  scListView1.ExtendedColumnDraw := scCheckBox11.Checked;
end;

procedure TStandardFrame6.scCheckBox1Click(Sender: TObject);
begin
  scTreeView1.ShowFocusRect := scCheckBox1.Checked;
  scListView1.ShowFocusRect := scCheckBox1.Checked;
end;

procedure TStandardFrame6.scCheckBox2Click(Sender: TObject);
begin
  scTreeView1.ShowLines := scCheckBox2.Checked;
end;

procedure TStandardFrame6.scCheckBox3Click(Sender: TObject);
begin
  if scCheckBox3.Checked then
  begin
    scTreeView1.ButtonImages := MainForm.ImageList2;
    scTreeView1.ButtonCollapseImageIndex := 11;
    scTreeView1.ButtonExpandImageIndex := 12;
  end
  else
  begin
    scTreeView1.ButtonImages := nil;
    scTreeView1.ButtonCollapseImageIndex := -1;
    scTreeView1.ButtonExpandImageIndex := -1;
  end;
end;

procedure TStandardFrame6.scCheckBox4Click(Sender: TObject);
begin
  scListView1.Checkboxes := scCheckBox4.Checked;
  scTreeView1.Checkboxes := scCheckBox4.Checked;
end;

procedure TStandardFrame6.scCheckBox5Click(Sender: TObject);
begin
  scListView1.GridLines := scCheckBox5.Checked;
end;

procedure TStandardFrame6.scCheckBox6Click(Sender: TObject);
begin
  scListView1.AlternateRow := scCheckBox6.Checked;
end;

procedure TStandardFrame6.scCheckBox7Click(Sender: TObject);
begin
  scListView1.RowSelect := scCheckBox7.Checked;
end;

procedure TStandardFrame6.scCheckBox8Click(Sender: TObject);
begin
  if not scCheckBox9.Checked then
  begin
    scTreeView1.DefaultDraw := scCheckBox8.Checked;
    scListView1.DefaultDraw := scCheckBox8.Checked;
  end;
end;

procedure TStandardFrame6.scCheckBox9Click(Sender: TObject);
begin
  if scCheckBox9.Checked then
  begin
    scTreeView1.Font.Color := $00FFFFD7;
    {$IFNDEF VER230}
    scTreeView1.StyleElements := scTreeView1.StyleElements - [seClient, seFont];
    {$ENDIF}
    scTreeView1.ButtonColor := $004080FF;
    scTreeView1.ButtonGlyphColor := $00804000;
    scTreeView1.Color := $00804000;
    scTreeView1.SelectionColor := $00B8FF9F;
    scTreeView1.SelectionTextColor := $00804000;
    scTreeView1.SelectionStyle := scstColor;
    scTreeView1.FullRedraw;
    {$IFNDEF VER230}
    scListView1.StyleElements := scTreeView1.StyleElements - [seClient, seFont];
    {$ENDIF}
    scListView1.Font.Color := $00FFFFD7;
    scListView1.Color := $00804000;
    scListView1.SelectionColor := $00B8FF9F;
    scListView1.SelectionTextColor := $00804000;
    scListView1.SelectionStyle := scstColor;
    scListView1.FullRedraw;
  end
  else
  begin
    {$IFNDEF VER230}
    scTreeView1.StyleElements := scTreeView1.StyleElements + [seClient, seFont];
    {$ENDIF}
    scTreeView1.Font.Color := clWindowText;
    scTreeView1.ButtonColor := clNone;
    scTreeView1.Color := clWindow;
    scTreeView1.SelectionColor := clNone;
    scTreeView1.SelectionTextColor := clHighLightText;
    scTreeView1.SelectionStyle := TscSelectionStyle(scComboBox1.ItemIndex);
    scTreeView1.FullRedraw;
    {$IFNDEF VER230}
    scListView1.StyleElements := scTreeView1.StyleElements + [seClient, seFont];
    {$ENDIF}
    scListView1.Font.Color := clWindowText;
    scListView1.Color := clWindow;
    scListView1.SelectionColor := clNone;
    scListView1.SelectionTextColor := clHighLightText;
    scListView1.SelectionStyle := TscSelectionStyle(scComboBox1.ItemIndex);
    scListView1.FullRedraw;
  end;
end;

procedure TStandardFrame6.scComboBox1Click(Sender: TObject);
begin
  if not scCheckBox9.Checked then
  begin
    scTreeView1.SelectionStyle := TscSelectionStyle(scComboBox1.ItemIndex);
    scListView1.SelectionStyle := TscSelectionStyle(scComboBox1.ItemIndex);
  end;
end;

procedure TStandardFrame6.scComboBox2Click(Sender: TObject);
begin
  scTreeView1.ButtonStyle := TscExpandButtonStyle(scComboBox2.ItemIndex);
end;

procedure TStandardFrame6.scComboBox3Click(Sender: TObject);
begin
  scListView1.ViewStyle := TViewStyle(scComboBox3.ItemIndex);
  scListView1.Arrange(arDefault);
end;

end.
