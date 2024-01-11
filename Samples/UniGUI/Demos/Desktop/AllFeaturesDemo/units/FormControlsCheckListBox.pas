//CheckListBox = Form Controls
unit FormControlsCheckListBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniCheckBox, uniMemo,
  uniButton, uniMultiItem, uniListBox;

type
  TUniFormControlsCheckListBox = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniListBox1: TUniListBox;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    UniButton2: TUniButton;
    UniCheckBox1: TUniCheckBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniCheckBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsCheckListBox.UniButton1Click(Sender: TObject);
var
  I: Integer;
begin
  UniMemo1.Lines.Clear;
  for I := 0 to UniListBox1.Count - 1 do
    if UniListBox1.Selected[I] then
      UniMemo1.Lines.Add(UniListBox1.Items[I])
end;

procedure TUniFormControlsCheckListBox.UniButton2Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to UniListBox1.Count - 1 do
    UniListBox1.Selected[I] := False;

  UniListBox1.Selected[1] := True;
  UniListBox1.Selected[4] := True;
  UniListBox1.Selected[7] := True;
  UniListBox1.Selected[8] := True;
end;

procedure TUniFormControlsCheckListBox.UniCheckBox1Change(Sender: TObject);
begin
  UniListBox1.CheckBoxOnly := UniCheckBox1.Checked;
end;

procedure TUniFormControlsCheckListBox.UniFrameCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to 10 do
  begin
    UniListBox1.Items.Add('Item-' + IntToStr(I));
  end;

  UniListBox1.Selected[1] := True;
  UniListBox1.Selected[5] := True;
end;

initialization
  RegisterClass(TUniFormControlsCheckListBox);

end.
