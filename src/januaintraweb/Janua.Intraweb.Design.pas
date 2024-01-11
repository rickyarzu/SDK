unit Janua.Intraweb.Design;

interface

uses System.Classes, Janua.Intraweb.WebFormSetup, Janua.Intraweb.WebFormsModel,
  Janua.Intraweb.ServerController, Janua.Intraweb.Classes, Janua.Intraweb.Forms;

procedure register;

implementation

procedure register;
begin
  { Janua.Intraweb.WebFormSetup }
  RegisterComponents('Janua Intraweb', [TJanuaIntrawebFormSetup]);
  { Janua.Intraweb.WebFormsModel }
  RegisterComponents('Janua Intraweb', [TJanuaWebFormsModel]);
  // TJanuaIntrawebHttpUrl
  RegisterComponents('Janua Intraweb', [TJanuaIntrawebHttpUrl]);
  // Janua.Intraweb.Classes
  RegisterComponents('Janua Intraweb', [TJanuaIntraWebProfile]);
  // Janua.Intraweb.Forms
  RegisterComponents('Janua Intraweb', [TJanuaIntrawebApplication]);
  RegisterComponents('Janua Intraweb', [TJanuaIntrawebFormModel]);
  RegisterComponents('Janua Intraweb', [TJanuaIntrawebForm]);
end;

end.
