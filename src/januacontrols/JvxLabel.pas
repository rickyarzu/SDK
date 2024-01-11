unit JvxLabel;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, JvExControls,
  JvComponent, JvLabel;

type
  TJvxLabel = class(TJvLabel)
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
  RegisterComponents('Januaproject', [TJvxLabel]);
end;

end.
