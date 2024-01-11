unit uRxDBComboEdit;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvDBControls;        

type
  TRxDBComboEdit = class(TJvDBComboEdit)
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
  RegisterComponents('Januaproject', [TRxDBComboEdit]);
end;

end.
