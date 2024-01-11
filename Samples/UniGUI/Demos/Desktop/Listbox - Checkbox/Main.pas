unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniMultiItem,
  uniListBox, uniButton, uniMemo, uniCheckBox;

type
  TMainForm = class(TUniForm)
    UniListBox1: TUniListBox;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    UniButton2: TUniButton;
    UniCheckBox1: TUniCheckBox;
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniCheckBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  I: Integer;
begin
  UniMemo1.Lines.Clear;
  for I := 0 to UniListBox1.Count - 1 do
    if UniListBox1.Selected[I] then
      UniMemo1.Lines.Add(UniListBox1.Items[I])
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
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

procedure TMainForm.UniCheckBox1Change(Sender: TObject);
begin
  UniListBox1.CheckBoxOnly := UniCheckBox1.Checked;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
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
  RegisterAppFormClass(TMainForm);

end.
