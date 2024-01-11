program MessageAlerts;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMessageAlerts in 'uMessageAlerts.pas' {MessageAlertsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMessageAlertsForm, MessageAlertsForm);
  Application.Run;
end.
