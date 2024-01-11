unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniEdit, uniLabel;

type
  TUniForm1 = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniEdit1: TUniEdit;
    UniLabel1: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

end.
