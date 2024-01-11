unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TUniForm6 = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm6: TUniForm6;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit7;

function UniForm6: TUniForm6;
begin
  Result := TUniForm6(UniMainModule.GetFormInstance(TUniForm6));
end;

procedure TUniForm6.UniButton1Click(Sender: TObject);
begin
  UniForm7.ShowModal;
end;

end.
