unit UnderTest;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, ufrmMDIChild, Forms;

type
  TUnderTest = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
     procedure Attiva(Owner: TForm);
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation
var
        Pippo: TForm1;

procedure Register;
begin
  RegisterComponents('Underglobe', [TUnderTest]);
end;

procedure TUnderTest.Attiva(Owner: TForm);

begin
     if not Assigned(Pippo) then Pippo := TForm1.Create(Owner);
     Pippo.Show;
end;

end.
