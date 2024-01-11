//AllFeatures: Sessions,Session Timeout,icon-panel-time
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniCheckBox;

type
  TMainForm = class(TUniForm)
    UniCheckBox1: TUniCheckBox;
    procedure UniCheckBox1Click(Sender: TObject);
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

procedure TMainForm.UniCheckBox1Click(Sender: TObject);
begin
  UniMainModule.AllowTerminate:=UniCheckBox1.Checked;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
