unit StandardUnit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls,
  Vcl.CheckLst, Vcl.StdCtrls, Vcl.ComCtrls, MainUnit, Vcl.ExtCtrls,
  scExtControls;

type
  TStandardFrame4 = class(TFrame)
    scComboBoxEx1: TscComboBoxEx;
    scComboBox1: TscComboBox;
    scListBox1: TscListBox;
    scCheckListBox1: TscCheckListBox;
    scListBox2: TscListBox;
    scCheckBox1: TscCheckBox;
    scLabel2: TscLabel;
    scLabel1: TscLabel;
    scLabel3: TscLabel;
    scComboBox2: TscComboBox;
    scColorBox1: TscColorBox;
    scFontListBox1: TscFontListBox;
    scColorListBox1: TscColorListBox;
    scFontComboBox1: TscFontComboBox;
    scListBox3: TscListBox;
    scLabel4: TscLabel;
    scLabel5: TscLabel;
    scComboBox3: TscComboBox;
    procedure scComboBox2Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TStandardFrame4.scCheckBox1Click(Sender: TObject);
begin
  scComboBox3.ShowFocusRect := scCheckBox1.Checked;
  scColorBox1.ShowFocusRect := scCheckBox1.Checked;
  scListBox1.ShowFocusRect := scCheckBox1.Checked;
  scCheckListBox1.ShowFocusRect := scCheckBox1.Checked;
  scListBox2.ShowFocusRect := scCheckBox1.Checked;
  scListBox3.ShowFocusRect := scCheckBox1.Checked;
  scColorListBox1.ShowFocusRect := scCheckBox1.Checked;
  scFontListBox1.ShowFocusRect := scCheckBox1.Checked;
end;

procedure TStandardFrame4.scComboBox2Click(Sender: TObject);
begin
  scComboBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scComboBox3.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scListBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scListBox3.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scCheckListBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scComboBoxEx1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scColorListBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scColorBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scFontListBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scFontComboBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
end;

end.
