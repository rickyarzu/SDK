program ServerChat;

uses
  Forms,
  uServerChat in 'uServerChat.pas' {frmServerChat};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerChat, frmServerChat);
  Application.Run;
end.
