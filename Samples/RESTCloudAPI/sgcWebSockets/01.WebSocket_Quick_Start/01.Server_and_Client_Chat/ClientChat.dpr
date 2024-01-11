program ClientChat;

uses
  Forms,
  uClientChat in 'uClientChat.pas' {frmClientChat};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmClientChat, frmClientChat);
  Application.Run;
end.
