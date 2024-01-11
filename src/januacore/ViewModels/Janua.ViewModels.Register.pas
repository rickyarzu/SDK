unit Janua.ViewModels.Register;

interface

procedure Register;

implementation

uses System.Classes;

procedure Register;
begin
  // TDBUserBindable
  RegisterComponents('Janua System', [TDBUserBindable]);
end;

end.
