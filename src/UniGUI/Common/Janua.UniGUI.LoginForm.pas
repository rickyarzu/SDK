unit Janua.UniGUI.LoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Janua.UniGUI.MainModule,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIMainModule,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm;

type
  TJanuaCustomLoginForm = class(TUniLoginForm)
  private
    function GetCustomLoginForm: TJanuaCustomLoginForm;
    { Private declarations }
  protected
    function GetJanuaUniMainModule: TJanuaUniMainModule;
    function GetMainModule: TUniGUIMainModule;
    function GetFormInstance: TComponent; virtual; abstract;
  protected
    property MainModule: TUniGUIMainModule read GetMainModule;
    property JanuaMainModule: TJanuaUniMainModule read GetJanuaUniMainModule;
  public
    property JanuaCustomLoginForm: TJanuaCustomLoginForm read GetCustomLoginForm;
  end;

implementation

{$R *.dfm}

uses
  uniGUIVars, uniGUIApplication;

{ TJanuaCustomLoginForm }

function TJanuaCustomLoginForm.GetCustomLoginForm: TJanuaCustomLoginForm;
begin
  Result := TJanuaCustomLoginForm(GetFormInstance);
end;

function TJanuaCustomLoginForm.GetJanuaUniMainModule: TJanuaUniMainModule;
begin
  Result := TJanuaUniMainModule(GetMainModule);
end;

function TJanuaCustomLoginForm.GetMainModule: TUniGUIMainModule;
begin
  Result := UniApplication.UniMainModule
end;

initialization

{ RegisterAppFormClass(TTJanuaCustomLoginForm); }

end.
