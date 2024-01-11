unit Jvxgradientcaption;

interface

uses
  Windows, Messages, SysUtils, Classes, JvGradientCaption;

type
  TJvxgradientcaption = class(TJvgradientcaption)
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
  RegisterComponents('UnderGLOBE', [TJvxgradientcaption]);
end;

end.
