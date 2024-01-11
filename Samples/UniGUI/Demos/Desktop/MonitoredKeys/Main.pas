//AllFeatures: Forms,Monitored Keys,icon-keyboard
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniMemo, uniGUIBaseClasses, uniLabel, uniButton;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniMemo1: TUniMemo;
    UniLabel2: TUniLabel;
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F1..VK_F12 :
      UniMemo1.Lines.Add('F'+IntToStr(Key-VK_F1+1));

    88 : // 'x'
      if ssAlt in Shift then
        Close;
  end;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
