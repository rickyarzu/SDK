program WebServiceClient;

{===============================================================================
 Demo Web Service Part 1

 For Blaise Pascal Magazine 2021
 https://www.blaisepascalmagazine.eu/

 Author: Danny Wind (https://dannywind.nl)
 License: Creative Commons CC-BY
===============================================================================}

uses
  Vcl.Forms,
  UnitFormMain in 'UnitFormMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
