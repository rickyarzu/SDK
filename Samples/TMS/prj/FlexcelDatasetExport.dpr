program FlexcelDatasetExport;

uses
  Vcl.Forms,
  uExcelExport in '..\src\uExcelExport.pas' {frmExcelExport},
  Janua.TMS.ExcelExport in '..\..\..\src\TMS\Janua.TMS.ExcelExport.pas',
  udmPostgresTest in '..\src\udmPostgresTest.pas' {dmPostgresTest: TDataModule},
  Janua.Firebird.dmStorage in '..\..\..\src\januaunidac\datamodules\Janua.Firebird.dmStorage.pas' {dmJanuaFBStorage: TDataModule},
  udmTestFireBirdStorage in '..\..\UniDAC\udmTestFireBirdStorage.pas' {dmTestFireBirdStorage: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExcelExport, frmExcelExport);
  Application.CreateForm(TdmPostgresTest, dmPostgresTest);
  Application.CreateForm(TdmJanuaFBStorage, dmJanuaFBStorage);
  Application.CreateForm(TdmTestFireBirdStorage, dmTestFireBirdStorage);
  Application.Run;
end.
