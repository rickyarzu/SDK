//AllFeatures: HTTP,Basic Authentication,icon-basic-dialog
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
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

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniLabel1.Caption := '<b>Authenticated:</b> ' + UniSession.ARequest.AuthUsername + ', '+ UniSession.ARequest.AuthPassword;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
