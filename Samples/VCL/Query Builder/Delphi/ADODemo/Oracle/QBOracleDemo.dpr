program QBOracleDemo;

uses
  Forms,
  MainForm in 'MainForm.pas' {fmMain},
  ConnectForm in 'ConnectForm.pas' {fmConnect},
  QBOptionsForm in 'QBOptionsForm.pas' {fmQBOptions},
  AboutForm in 'AboutForm.pas' {fmAbout};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
