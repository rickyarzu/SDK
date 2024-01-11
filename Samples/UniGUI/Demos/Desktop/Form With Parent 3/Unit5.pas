unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm;

type
  TUniForm5 = class(TUniForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm5: TUniForm5;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm5: TUniForm5;
begin
  Result := TUniForm5(UniMainModule.GetFormInstance(TUniForm5));
end;

end.
