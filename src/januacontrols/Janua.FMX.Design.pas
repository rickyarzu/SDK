unit Janua.FMX.Design;

interface

uses System.Classes, Janua.FMX.Users, Janua.FMX.ControlIOSource;

procedure register;

implementation

procedure register;
begin
  { Janua.FMX.Users }
  RegisterComponents('Janua FMX Controls', [TJanuaFMXUser]);
  {Janua.FMX.ControlIOSource}
  RegisterComponents('Janua Controls', [TJanuaFMXIOSource]);
end;

end.
