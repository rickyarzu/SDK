program ActionsBindings;

uses
  Vcl.Forms,
  ufrmActionsBindings in 'ufrmActionsBindings.pas' {Form15},
  SMEConf in '..\..\Projects\Common\SMEConf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm15, Form15);
  Application.Run;
end.
