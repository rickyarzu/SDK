program sgcOAuth2_Social;

uses
  Forms,
  FOAuth2_Social in 'FOAuth2_Social.pas' {FRMOAuth2_Social},
  FOAuth2_Social_Profile in 'FOAuth2_Social_Profile.pas' {FRMOAuth2_Social_Profile};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMOAuth2_Social, FRMOAuth2_Social);
  Application.Run;
end.
