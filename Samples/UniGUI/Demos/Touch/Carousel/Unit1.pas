unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses, uniEdit, unimEdit,
  uniButton, unimButton;

type
  TUnimForm1 = class(TUnimForm)
    UnimEdit1: TUnimEdit;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit2;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;

procedure TUnimForm1.UnimButton1Click(Sender: TObject);
begin
  UnimForm2.Show;
end;

end.
