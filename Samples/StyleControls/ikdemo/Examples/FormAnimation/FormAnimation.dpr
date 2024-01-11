program FormAnimation;

uses
  Forms,
  AniForm in 'AniForm.pas' {AnimatedForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAnimatedForm, AnimatedForm);
  Application.Run;
end.
