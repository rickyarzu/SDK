unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniBitBtn, UniFSButton;

type
  TMainForm = class(TUniForm)
    btn1: TUniFSButton;
    btn2: TUniFSButton;
    btn3: TUniFSButton;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uFrmMarkerChangePosition, uFrmMarkerImageIcons;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btn1Click(Sender: TObject);
begin
  frmMarkerChangePosition.ShowModal();
end;

procedure TMainForm.btn3Click(Sender: TObject);
begin
  frmMarkerImageIcons.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
