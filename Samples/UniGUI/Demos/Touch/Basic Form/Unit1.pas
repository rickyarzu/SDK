unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, unimPanel,
  uniGUIBaseClasses, uniLabel, unimLabel;

type
  TUnimForm1 = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    UnimPanel1: TUnimPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;

end.
