unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TUniForm8 = class(TUniForm)
    UniButton2: TUniButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm8: TUniForm8;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm8: TUniForm8;
begin
  Result := TUniForm8(UniMainModule.GetFormInstance(TUniForm8));
end;

end.
