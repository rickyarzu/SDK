program externalapi;

uses
  Forms,
  extapifrm in 'extapifrm.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
