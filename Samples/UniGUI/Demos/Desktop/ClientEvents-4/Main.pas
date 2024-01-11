//AllFeatures: Client Events,Client Events - 4,icon-touch-events
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
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
begin
  Sleep(3000);
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniSession.SendResponse('New Text', False);
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  UniSession.SendResponse('MainForm.UniButton1.setPosition(40, 40);');
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
