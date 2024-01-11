//AllFeatures: Miscellaneous,Show Progress,icon-progress-basic
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TMainForm = class(TUniForm)
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
  i: Integer;
begin
  ShowProgress('Please Wait...');
  UniSession.Synchronize;

  for i := 1 to 10 do
  begin
    Sleep(500);
    UpdateProgress(i/10, Format('%%%d Completed', [i*10]));   
    UniSession.Synchronize;
  end;
  HideProgress;
  ShowToast('Process Finished');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
