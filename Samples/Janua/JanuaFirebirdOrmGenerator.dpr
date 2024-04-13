program JanuaFirebirdOrmGenerator;

uses
  Vcl.Forms,
  ufrmFirebirdGenerator in 'ufrmFirebirdGenerator.pas' {frmVCLFirebirdGenerator},
  UdmFirebirdOrmGenerator in 'UdmFirebirdOrmGenerator.pas' {dmFirebirdOrmGenerator: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLFirebirdGenerator, frmVCLFirebirdGenerator);
  Application.CreateForm(TdmFirebirdOrmGenerator, dmFirebirdOrmGenerator);
  Application.Run;
end.
