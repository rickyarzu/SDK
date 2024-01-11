unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniLabel;

type
  TMainForm = class(TUniForm)
    ulb1: TUniLabel;
    btnAccept: TUniButton;
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
  if TUniGUIApplication(UniApplication).Parameters.Count > 0 then
    ulb1.Caption := (TUniGUIApplication(UniApplication).Parameters.Values['CustomerID']);
  // showmessage(TUniGUIApplication(UniApplication).Parameters.Values['CustomerID']);
end;

initialization

RegisterAppFormClass(TMainForm);

end.
