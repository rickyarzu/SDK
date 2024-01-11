unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, 
  uniCustomControl3, uniLabel;

type
  TMainForm = class(TUniForm)
    UniMyFlashComponent1: TUniMyFlashComponent;
    UniLabel1: TUniLabel;
    procedure UniMyFlashComponent1Success(Sender: TObject);
    procedure UniMyFlashComponent1Failure(Sender: TObject);
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

procedure TMainForm.UniMyFlashComponent1Failure(Sender: TObject);
begin
  UniLabel1.Caption:='Flash Object Failed to Load.';
end;

procedure TMainForm.UniMyFlashComponent1Success(Sender: TObject);
begin
  UniLabel1.Caption:='Flash Object Loaded.';
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
