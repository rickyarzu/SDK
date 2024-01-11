unit uDBDateEdit;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvDBControls;

type
  TDBDateEdit = class(TJvDBDateEdit)
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
  RegisterComponents('Januaproject', [TDBDateEdit]);
end;

end.
