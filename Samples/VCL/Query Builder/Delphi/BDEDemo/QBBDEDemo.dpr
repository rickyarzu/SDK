program QBUniDacDemoDXE15;

uses
  Forms,
  MainForm in 'MainForm.pas' {fmMain},
  QBOptionsForm in 'QBOptionsForm.pas' {fmQBOptions},
  AboutForm in 'AboutForm.pas' {fmAbout};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
