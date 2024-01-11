unit StandardUnit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  scControls, Vcl.Mask, MainUnit, scExtControls, scCalendar;

type
  TStandardFrame5 = class(TFrame)
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scEdit1: TscEdit;
    scLabel2: TscLabel;
    scEdit2: TscEdit;
    scEdit3: TscEdit;
    scLabel14: TscLabel;
    scPasswordEdit1: TscPasswordEdit;
    scPasswordEdit2: TscPasswordEdit;
    scMemo1: TscMemo;
    scCheckBox3: TscCheckBox;
    scCalcEdit1: TscCalcEdit;
    scNumericEdit2: TscNumericEdit;
    scCalcEdit2: TscCalcEdit;
    scSpinEdit1: TscSpinEdit;
    scSpinEdit2: TscSpinEdit;
    scTimeEdit1: TscTimeEdit;
    scDateEdit1: TscDateEdit;
    scMonthCalendar1: TscMonthCalendar;
    scEdit4: TscEdit;
    scCheckBox4: TscCheckBox;
    scTimeEdit2: TscTimeEdit;
    procedure scComboBox1Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scEdit5Enter(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TStandardFrame5.scCheckBox1Click(Sender: TObject);
begin
  if scCheckBox1.Checked then
  begin
    scedit1.BorderStyle := bsSingle;
    scedit2.BorderStyle := bsSingle;
    scedit3.BorderStyle := bsSingle;
    scCalcEdit1.BorderStyle := bsSingle;
    scCalcEdit2.BorderStyle := bsSingle;
    scNumericEdit2.BorderStyle := bsSingle;
    scMemo1.BorderStyle := bsSingle;
    scSpinEdit1.BorderStyle := bsSingle;
    scSpinEdit2.BorderStyle := bsSingle;
    scTimeEdit1.BorderStyle := bsSingle;
    scTimeEdit2.BorderStyle := bsSingle;
    scDateEdit1.BorderStyle := bsSingle;
  end
  else
  begin
    scedit1.BorderStyle := bsNone;
    scedit2.BorderStyle := bsNone;
    scedit3.BorderStyle := bsNone;
    scMemo1.BorderStyle := bsNone;
    scCalcEdit1.BorderStyle := bsNone;
    scCalcEdit2.BorderStyle := bsNone;
    scNumericEdit2.BorderStyle := bsNone;
    scSpinEdit1.BorderStyle := bsNone;
    scSpinEdit2.BorderStyle := bsNone;
    scTimeEdit1.BorderStyle := bsNone;
    scTimeEdit2.BorderStyle := bsNone;
    scDateEdit1.BorderStyle := bsNone;
  end;
end;

procedure TStandardFrame5.scCheckBox2Click(Sender: TObject);
begin
  scEdit1.Transparent := scCheckBox2.Checked;
  scEdit2.Transparent := scCheckBox2.Checked;
  scEdit3.Transparent := scCheckBox2.Checked;
  scMemo1.Transparent := scCheckBox2.Checked;
  scCalcEdit1.Transparent := scCheckBox2.Checked;
  scCalcEdit2.Transparent := scCheckBox2.Checked;
  scNumericEdit2.Transparent := scCheckBox2.Checked;
  scSpinEdit1.Transparent := scCheckBox2.Checked;
  scSpinEdit2.Transparent := scCheckBox2.Checked;
  scTimeEdit1.Transparent := scCheckBox2.Checked;
  scTimeEdit2.Transparent := scCheckBox2.Checked;
  scDateEdit1.Transparent := scCheckBox2.Checked;
  scPasswordEdit1.Transparent := scCheckBox2.Checked;
end;

procedure TStandardFrame5.scCheckBox3Click(Sender: TObject);
begin
  if scCheckBox3.Checked then
  begin
    scMemo1.Wallpapers := MainForm.scImageCollection1;
    scMemo1.WallpaperIndex := 1;
  end
  else
  begin
    scMemo1.Wallpapers := nil;
    scMemo1.WallpaperIndex := -1;
  end
end;

procedure TStandardFrame5.scCheckBox4Click(Sender: TObject);
begin
  if scCheckBox4.Checked then
  begin
    scMemo1.CustomBackgroundImageNormalIndex := 3;
    scMemo1.CustomBackgroundImageHotIndex := 3;
    scMemo1.CustomBackgroundImageDisabledIndex := 3;
    scMonthCalendar1.CustomImageIndex := 3;
  end
  else
  begin
    scMemo1.CustomBackgroundImageNormalIndex := -1;
    scMemo1.CustomBackgroundImageHotIndex :=  -1;
    scMemo1.CustomBackgroundImageDisabledIndex := -1;
    scMonthCalendar1.CustomImageIndex := -1;
  end;
end;

procedure TStandardFrame5.scComboBox1Click(Sender: TObject);
begin
  scEdit1.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scEdit2.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scEdit3.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scCalcEdit1.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scCalcEdit2.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scNumericEdit2.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scSpinEdit1.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scSpinEdit2.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scTimeEdit1.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scTimeEdit2.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
  scDateEdit1.BorderKind := TscEditBorderKind(scComboBox1.ItemIndex);
end;

procedure TStandardFrame5.scEdit5Enter(Sender: TObject);
begin
  Height := 100;
end;

end.
