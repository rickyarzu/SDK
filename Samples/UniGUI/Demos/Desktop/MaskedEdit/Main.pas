//AllFeatures: Edit,Masked Edit,icon-form-masks
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniMemo, uniEdit,
  uniGUIBaseClasses, uniLabel;

type
  TMainForm = class(TUniForm)
    UniEdit1: TUniEdit;
    UniLabel1: TUniLabel;
    UniEdit2: TUniEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniLabel4: TUniLabel;
    UniMemo1: TUniMemo;
    UniShowMemoButton: TUniButton;
    procedure UniShowMemoButtonClick(Sender: TObject);
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

procedure TMainForm.UniShowMemoButtonClick(Sender: TObject);
var
  I: Integer;
begin
  UniMemo1.Clear;
  for I := 1 to 4 do
    UniMemo1.Lines.Add(TUniFormattedNumberEdit(FindComponent('UniEdit'+IntToStr(I))).Text);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
