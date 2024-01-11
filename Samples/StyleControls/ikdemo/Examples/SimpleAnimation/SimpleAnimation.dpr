program SimpleAnimation;

uses
  Forms,
  AniFrm in 'AniFrm.pas' {AniForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAniForm, AniForm);
  Application.Run;
end.
