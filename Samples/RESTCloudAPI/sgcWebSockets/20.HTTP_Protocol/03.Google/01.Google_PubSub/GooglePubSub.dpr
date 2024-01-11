program GooglePubSub;

uses
  Forms,
  FGooglePubSub in 'FGooglePubSub.pas' {FRMGooglePubSub};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMGooglePubSub, FRMGooglePubSub);
  Application.Run;
end.
