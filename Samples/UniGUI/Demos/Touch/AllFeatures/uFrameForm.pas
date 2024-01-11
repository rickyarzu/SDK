unit uFrameForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm;

type
  TUnimFrameForm = class(TUnimForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimFrameForm: TUnimFrameForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimFrameForm: TUnimFrameForm;
begin
  Result := TUnimFrameForm(UniMainModule.GetFormInstance(TUnimFrameForm));
end;

end.
