//AllFeatures: Formatted Edit,Formatted Edit,icon-tree-editable
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniEdit,
  uniLabel, uniButton, uniMemo;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    UniFormattedNumberEdit2: TUniFormattedNumberEdit;
    UniLabel2: TUniLabel;
    UniFormattedNumberEdit3: TUniFormattedNumberEdit;
    UniLabel3: TUniLabel;
    UniFormattedNumberEdit4: TUniFormattedNumberEdit;
    UniLabel4: TUniLabel;
    UniFormattedNumberEdit5: TUniFormattedNumberEdit;
    UniLabel5: TUniLabel;
    UniFormattedNumberEdit6: TUniFormattedNumberEdit;
    UniLabel6: TUniLabel;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
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
  I:integer;
begin
  UniMemo1.Clear;
  for I := 1 to 6 do
    UniMemo1.Lines.Add(TUniFormattedNumberEdit(FindComponent('UniFormattedNumberEdit'+IntToStr(I))).Text+' '+TUniFormattedNumberEdit(FindComponent('UniFormattedNumberEdit'+IntToStr(I))).FormattedInput.CurrencySign);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
