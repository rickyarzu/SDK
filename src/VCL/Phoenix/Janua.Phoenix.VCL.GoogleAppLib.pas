unit Janua.Phoenix.VCL.GoogleAppLib;

interface

uses System.Classes, System.SysUtils;



implementation

uses Janua.Application.Framework, Janua.Phoenix.VCL.BackgroundApplication;

function Initialize: string;
begin
  Result := 'notSetted';
  (*
    if not aSetted then
    begin
    //
    Result := 'notSetted';
    end
    else
    Result := 'Setted';
  *)
end;

function CreateGoogleEvent(aEvent: string): string;
begin

end;

function UpdateGoogleEvent(aJson: string): string;
begin

end;

initialization


finalization

end.
