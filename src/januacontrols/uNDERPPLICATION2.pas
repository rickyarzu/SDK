unit uNDERPPLICATION2;

interface

uses
  Windows, Messages, SysUtils, Classes;

type
  TuNDERPPLICATION2 = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Underglobe', [TuNDERPPLICATION2]);
end;

end.
 