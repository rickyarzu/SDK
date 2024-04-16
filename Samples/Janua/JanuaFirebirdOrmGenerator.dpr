program JanuaFirebirdOrmGenerator;

uses
  Vcl.Forms,
  ufrmFirebirdGenerator in 'ufrmFirebirdGenerator.pas' {frmVCLFirebirdGenerator},
  UdmFirebirdOrmGenerator in 'UdmFirebirdOrmGenerator.pas' {dmFirebirdOrmGenerator: TDataModule},
  Janua.FirebirdGenerator.VCL.Application in 'Janua.FirebirdGenerator.VCL.Application.pas';

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
