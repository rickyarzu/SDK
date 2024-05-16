program JanuaFirebirdOrmGenerator;

uses
  Vcl.Forms,
  ufrmFirebirdGenerator in 'ufrmFirebirdGenerator.pas' {frmVCLFirebirdGenerator},
  UdmFirebirdOrmGenerator in 'UdmFirebirdOrmGenerator.pas' {dmFirebirdOrmGenerator: TDataModule},
  Janua.FirebirdGenerator.VCL.Application in 'Janua.FirebirdGenerator.VCL.Application.pas',
  JOrm.Phoenix.Statini.Custom.Impl in '..\..\src\januacore\orm\JOrm.Phoenix.Statini.Custom.Impl.pas',
  JOrm.Phoenix.Statini.Custom.Intf in '..\..\src\januacore\orm\JOrm.Phoenix.Statini.Custom.Intf.pas',
  JOrm.Phoenix.Statini.Impl in '..\..\src\januacore\orm\JOrm.Phoenix.Statini.Impl.pas',
  JOrm.Phoenix.Statini.Intf in '..\..\src\januacore\orm\JOrm.Phoenix.Statini.Intf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
{$IFDEF DEBUG}
  TJanuaFirebirdVCLApplication.ApplicationSetup('test.firebirdgenerator.com');
{$ELSE}
  TJanuaFirebirdVCLApplication.ApplicationSetup('desktop.firebirdgenerator.com');
{$ENDIF}

  Application.CreateForm(TfrmVCLFirebirdGenerator, frmVCLFirebirdGenerator);
  Application.CreateForm(TdmFirebirdOrmGenerator, dmFirebirdOrmGenerator);
  Application.Run;
end.
