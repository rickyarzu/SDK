unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TUniForm4 = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm4: TUniForm4;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm4: TUniForm4;
begin
  Result := TUniForm4(UniMainModule.GetFormInstance(TUniForm4));
end;

end.
