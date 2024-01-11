unit jvxcalcEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls, Mask, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  TjvxcalcEdit = class(TjvcalcEdit)
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
  RegisterComponents('Januaproject', [TjvxcalcEdit]);
end;

end.
