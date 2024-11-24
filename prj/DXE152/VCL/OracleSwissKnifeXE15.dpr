program OracleSwissKnifeXE15;

uses
  Vcl.Forms,
  Janua.Oracle.MainForm in '..\..\..\src\VCL\Oracle\Janua.Oracle.MainForm.pas' {frmOracleSwissMilitaryMain},
  Janua.Oracle.ControlFileGenerator in '..\..\..\src\januaoracle\Janua.Oracle.ControlFileGenerator.pas' {dmOracleControlFile: TDataModule},
  Janua.Oracle.SchemaDatamodule in '..\..\..\src\januaoracle\Janua.Oracle.SchemaDatamodule.pas' {dmOracleSchema: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmOracleSwissMilitaryMain, frmOracleSwissMilitaryMain);
  Application.CreateForm(TdmOracleControlFile, dmOracleControlFile);
  Application.CreateForm(TdmOracleSchema, dmOracleSchema);
  Application.Run;
end.
