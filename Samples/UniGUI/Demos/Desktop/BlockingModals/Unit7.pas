unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TUniForm7 = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm7: TUniForm7;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit8;

function UniForm7: TUniForm7;
begin
  Result := TUniForm7(UniMainModule.GetFormInstance(TUniForm7));
end;

procedure TUniForm7.UniButton1Click(Sender: TObject);
begin
  UniForm8.ShowModal;
end;

end.
