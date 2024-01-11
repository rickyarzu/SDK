unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Unit2, uniButton, uniMemo, uniGUIBaseClasses,
  uniLabel;

type
  TMainForm3 = class(TMainForm2)
    UniLabel4: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm3: TMainForm3;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function MainForm3: TMainForm3;
begin
  Result := TMainForm3(UniMainModule.GetFormInstance(TMainForm3));
end;

end.
