unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel;

type
  TMainForm = class(TUniForm)
    pnlTelephone: TUniPanel;
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUIFrame;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormShow(Sender: TObject);
var
  FCurrentFrame: TUniFrameClass;
  Fr: TUniFrame;
begin
  FCurrentFrame:= TUniFrameClass(FindClass('TfrmTelephone'));

  Fr := FCurrentFrame.Create(pnlTelephone);
  Fr.Parent := pnlTelephone;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
