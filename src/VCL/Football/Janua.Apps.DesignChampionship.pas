unit Janua.Apps.DesignChampionship;

interface

uses System.Classes, Janua.Apps.Championship;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua VCL Football', [TJanuaVCLAppChampionships]);
end;

end.
