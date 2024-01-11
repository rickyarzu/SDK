//AllFeatures: Sessions,Idle Timeout,icon-panel-time
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniLabel;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniButton2: TUniButton;
    procedure UniFormSessionIdle(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, IdleForm, Access2000, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniForm1.showmodal;
end;

procedure TMainForm.UniFormSessionIdle(Sender: TObject);
begin
  UniIdleForm.ShowModal(
    procedure(Sender: TComponent; AResult:Integer)
    begin
      if AResult <> mrOK then
      begin
        UniSession.Terminate('Your session terminated because it was idle for 30 seconds!');
      end;
    end
  );
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
