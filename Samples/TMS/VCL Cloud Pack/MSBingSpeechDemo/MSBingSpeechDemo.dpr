program MSBingSpeechDemo;

uses
  Vcl.Forms,
  UMSBingSpeech in 'UMSBingSpeech.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
