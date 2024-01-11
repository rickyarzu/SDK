unit uRxDBLookupComboEdit;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Mask, JvExMask, JvToolEdit, JvDBLookup,
  JvDBLookupComboEdit;

type
  TRxDBLookupComboEdit = class(TJvDBLookupComboEdit)
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
  RegisterComponents('Januaproject', [TRxDBLookupComboEdit]);
end;

end.
