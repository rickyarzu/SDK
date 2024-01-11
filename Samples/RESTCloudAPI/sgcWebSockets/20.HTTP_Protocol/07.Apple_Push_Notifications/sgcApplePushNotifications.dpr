program sgcApplePushNotifications;

uses
  Forms,
  FApplePushNotifications in 'FApplePushNotifications.pas' {FRMApplePushNotifications};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMApplePushNotifications, FRMApplePushNotifications);
  Application.Run;
end.
