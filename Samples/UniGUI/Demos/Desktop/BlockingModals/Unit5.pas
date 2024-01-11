unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TUniForm5 = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm5: TUniForm5;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit6;

function UniForm5: TUniForm5;
begin
  Result := TUniForm5(UniMainModule.GetFormInstance(TUniForm5));
end;

procedure TUniForm5.UniButton1Click(Sender: TObject);
begin
  UniForm6.ShowModal();
end;

end.
