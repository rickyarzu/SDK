program JanuaTestRapportino;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestRapportino in 'ufrmTestRapportino.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
