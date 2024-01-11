unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel;

type
  TUniForm3 = class(TUniForm)
    UniLabel1: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm3: TUniForm3;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm3: TUniForm3;
begin
  Result := TUniForm3(UniMainModule.GetFormInstance(TUniForm3));
end;

end.
