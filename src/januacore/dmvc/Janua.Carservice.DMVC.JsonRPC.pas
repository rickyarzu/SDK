unit Janua.Carservice.DMVC.JsonRPC;

interface

type 
  TCarServiceRPC = class
  public
    function ReverseString(const Value: String): String;
  end;

implementation

uses System.StrUtils;

function TCarServiceRPC.ReverseString(const Value: String): String;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.
