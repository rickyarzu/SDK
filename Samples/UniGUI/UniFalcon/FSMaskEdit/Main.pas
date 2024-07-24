unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel;

type
  TMainForm = class(TUniForm)
    pnlMask: TUniPanel;
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
  FCurrentFrame:= TUniFrameClass(FindClass('TfrmMask'));

  Fr := FCurrentFrame.Create(pnlMask);
  Fr.Parent := pnlMask;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
